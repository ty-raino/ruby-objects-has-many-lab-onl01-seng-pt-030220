class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post_name)
    post_name.author = self
  end

  def add_post_by_title(title)
    name = Post.new(title)
    add_post(name)
  end

  def post_count
    @@post_count
  end


end
