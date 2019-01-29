class Author
  attr_accessor :name
  
  @@post_count = []
  
  def initialize(name)
    @name = name
    @@post_count << self
  end
  
  
  def posts
    Post.all.select {|posts| posts.title == self}
  end
  
  def self.all
    @@post_count
  end
  
  def add_post
    name = Post.new
    name.title = self
end
end