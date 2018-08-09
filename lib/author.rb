class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

#fors adding post you take in a post
#then you initialize teh post.author to self if you need to initialize that
#then you shovel the post into @@posts to push it to all the posts array
  def add_post(post)
    #this will let the  post know that it belongs to it self the obj and
    #this will enable it the name of the artist as well as any other attributes
    post.author = self
    @@posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @@posts << new_post
  end

  def self.post_count
    @@posts.length
  end
end
