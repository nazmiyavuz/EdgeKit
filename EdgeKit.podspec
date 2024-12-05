#
# Be sure to run `pod lib lint EdgeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EdgeKit'
  s.version          = '1.0.2'
  s.summary          = 'EdgeKit is a library to make Auto Layout easily on iOS.'
  s.description      = <<-DESC
EdgeKit is a library to make Auto Layout easily on iOS.
                       DESC

  s.homepage         = 'https://github.com/nazmiyavuz/EdgeKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nazmiyavuz' => 'nazmiyavuz@gmail.com' }
  s.source           = { :git => 'https://github.com/nazmiyavuz/EdgeKit', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.source_files     = 'EdgeKit/Classes/**/*'
end
