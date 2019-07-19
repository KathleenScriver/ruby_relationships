require 'pry'
require_relative 'post'
require_relative 'social_media'
require_relative 'user'

tyler = User.new("Tyler", 23)
kat = User.new("Kat", 35)
bob = User.new("Bob", 77)

facebook = SocialMedia.new("Facebook", "blue")
twitter = SocialMedia.new("Twitter", "light blue")
instagram = SocialMedia.new("Instagram", "light blue")

post1 = Post.new(kat, twitter, "Can someone check if my stove is on?")
post2 = Post.new(kat, facebook, "It's gettin hot in here!")
post3 = Post.new(bob, facebook, "Yes, hot.")
post4 = Post.new(tyler, instagram, "This is a picture")
post5 = Post.new(tyler, twitter, "Hey everyone!")
post6 = Post.new(kat, twitter, "Where is everyone?")

binding.pry
