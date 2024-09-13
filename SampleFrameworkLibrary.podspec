Pod::Spec.new do |spec|

  spec.name                     = "SampleFrameworkLibrary"
  spec.version                  = "1.0.2"
  spec.summary                  = "A lightweight and efficient framework providing seamless utilities and components for iOS applications."
  
  spec.description = <<-DESC
  Test Framework Library is a comprehensive set of utilities and components designed to streamline iOS application development. This framework offers a variety of tools including network handling, data parsing, and UI components, making it easier to integrate essential features into your projects.

  Key features:
  - Seamless networking integration with built-in error handling
  - Customizable UI components
  - Lightweight design to optimize performance
  - Full support for Swift 5 and the latest iOS versions
  - Easy-to-use APIs that enhance developer productivity

  Whether you're building a small-scale project or a complex application, the Test Framework Library helps reduce development time while improving code maintainability and scalability.

  DESC

  spec.homepage                 = "https://github.com/dhruv230298/SampleDemoApp"
  spec.license                  = { :type => "MIT", :file => "LICENSE" }

  spec.author                   = { "Dhruv Lakdawala" => "dhruv.l.easternts@gmail.com" }
  
  spec.source                   = { :git => "https://github.com/dhruv230298/SampleDemoApp.git", :tag => spec.version.to_s }
  spec.ios.deployment_target    = "12.0"

  spec.source_files             = "SDK/SampleFrameworkLibrary.xcframework/ios-arm64/SampleFrameworkLibrary.framework/Headers/*.{h}"
  spec.requires_arc             = true
  spec.vendored_frameworks      = "SDK/SampleFrameworkLibrary.xcframework"
  spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.frameworks               = "UIKit"
end