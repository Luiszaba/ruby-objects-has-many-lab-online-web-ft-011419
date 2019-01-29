class Artist
  attr_accessor :name
  
  @@all = []
  
  # class Songs uses @@all, therefor we must use @@all
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def song
    @@all
  end
  
  def add_song(name)
    song.name = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def song_count
    self.all.count
  end
  
  def songs
    @@all
  end
end

