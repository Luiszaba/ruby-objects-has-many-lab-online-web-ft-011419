class Post
  attr_accessor :title, :author, :name
  
  @@all = []
  
  def self.all
    @@all
  end
end