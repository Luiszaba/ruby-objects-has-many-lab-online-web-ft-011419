class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(name)
    song = Song.new
    @songs << song
    @@all
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def song_count
    @@song_count
  end
  
  def songs
    @songs
  end
end

