Pod::Spec.new do |s|
  s.platform = { :ios => "9.0", :osx => "10.10" }
  s.name         = 'ms-sdk-ios'
  s.version      = '3.7.74'
  s.summary      = 'ms-sdk-ios SDK for native iOS Apps'
  s.homepage     = 'https://github.com/viavansi/ms-sdk-ios.git'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com',
    'Ernesto Lage' => 'elage@viafirma.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/ms-sdk-ios.git',
    :tag => '3.7.74'
  }
  s.requires_arc = true
  s.source_files = 'ms-sdk-ios/Classes/**/*.{h,m}'
  s.ios.deployment_target  = '9.0'
  s.osx.deployment_target  = '10.10'
  s.dependency         'AFNetworking', '~> 2.7.1'
  s.framework = 'SystemConfiguration'
  s.ios.framework = 'MobileCoreServices'
end
