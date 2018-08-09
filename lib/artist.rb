class Artist
  attr_accessor :name
  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def self.song_count
    @@songs.length
  end

  def add_song(song) #grab a song and assign the artist attribute variable to self
    song.artist = self
    @@songs << song  #then shovel in the song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @@songs << new_song
  end

end
