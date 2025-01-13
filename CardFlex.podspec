Pod::Spec.new do |spec|
  spec.name         = "CardFlex"
  spec.version      = "1.0.1"
 spec.summary      = "A lightweight library for implementing flexible card layouts in iOS apps."

  spec.description  = <<-DESC
                     CardFlexKit is a library designed to help developers integrate flexible card layouts into their iOS applications. 
                     It provides pre-built components and utilities for card-based designs, making UI development faster and easier.
                   DESC

  spec.homepage     = "https://github.com/jaydip-7span/CardFlex"
  spec.license      = "MIT"

  spec.author             = { "jaydip-7span" => "jaydip@7span.com" }

 
  spec.source       = { :git => "https://github.com/jaydip-7span/CardFlex.git", :tag => "#{spec.version}" }
  spec.source_files  = "CardFlex", "CardFlex/**/*.{h,m,swift}"
#spec.source_files = "CardFlex/Classes/**/*.{h,m,swift}"

 # spec.source_files  = "CardFlex", "CardFlex/**/*.{h,m,swift}"
spec.osx.deployment_target = nil
  # spec.public_header_files = "CardFlex/**/*.h"

#spec.resources = 'CardFlex/**/*.{png,jpeg,jpg,xcassets}'

#spec.source_files  = 'Classes/*.{h,m,swift}'
spec.source_files =  'Sources/CardFlex/**/*.swift'

spec.requires_arc = true
spec.swift_version = '5.0'
spec.platform     = :ios, "16.0"
end