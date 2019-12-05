Pod::Spec.new do |s|
  s.name             = 'EasyResponder'
  s.version          = '0.0.1'
  s.summary          = 'no more click delegate'
  s.description      = <<-DESC
  transfer user behavior throw UIRespond chain.
                       DESC
  s.homepage         = 'https://github.com/xuyunshi/EasyResponder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '许允是' => '405029644@qq.com' }
  s.swift_version = '5.0'
  s.source           = { :git => 'https://github.com/xuyunshi/EasyResponder.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'EasyResponder/Classes/**/*'
end
