#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'mongodb_mobile'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin for MongoDB Mobile'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/malengatiger/flutter-mongdb-mobile'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'amond' => 'amond@amond.dev' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'StitchSDK', '= 6.0.1'
  # optional
  # s.dependency 'StitchSDK/StitchAWSService', '= 6.0.1'
  # s.dependency 'StitchSDK/StitchFCMService', '= 6.0.1'
  # s.dependency 'StitchSDK/StitchHTTPService', '= 6.0.1'
  # s.dependency 'StitchSDK/StitchTwilioService', '= 6.0.1'

  s.static_framework = true

  s.ios.deployment_target = '11.0'
end

