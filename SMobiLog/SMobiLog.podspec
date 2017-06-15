Pod::Spec.new do |s|
  s.name             = 'SMobiLog'
  s.version          = '2.0.0'
  s.summary          = 'A delightful iOS loging framework.'
  s.description      = 'SMobiLogger is logger library, which provide logs from iOS device and also provide email logs facility.'
  s.homepage         = 'https://github.com/zsheikh-systango/SMobiLog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoeb S' => 'zoeb@systango.com' }
  s.source           = { :git => 'https://github.com/zsheikh-systango/SMobiLog.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'SMobiLog/SMobiLog/Classes/**/*'
  s.resources = 'SMobiLog/SMobiLog/Resources/*'
  s.public_header_files = 'SMobiLog/SMobiLog/Classes/**/*.h'
  s.dependency 'Realm'
  s.dependency 'KSCrash'
end
