# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','image_gps','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'image_gps'
  s.version = ImageGps::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = [
    'bin/image_gps', 
    'lib/image_gps.rb', 
    'lib/image_gps/version.rb',
    'lib/image_gps/format/csv.rb',
    'lib/image_gps/format/html.rb',
    'lib/image_gps/format/template.erb',
    'lib/image_gps/format/base.rb'
  ]
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','image_gps.rdoc']
  s.rdoc_options << '--title' << 'image_gps' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'image_gps'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.18.0')
  s.add_runtime_dependency('exif')
end
