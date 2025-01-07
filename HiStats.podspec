Pod::Spec.new do |s|
  s.name             = 'HiStats'
  s.version          = '1.0.0'
  s.summary          = 'Analytics abstraction layer'
  s.description      = <<-DESC
						Analytics abstraction layer for Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiStats'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiStats.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '16.0'
  s.frameworks = 'Foundation'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HiStats/Core/**/*'
  end
  
  s.subspec 'Console' do |ss|
    ss.source_files = 'HiStats/Console/**/*'
  	ss.dependency 'HiStats/Core'
  	ss.dependency 'HiLog/Core', '~> 1.0'
  end
  
end
