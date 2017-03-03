require_relative 'scraping_building_obj.rb'
require 'open-uri'


html_file = open(ARGV[0])





post = Post.new(ARGV[0])
post.fetch!
post.title
post.points
post.item_id