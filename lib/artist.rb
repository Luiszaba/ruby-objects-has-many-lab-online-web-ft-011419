class Artist
  attr_accessor :name
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(name)
    song = Song.new
    @songs << song
    song.artist = self
    @@song_count += 1 
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

