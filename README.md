A customizable, multiplatform **ECS (Entity Component System)** engine core implementation written in Swift. It has no shipping dependencies and supports following platforms: **iOS, macOS, tvOS, watchOS**.

### Requirements

## Development
Project uses following tools for development
1. XCodeGen
2. Cocoapods
3. SwiftLint
4. Sourcery

### Installation

To get started with the **LionECS** you first have to decide how you will integrate it with your project. LionECS supports following tools:

## Cocoapods

To install LionECS using Cocoapods go through following steps:

1. Add the following entry in your **Podfile**:
```
pod 'LionECS'
```
2. Then run `pod install`.


## Carthage

To install LionECS using Carthage go through following steps:

1. Add the following entry to your **Carttile**

```
github "LionSoftware/LionECS"
```

2. Then run ```carthage update```

## Swift Package Manager

To install LionECS using **Swift Package Manager** go through following steps:

1. Add following package dependency in you **Package.swift** ``` .package(url: "https://github.com/LionSoftware/LionECS/LionECS.git", from: "0.1.0") ```
2. Add following tatget dependency in your **Package.swift** ``` dependencies: ["LionECS"]) ```

### Overview

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

Components are simple objects that holds data for your entities. They describe what your entity really is. Each entity can have **one** component of given type. To create a component type you have to create a new structure that implements **PComponent** protocol which requires you to return component identifier. It's done for you however by simply returning type name as an default identifier.
For instance:

```swift
struct HealthComponent: PComponent {
    var health: Float
}

```

### Systems

Systems operate on one or more components depending on your query. To create a system you can either implement ```PSystem``` protocol or inherit from ```ComponentSystem``` (which grants you access to world) and implement ```func update()```.

### World

World represents a single simulation. It holds and allows access to: entity manager, entity requester, systems and component managers. When updated it updates all of your systems along with it. World is generic over ComponentManagers so you can easily swap the core you are using.

### ComponentManagers

Component managers define how you access managers of given component. Everything (i.e. *World*, *ComponentSystem* etc.) is generic over ComponentManagers so core component management logic is easily swappable. Depending on choosed one there are two approaches to implement component managers.

## Naive

Naive approach uses single `ComponentManager` per component type. To start with it Inherit from ```ComponentManager``` and create your managers as follows:

```swift
class GameComponentsManagers: ComponentManagers {
    private(set) var healthComponentManager: ComponentManager<HealthComponent>!
    private(set) var damageComponentsManager: ComponentManager<DamageComponent>!
    override init() {
        super.init()
        healthComponentManager = getOrCreateManagerOfType(HealthComponent.self)
        damageComponentsManager = getOrCreateManagerOfType(DamageComponent.self)
    }
}
```

## Prototype

Prototypes approach uses just a single manager to access all of your components. You can either inherit or use `PrototypeComponentManagers`.Prototyp

```swift
class PrototypeGameComponentsManagers: PrototypeComponentManagers {
    override init() {
        super.init()
        let _: PrototypeComponentManager = getOrCreateManagerOfType(HealthComponent.self)
    }
}
```

### Component Manager

Provides access to your component data. Depending on approach selected it is either `ComponentManager<T>` or `PrototypeComponentManager`

## Core

LionECS allows you to swap core of how it manages components easily. There are 2 cores shipped with LionECS **Naive** and **Prototype** based.

### Naive

Naive core supports *classess, stucts, enums* as component types. It uses single manager per component type and allows for performing naive queries.

### Prototype

Prototype core supports *structs* and *enums* as component types. It's much more efficient than naive approach and grants you new possibilites of quering and creating entities. ***Prototype*** describes a set of components that entity instances all have.

### Querying

## Query

Querying can be done through ***EntityRequester***. First you have to define query. There are some of them predefined for you so you can use one of these described in sections *Naive* and *Prototype*. Then you use entityRequester's `queryEntities<Query: PEntityQuery>(query: Query)` method.

# Naive

Naive queries works for any type of component managers. They are less efficient that using specialized queries so it's suitable for just simple tasks.
NaiveQueries are all named in following pattern `Requires{N}ComponentNaiveQuery` where '{N}' is number of components required by the query.

# Prototype

Takes advantage of memory structure that components of a given entity are all stored together by PrototypeManager.

## Query Result

All queries have to define it's result type which conforms to `PEntityQueryResult` protocol. Predefined queries all use `EntityQueryResult` which allows you to access entities & components it stores.

### Example

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

Then define a system that operates on these components:
```swift
class PrototypeDamageSystem: ComponentSystem<PrototypeComponentManagers> {
    override func update() {
        let query = Requires2ComponentNaiveQuery<ComponentManagers, HealthComponent, DamageComponent>(exclusionFilters: [Excludes<DeadComponent>()])
        guard let result = try? entityRequester.queryEntities(query: query) else { return }
        for result in result.entityWithComponents() {
            var (entity, (health, damage)) = result
            health.health -= damage.damage
            try! componentManagers.prototypeManager!.addComponent(health, toEntity: entity)
            componentsManagers.prototypeManager.removeComponent(DamageComponent.self)
            if health.health <= 0 {
                try! componentManagers.prototypeManager!.addComponent(DeadComponent(), toEntity: entity)
            }
        }
    }
}
```

Then glue it all together:
```swift
class PrototypeGame {
    var world: World<PrototypeComponentManagers>
    var damageSystem: PrototypeDamageSystem
    
    init() {
        let managers: PrototypeComponentManagers = PrototypeComponentManagers()
        let _: PrototypeComponentManager = managers.getOrCreateManagerOfType(HealthComponent.self)
        world = World<PrototypeComponentManagers>(componentManagers: managers)
        damageSystem = world.getOrCreateSystem()
        let entity = world.entityManager.createEntity()
        try! world.componentManagers.prototypeManager?.addComponent(HealthComponent(health: 123), toEntity: entity)
        try! world.componentManagers.prototypeManager?.addComponent(DamageComponent(damage: 23), toEntity: entity)
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

### Contribution

Project is created by **Tomasz Lewandowski**.

If you created some new feature or fixed a bug you can create a pull request. Feel free to submit your feature requests if you have any.

### License

LionECS is released under an MIT license. See [License.md](LICENSE.md) for more information.