Pod::Spec.new do |s|
  s.name         = 'ms-sdk-ios'
  s.version      = '1.0.8'
  s.summary      = 'ms-sdk-ios SDK for native iOS Apps'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/ms-sdk-ios.git',
    :tag => "1.0.8"
  }
  s.requires_arc = true
  s.source_files = 'ms-sdk-ios/Classes/*.{h,m}'
  s.ios.dependency 	'AFNetworking', '~> 1.0'
  s.ios.dependency  'STLOAuth', :git => 'https://github.com/inyenia/stl-oauth-client.git'
  s.ios.framework = 'SystemConfiguration', 'MobileCoreServices'
end
