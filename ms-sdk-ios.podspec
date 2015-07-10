Pod::Spec.new do |s|
  s.platform = :ios, '7.0'
  s.name         = 'ms-sdk-ios'
  s.version      = '2.5.6'
  s.summary      = 'ms-sdk-ios SDK for native iOS Apps'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/ms-sdk-ios.git',
    :tag => '2.5.6'
  }
  s.requires_arc = true
  s.source_files = 'ms-sdk-ios/Classes/**/*.{h,m}'
  s.ios.dependency 	'AFNetworking', '~> 2.0'
  s.ios.framework = 'SystemConfiguration', 'MobileCoreServices'
end