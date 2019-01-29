
class Artist
  attr_accessor :name

  @@song_count = []

  def initialize(name)
    @name = name
    @@song_count << self
  end

  def self.all
    @@song_count
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.count
  end
end
