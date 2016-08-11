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

  s.source_files = 'Sample\ Code/VideoPreviewer/VideoPreviewer/*.{h,m}', 'Sample\ Code/VideoPreviewer/VideoPreviewer/Lb2AUDHack/*.{h,m}'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(inherited) ${PODS_ROOT}/Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include/libavformat"',
  'LIBRARY_SEARCH_PATHS' => '"$(inherited) ${PODS_ROOT}/Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib"',
  'FRAMEWORK_SEARCH_PATHS' => '"$(inherited) ${PODS_ROOT}/Sample\ Code/VideoPreviewer/"'
 }


  #s.ios.vendored_library = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib/libavcodec.a','Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib/libavformat.a','Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib/libavutil.a'
  #s.ios.header_mappings_dir = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include/**/*.h'

  # s.resource_bundles = {
  #   'VideoPreviewer' => ['VideoPreviewer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'

  s.default_subspec = 'ffmpeg'

  s.frameworks = 'VideoToolbox', 'CoreMedia'


  s.subspec 'ffmpeg' do |ss|
     ss.source_files = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include/**/*.h'
  #   ss.public_header_files = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include/**/*.h'
  #   ss.header_mappings_dir = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include'
  #
     ss.vendored_libraries  = 'Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/lib/*.a'
     ss.libraries = 'avformat','avcodec','avutil','z'
  #   #$(PROJECT_DIR)/VideoPreviewer/Sample\ Code/VideoPreviewer/VideoPreviewer/ffmpeg/include
  #
  #   #ss.xcconfig = { 'ALWAYS_SEARCH_USER_PATHS' => 'YES' }
  end

end
