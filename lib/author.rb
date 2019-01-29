class Author
  attr_accessor :name
  
  @@post_count = []
  
  def initialize(name)
    @name = name
    @@post_count << self
  end
  
  def posts
    @@post_count << self
  end
  
  def add_post(name)
    name = Post.new(name)
    name.title = self.
end
end