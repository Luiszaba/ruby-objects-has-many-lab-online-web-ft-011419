class Author
  attr_accessor :name
  
  @@post_count = []
  
  def initialize(name)
    @name = name
    @@post_count << self
  end
  
  
  #def self.posts
    #Post.all.select {|posts| posts.title == self}
 # end
  
  def posts.all
    @@post_count
  end
  
  def add_post(name)
    name = Post.new
    name.title = self
end
end