Pod::Spec.new do |spec|
  spec.name         = "LionECS"
  spec.version      = "0.0.1"
  spec.summary      = "Multiplatform Entity Component System implementation in Swift"
  spec.homepage     = "https://github.com/LionECS/LionECS"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "Tomasz Lewandowski" => "tomasz.t.lewandowski@gmail.com" }
  spec.source       = { :git => "https://github.com/lewandowskit93/LionECS.git", :tag => "#{spec.version}" }
  spec.source_files  = "ECS"
end
