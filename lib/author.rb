class Author
  attr_accessor :name
  
  @@post_count = []
  
  def initialize(name)
    @name = name
    @@post_count << self
  end
  
  def self.all
    @@post_count
  end
  
  def add_post(post)
    post.author = self
  end
  
  def post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  def posts
    Post.all.select {|post| post.title == self}
  end
  
  def self.post_count
    Post.all.count
  end
end