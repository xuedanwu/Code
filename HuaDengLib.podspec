#
# Be sure to run `pod lib lint HuaDengLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HuaDengLib'
  s.version          = '1.0.1'
  s.summary          = '花灯第三方依赖'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xuedanwu/HuaDengLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuedanwu' => '15618025967@163.com' }
#  s.source           = { :git => 'https://github.com/xuedanwu/HuaDengLib.git', :tag => s.version.to_s }
  s.source           = { :git => 'https://github.com/xuedanwu/Code.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HuaDengLib/Classes/**/*'
  
  s.default_subspec = 'Base'
  s.static_framework = true
  
  s.subspec 'AppStore' do |ss|
    ss.dependency 'HuaDengLib/Base'

  end
#
  s.subspec 'Enterprise' do |ss|
    ss.dependency 'HuaDengLib/Base'
    ss.resources = ['HuaDengLib/Resource/Enterprise/Pay/*.{png}']

  end
#
  s.subspec 'Base' do |ss|
    ss.source_files = 'HuaDengLib/Classes/**/*'
    ss.frameworks = 'UIKit', 'Foundation', 'Security', 'CoreGraphics', 'CoreTelephony', 'SystemConfiguration', 'VideoToolbox', 'GLKit'
    ss.libraries = 'icucore', 'c++', 'sqlite3', 'z', 'iconv'
    
    
#    ss.vendored_libraries = [
#      'SLVenderModule/lib/XGPush/libXG-SDK.a'
#    ]

  end
  
  # s.resource_bundles = {
  #   'HuaDengLib' => ['HuaDengLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
