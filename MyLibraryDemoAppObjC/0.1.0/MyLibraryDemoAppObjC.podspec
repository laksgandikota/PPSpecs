#
# Be sure to run `pod lib lint MyLibraryDemoAppObjC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MyLibraryDemoAppObjC"
  s.version          = "0.1.0"
  s.summary          = "Library project with demo application"

  s.description      = <<-DESC
                        A brief description of the library goes here.
                       DESC

  s.homepage         = "https://github.com/laksgandikota/MyLibraryDemoAppObjC"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Laks Gandikota" => "laks.gandikota@gmail.com" }
  s.source           = { :git => "https://github.com/laksgandikota/MyLibraryDemoAppObjC.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/laksgandikota'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MyLibraryDemoAppObjC' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
