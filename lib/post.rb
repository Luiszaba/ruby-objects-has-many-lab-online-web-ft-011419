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
  
  def 
  
  def author_name
    author.name if author ? author : nil
end
end