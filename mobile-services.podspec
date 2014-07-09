Pod::Spec.new do |s|
  s.name         = 'mobile-services'
  s.version      = '1.0.5'
  s.summary      = 'mobile-services SDK for native iOS Apps'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/ms-sdk-ios.git',
    :tag => "1.0.5"
  }
  s.requires_arc = true
  s.source_files = '**/*.{h,m}'
  s.ios.dependency 	'AFNetworking', '~> 1.0'
  s.ios.dependency  'STLOAuth', '~> 1.0'
  s.ios.framework = 'SystemConfiguration', 'MobileCoreServices'
end
