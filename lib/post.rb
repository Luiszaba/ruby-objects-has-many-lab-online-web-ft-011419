class Post
  attr_accessor :title, :author, :name
  
  @@all = []
  
  def initialize(title)
  @title = title
  @author = author
  @@all << self
end
  
  def self.all
    @@all
  end
  
  def author_name
    title = Post.new
    title.author = self
end
end