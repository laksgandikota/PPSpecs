#
# Be sure to run `pod lib lint VideoPreviewer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VideoPreviewer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of VideoPreviewer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://www.laksg.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Laks Gandikota' => 'laks.gandikota@gmail.com' }
  s.source           = { :git => 'https://github.com/dji-sdk/Mobile-SDK-iOS.git', :tag => 'master' }
  # s.social_media_url = 'https://twitter.com/laksgandikota'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sample\ Code/VideoPreviewer/VideoPreviewer/*.{h,m}'
  s.ios.vendored_library = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include"', 'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib"' }

  # s.resource_bundles = {
  #   'VideoPreviewer' => ['VideoPreviewer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'VideoToolbox', 'CoreMedia'
  s.ios.library = 'z'

  s.subspec 'plat' do |ss|
    ss.source_files =
      'viewersdk/native/libs/plat/*.{h,c,cxx}',
    ss.header_mappings_dir = 'viewersdk/native/libs'
    ss.xcconfig = { 'ALWAYS_SEARCH_USER_PATHS' => 'NO' }
  end

end
