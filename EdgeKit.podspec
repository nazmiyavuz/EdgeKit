Pod::Spec.new do |spec|
  spec.name         = "EdgeKit"
  spec.version      = "1.0.1"
  spec.summary      = "EdgeKit is a library to make Auto Layout easily on iOS."
  spec.homepage     = "https://github.com/nazmiyavuz/EdgeKit"
  spec.license      = "MIT"
  spec.author             = { "Nazmi Yavuz" => "nazmiyavuz@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/nazmiyavuz/"
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/nazmiyavuz/EdgeKit.git", :tag => spec.version.to_s }
  spec.source_files  = "EdgeKit", "Sources/EdgeKit/EdgeKit/**/*.{swift}"
  spec.swift_versions = ['6.0']
end
