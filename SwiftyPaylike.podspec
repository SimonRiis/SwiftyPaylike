

Pod::Spec.new do |s|



  s.name         = "SwiftyPaylike"
  s.version      = "0.0.1"
  s.summary      = "Simple Swift wrapper for the Paylike Gateway API"

  s.description  = <<-DESC
  Simple Swift wrapper for the Paylike Gateway API
                   DESC

  s.homepage     = "https://github.com/SimonRiis/SwiftyPaylike"


  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Simon Riis Olesen" => "simonriis@realized.dk" }
  s.social_media_url   = "https://twitter.com/Simon_Riis"

  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/SimonRiis/SwiftyPaylike.git", :tag => "#{s.version}" }


  s.source_files  = "SwiftyPaylike/SwiftyPaylike/*.swift"


end
