#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tflite_flutter_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'tflite_flutter'
  s.version          = '0.10.0'
  s.summary          = 'TensorFlow Lite Flutter plugin provides an easy, flexible, and fast Dart API to integrate TFLite models in flutter apps across mobile and desktop platforms.'
  s.description      = <<-DESC
  TensorFlow Lite Flutter plugin provides an easy, flexible, and fast Dart API to integrate TFLite models in flutter apps across mobile and desktop platforms.
                       DESC
  s.homepage         = 'https://github.com/am15h/tflite_flutter_plugin'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.ios.vendored_frameworks = 'TensorFlowLiteC.framework', 'TensorFlowLiteCMetal.framework'
  s.ios.deployment_target = '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.library = 'c++'
  # Fail early during build instead of not finding the library during runtime
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework TensorFlowLiteC -all_load -framework TensorFlowLiteCMetal -all_load' }
end
