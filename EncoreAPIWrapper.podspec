Pod::Spec.new do |s|
  s.name             = "EncoreAPIWrapper"
  s.version          = "0.1.0"
  s.summary          = "A short description of EncoreAPIWrapper."
  s.description      = "Awesome Encore API wrapper"
  s.homepage         = "http://encore.io"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Carlos Arenas" => "clsarenas@gmail.com" }
  s.source           = { :git => "https://github.com/NullSleep/EncoreAPITest.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EXAMPLE'

  # s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'EncoreAPIWrapper/*.{h,m}'
  #s.resources = 'Assets/*.png'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
