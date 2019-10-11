#
# Be sure to run `pod lib lint MultiModelTableViewDataSource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultiModelTableViewDataSource'
  s.version          = '0.0.6'
  s.summary          = 'MultiModelTableViewDataSource makes it dead simple to create table views with multiple types of cells coexisting.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod moves configuration from the data source to individual cell model classes. By doing so, it becomes straightforward to mix and match cells within the same UITableView.
                       DESC

  s.homepage         = 'https://github.com/ThryvInc/multi-model-table-view-data-source'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Elliot' => '' }
  s.source           = { :git => 'https://github.com/ThryvInc/multi-model-table-view-data-source.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/elliot_schrock'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MultiModelTableViewDataSource/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MultiModelTableViewDataSource' => ['MultiModelTableViewDataSource/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
