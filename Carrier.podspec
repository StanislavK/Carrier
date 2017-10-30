#
# Be sure to run `pod lib lint Carrier.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Carrier'
  s.version          = '0.1.0'
  s.summary          = 'Simple Swift wrapper on CoreTelephony framework.'
  s.description      = <<-DESC

  This is a simple Swift wrapper on CoreTelephony framework. Please see example for a usage.

                        DESC

  s.homepage         = 'https://github.com/StanislavK/Carrier'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'StanislavK' => 'stanislav.kasprik@gmail.com' }
  s.source           = { :git => 'https://github.com/StanislavK/Carrier.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform         = :ios, '10.3'
  s.ios.deployment_target = '10.3'

  s.source_files = 'Carrier/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Carrier' => ['Carrier/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
