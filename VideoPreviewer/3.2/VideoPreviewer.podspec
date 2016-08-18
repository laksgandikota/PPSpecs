#
#  Be sure to run `pod spec lint DJI-SDK-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "VideoPreviewer"
  s.version      = "3.2"
  s.summary      = "VideoPreviewer for DJI SDK"
  s.homepage     = "https://github.com/laksgandikota/VideoPreviewer.git"
  s.license      = { :type => 'CUSTOM', :file => 'LICENSE.txt'}
  s.author       = { "DJI SDK" => "sdk@dji.com" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/laksgandikota/VideoPreviewer.git", :tag => "v3.2" }

  s.ios.vendored_frameworks = 'Framework/*.framework'

end
