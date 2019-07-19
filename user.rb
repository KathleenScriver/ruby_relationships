class User
  attr_accessor :name, :age

  @@all = []

  def self.all
    @@all
  end

  def self.average_age
    ages = all.map{ |user| user.age }
    (ages / all.count)
  end

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def posts
    Post.all.select do |post|
      post.user == self
    end
  end

  def social_medias
    posts.map do |post|
      post.social_media.name
    end.uniq
  end

  def longest_post
    posts.max_by do |post|
      post.content.length
    end
  end
end
