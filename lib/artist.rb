class Artist
  attr_accessor :name
  
  @@all = []
  
  # class Songs uses @@all, therefor we must use @@all
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    @@all
  end
  
  def add_song(song)
    song.name = self
    @@all << self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.name = self
    @@all << self
  end
  
  def self.song_count
    Song.all.count
  end
end

