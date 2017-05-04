#
# Be sure to run `pod lib lint SMobiLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMobiLog'
  s.version          = '0.1.0'
  s.summary          = 'A delightful iOS loging framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'SMobiLogger is logger library, which provide logs from iOS device and also provide email logs facility.'

  s.homepage         = 'https://github.com/zsheikh-systango/SMobiLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoeb S' => 'zoeb@systango.com' }
  s.source           = { :git => 'https://github.com/zsheikh-systango/SMobiLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'SMobiLog/Classes/**/*'
  s.resources = 'SMobiLog/Resources/*'
  #s.vendored_frameworks = 'Realm.framework'
  # s.resource_bundles = {
  #   'SMobiLog' => ['SMobiLog/Assets/*.png']
  # }

  s.public_header_files = 'SMobiLog/Classes/**/*.h'
  #s.frameworks = 'UIKit', 'Realm'
  s.dependency 'Realm'
end
