An **ECS (Entity Component System)** engine core implementation written in Swift. It has no shipping dependencies and supports following platforms: **iOS, macOS, tvOS, watchOS**.

## Requirements

### Development
Project uses following tools for development
1. XCodeGen
2. Cocoapods
3. SwiftLint
4. Sourcery

## Installation

To get started with the **LionECS** you first have to decide how you will integrate it with your project. LionECS supports following tools:

### Cocoapods

To install LionECS using Cocoapods go through following steps:

1. Add the following entry in your **Podfile**:
```
pod 'LionECS'
```
2. Then run `pod install`.


### Carthage

To install LionECS using Carthage go through following steps:

1. Add the following entry to your **Cartfile**

```
github "LionGameEngine/LionECS"
```

2. Then run ```carthage update```

### Swift Package Manager

To install LionECS using **Swift Package Manager** go through following steps:

1. Add following package dependency in you **Package.swift** ``` .package(url: "https://github.com/LionGameEngine/LionECS.git", from: "0.0.1") ```
2. Add following tatget dependency in your **Package.swift** ``` dependencies: ["LionECS"]) ```

## Overview

Here is a quick overview of functionalities and concepts used in LionECS.

### Entities

**Entity** represents an object instance in your ECS World.
It is defined as a pair of **id** and **version** as follows

```swift
public struct Entity: Identifiable, Equatable, Hashable {
    public let id: UInt64
    public let version: UInt64
}
```

### Components

Components are simple structures that holds data for your entities. They describe what your entity really is. Each entity can have **one** component of given type. To create a component type you have to create a new structure that implements **PComponent** protocol which requires you to return component identifier. It's done for you however by simply returning type identifier as an default identifier.
For instance:

```swift
struct HealthComponent: PComponent {
    var health: Float
}

```

### Systems

Systems operate on one or more components depending on your query. To create a system you can either implement ```PSystem``` protocol or inherit from ```ComponentSystem``` (which grants you access to the world) and implement ```func update()```.

### World

World represents a single simulation. It holds and allows access to: entity manager, entity requester, systems and component manager. When updated it updates all of your systems along with it.

### Component Manager

Provides access to your components data. Everything (i.e. *World*, *ComponentSystem* etc.) is generic over ComponentManager so core component management logic is easily swappable.

Default core supports *structs* and *enums* as component types.

### Prototype

Describes a set of components that entity instances have.

## Querying

### Query

Querying can be done through ***EntityRequester***. First you have to define query what inherits from *PEntityQuery*. There is **EntityQuery** defined for you already.. Then you use entityRequester's `queryEntities<Query: PEntityQuery>(query: Query)` method.

### Query Result

All queries have to define it's result. The one defined for **EntityQuery** is **EntityQueryResult**. It defines a methods to iterate over entities what satisfy query.

## Example

Following is the example of damage system. First we have to implement required components

```swift
struct DamageComponent: PComponent {
    var damage: Float
}
```

```swift
struct HealthComponent: PComponent {
    var health: Float
}
```

```swift
struct DeadComponent: PComponent {}
```

Then define our systems that operates on these components:
```swift
class DamageSystem: ComponentSystem<ComponentManager> {
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<DamageComponent>(), Requires<HealthComponent>(), Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, health: inout HealthComponent, damage: DamageComponent) in
            defer {
                try? componentManager.removeComponent(DamageComponent.self, fromEntity: entity)
            }
            health.health -= damage.damage
        }
    }
}
```
```swift
class DeathSystem: ComponentSystem<ComponentManager> {
    override func update() {
        let query = EntityQuery<ComponentManager>(filters: [Requires<HealthComponent>(), Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        result.forEach { (entity: Entity, health: HealthComponent) in
            if health.health <= 0 {
                try? componentManager.addComponent(DeadComponent(), toEntity: entity)
            }
        }
    }
}
```
Then glue it all together:
```swift
class Game {
    let world: World<ComponentManager>
    let damageSystem: DamageSystem
    let deathSystem: DeathSystem
    let player: Entity
    
    init() {
        let playerPrototype = PrototypeBuilder()
            .add(HealthComponent.self)
            .build()
        let manager: ComponentManager = ComponentManager()
        world = World<ComponentManager>(componentManager: manager)
        damageSystem = world.getOrCreateSystem()
        deathSystem = world.getOrCreateSystem()
        player = world.entityManager.createEntity(withPrototype: playerPrototype)
        try! world.componentManager.updateComponent(HealthComponent(health: 123), ofEntity: player)
        try! world.componentManager.addComponent(DamageComponent(damage: 23), toEntity: player)
        gameloop {
            world.update()
        }
    }

    
    func gameloop(update: () -> Void) {
        while true {
            update()
        }
    }
}
```

For more detailed example please see the source code.

## Contribution

Project is created by **Tomasz Lewandowski**.

If you created some new feature or fixed a bug you can create a pull request. Feel free to submit your feature requests if you have any.

## License

LionECS is released under an MIT license. See [License.md](LICENSE.md) for more information.