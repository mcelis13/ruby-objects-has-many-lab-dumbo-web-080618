class Song
  attr_accessor :title, :artist
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def all
    @@all
  end

  def name
    @title
  end

  def artist_name
    if self.artist
      return self.artist.name
    else
      return nil
    end
  end

end
