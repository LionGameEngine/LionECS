Pod::Spec.new do |spec|
  spec.name         = "LionECS"
  spec.version      = "0.0.3"
  spec.summary      = "Multiplatform Entity Component System implementation in Swift"
  spec.homepage     = "https://github.com/LionECS/LionECS"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author       = { "Tomasz Lewandowski" => "tomasz.t.lewandowski@gmail.com" }
  spec.source       = { :git => "https://github.com/lewandowskit93/LionECS.git", :tag => "#{spec.version}" }
  spec.source_files  = "ECS/**/*.swift"
  spec.swift_versions = "5.0"
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '13.0'
  spec.watchos.deployment_target = '6.1'
end
