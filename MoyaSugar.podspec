Pod::Spec.new do |s|
  s.name             = 'MoyaSugar'
  s.version          = '0.2.0'
  s.summary          = '🍯 Syntactic sugar for Moya'
  s.homepage         = 'https://github.com/devxoul/MoyaSugar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/devxoul/MoyaSugar.git',
                         :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0'
  }
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Sources/*.swift'
    ss.frameworks   = 'Foundation'
    ss.dependency 'Moya', '>= 8.0.0-beta.4'
  end

  s.subspec 'RxSwift' do |ss|
    ss.source_files = 'Sources/RxSwift/*.swift'
    ss.dependency 'MoyaSugar/Core'
    ss.dependency 'Moya/RxSwift', '>= 8.0.0-beta.4'
    ss.dependency 'RxSwift', '>= 3.0.0'
  end
end
