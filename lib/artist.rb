class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(name)
    song = Song.new(name)
    @@all << song
  end
  
  def add_song_by_name(song)
    song.artist = self
  end
  
  def song_count
    @@all.self.count
  end
  
  def songs
    @@all
  end
end

