#
# Be sure to run `pod lib lint gcovFlushAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'gcovFlushAdapter'
  s.version          = '0.1.0'
  s.summary          = 'to fix the bug that __gcov_flush symbol is undefined after upgrading to xcode13'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  this repo is designed to fix the bug that __gcov_flush symbol is undefined after upgrading to xcode13
                       DESC

  s.homepage         = 'https://github.com/chiyun1/gcovFlushAdapter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chiyun1' => 'chiyunbubu@gmail.com' }
  s.source           = { :git => 'https://github.com/chiyun1/gcovFlushAdapter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  
  s.vendored_frameworks = 'gcovFlushAdapter/Classes/gcov_adapter.framework'
  
end
