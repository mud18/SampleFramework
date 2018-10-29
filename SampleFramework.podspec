#
# Be sure to run `pod lib lint SampleFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SampleFramework'
  s.version          = '0.1.1'
  s.summary          = 'SampleFramework for testing iOS library integration via private pods to help me integrate control'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC

  s.homepage         = 'https://github.com/mud18/SampleFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mud18' => 'mudit.jain@renishaw.com' }
  s.source           = { :git => 'https://github.com/mud18/SampleFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'SampleFramework/Classes/**/*'
s.default_subspecs = 'Core'

    s.subspec 'Core' do |ss|
        ss.source_files         = 'SampleFramework/Classes/*.{swift}', 'SampleFramework/Classes/RemoteConfig/*.{swift}'
#        ss.public_header_files  = 'SampleFramework/Classes/RemoteConfig/*.{swift}'
    end
  
  # s.resource_bundles = {
  #   'TemplateProject' => ['TemplateProject/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version      = "4.2"
end
