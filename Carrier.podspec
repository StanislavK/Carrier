Pod::Spec.new do |s|
  s.name             = 'Carrier'
  s.version          = '1.0.0'
  s.summary          = 'Simple Swift wrapper on CoreTelephony framework.'
  s.description      = <<-DESC
  This is a simple Swift wrapper on CoreTelephony framework. Please see example for a usage.
                        DESC
  s.homepage         = 'https://github.com/StanislavK/Carrier'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'StanislavK' => 'stanislav.kasprik@gmail.com' }
  s.source           = { :git => 'https://github.com/StanislavK/Carrier.git', :tag => s.version.to_s }
  s.platform         = :ios, '10.3'
  s.ios.deployment_target = '10.3'
  s.source_files = 'Carrier/Classes/**/*'
end
