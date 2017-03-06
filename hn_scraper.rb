require_relative 'scraping_building_obj.rb'
require 'open-uri'


post = Post.new(ARGV[0])
post.fetch!
post.title
post.comments
post.points
post.item_id