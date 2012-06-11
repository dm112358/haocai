require 'mongoid'


# puts File.dirname(__FILE__)

# puts Dir.glob("#{File.dirname(__FILE__)}/*.rb")

# puts Dir.glob("#{File.dirname(__FILE__)}/test_mongoid.rb")

Dir.glob("#{File.dirname(__FILE__)}/models/*.rb") do |lib|
  require lib
end


ENV['MONGOID_ENV'] = 'development'

Mongoid.load!("mongoid.yml")

# item = HtmlContent.new
# t = {:url => 'url', :content => 'content', :type => 'type', :status => 'status'}
# item.update_attributes(t)

puts Company.all.size

puts HtmlContent.all.size