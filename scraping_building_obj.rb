# Start coding your hackernews scraper here!
require 'uri'
require 'open-uri'
require 'net/http'
require 'nokogiri'

# def extract_usernames(doc)
# 	doc.search('.comhead > a:first-child').map do |element|
# 		element.inner_text
# 	end
# end

class Post
	attr_accessor :url

	def initialize(url)
		@url = url
		@post
	end

	def comments

	end

	# def add_comment
	# 	comment = Comment.new()
	# end

	def fetch!
		uri = URI.parse(@url)
		puts "Fetching..."
		@post = Nokogiri::HTML(open(uri))
	end

	def title
		title = @post.css('.storylink')
		puts "Post title: #{title.text}"
    end

 	def points
 		points = @post.css('.score')
 		puts "Points: #{points.text}"
 	end

 	def item_id
 		id = @url.match(/id=\d+/).to_s
 		id = id.match(/\d+/).to_s
 		puts "Item id: #{id}"
 	end

end


class Comment
	attr_accessor :content
	def initialize(content)
		@content = content
	end
end

