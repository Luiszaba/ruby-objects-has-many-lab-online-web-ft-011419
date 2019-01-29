class Author
  attr_accessor :name
  
  @@post_count = []
  
  def initialize(name)
    @name = name
    @@post_count << self
  end
  
  
  def self.posts
    @@post_count
  end
  
  def posts
    @@post_count << self
  end
  
  def add_post
    name = Post.new
    name.title = self
end
end
