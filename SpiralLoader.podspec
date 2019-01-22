#
# Be sure to run `pod lib lint SpiralLoader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SpiralLoader"
  s.version          = "0.1.0"
  s.summary          = "Beautiful loader for all async task in your application"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
         Beautiful loader  all async task  your application, test your app with it
                       DESC

  s.homepage         = "https://github.com/ravi-jubl/SpiralLoader"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "ravi-jubl" => "ravi.tailor@jublfood.com" }
  s.source           = { :git => "https://github.com/ravi-jubl/SpiralLoader.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = "10.0"

  s.source_files = "SpiralLoader/Classes/**/*.{swift}"
  s.resources = "SpiralLoader/Classes/**/*.{xib}"
  # s.resource_bundles = {
  #   'SpiralLoader' => ['SpiralLoader/Assets/*.png']
  # }
  s.requires_arc = true
  s.swift_version = "4.0"
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
