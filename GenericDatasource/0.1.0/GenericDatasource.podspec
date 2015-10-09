Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "GenericDatasource"
s.summary = "A Swift implementation of a generic datasource that you can use for table and collection views."
s.requires_arc = true


s.version = "0.1.0"

s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Jordan Morgan" => "jordan@dreaminginbinary.co" }
s.homepage = "https://github.com/DreamingInBinary/GenericDatasource"

s.source = { :git => "https://github.com/DreamingInBinary/GenericDatasource.git", :tag => "#{s.version}"}
s.framework = "UIKit"
s.source_files = "GenericDatasource/**/*.{swift}"

end