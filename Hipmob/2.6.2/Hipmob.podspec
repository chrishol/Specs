Pod::Spec.new do |s|
  s.name         = 'Hipmob'
  s.version      = '2.6.2'
  s.summary      = 'Cloud-hosted live chat for iOS'
  s.description  = 'An all-in-one solution for providing great support to your mobile users.'
  s.homepage     = 'http://hipmob.com/'
  s.author       = 'Orthogonal Labs, Inc.'
  s.license = {
    :type => 'Copyright',
    :text => 'Copyright (c) 2013 Orthogonal Labs, Inc.'
  }
  s.source = { :http => 'https://hipmob.s3.amazonaws.com/hipmob.full.framework.2.6.2.tar.gz' }
  s.platform = :ios
  s.ios.deployment_target = '4.3'
  
  s.preserve_paths = 'hipmob.framework'
  s.source_files   = 'hipmob.framework/Versions/A/Headers/*.h'
  s.resource       = 'hipmob.framework/Versions/A/Resources/*.png'
  
  s.frameworks = 'hipmob', 'CoreData', 'Security', 'Foundation', 'CFNetwork', 'UIKit', 'CoreGraphics'
  s.libraries  = 'icucore'
  s.xcconfig   = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/hipmob"' }
end