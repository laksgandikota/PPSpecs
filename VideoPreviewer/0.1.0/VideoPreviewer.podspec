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
  s.summary          = 'VideoPreviewer library for DJI\'s Framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/laksgandikota/VideoPreviewer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Laks Gandikota' => 'laks.gandikota@gmail.com' }
  s.source           = { :git => 'https://github.com/laksgandikota/VideoPreviewer.git', :tag => s.version, :submodules => true }
  # s.social_media_url = 'https://twitter.com/laksgandikota'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VideoPreviewer/Classes/**/*'

#'fmpeg-dji-libs/lib/libavformat.a'
# 'fmpeg-dji-libs/include/**/*.h',

  s.xcconfig = {
        'USER_HEADER_SEARCH_PATHS' => '"ffmpeg-dji-libs/include"'

  }
#        'LIBRARY_SEARCH_PATHS' => '"$(inherited) /Users/laks/Projects/vp/VideoPreviewer/fmpeg-dji-libs/lib"'

#  s.default_subspec = 'precompiled'


  s.subspec 'precompiled' do |ss|
       ss.source_files        = 'ffmpeg-dji-libs/include/**/*.h'
       ss.public_header_files = 'ffmpeg-dji-libs/include/'
       ss.header_mappings_dir = 'ffmpeg-dji-libs/include'
       ss.vendored_libraries  = 'ffmpeg-dji-libs/lib/*.a'
      ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end

end
