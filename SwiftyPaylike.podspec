

Pod::Spec.new do |s|



  s.name         = "SwiftyPaylike"
  s.version      = "0.0.2"
  s.summary      = "Swift wrapper for the Paylike Gateway API"

  s.description  = <<-DESC
  Simple Swift wrapper for the Paylike Gateway API
                   DESC

  s.homepage     = "https://github.com/SimonRiis/SwiftyPaylike"


  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Simon Riis Olesen" => "simonriis@realized.dk" }
  s.social_media_url   = "https://twitter.com/Simon_Riis"

  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/SimonRiis/SwiftyPaylike.git", :tag => "#{s.version}" }

  s.dependency "URLSessionWrapper"

  # s.source_files  = "SwiftyPaylike/SwiftyPaylike/*.swift"
  # s.source_files  = "SwiftyPaylike/SwiftyPaylike/*.swift"
  s.source_files  = 'SwiftyPaylike/**/**/Handlers/*.{h,m,swift}'
  s.source_files  = 'SwiftyPaylike/**/**/Models/*.{h,m,swift}'
  s.source_files  = 'SwiftyPaylike/**/**/Protocols/*.{h,m,swift}'
  s.source_files  = 'SwiftyPaylike/**/**/**/*.{swift}'
  # s.source_files  = 'SwiftyPaylike/**/**/**/*.{h,m,swift}'
  s.swift_version = '4.1'

end
