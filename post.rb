class Post
  attr_reader :user,
              :social_media,
              :content

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, social_media, content)
    @user = user
    @social_media = social_media
    @content = content
    @@all << self
  end

  
end
