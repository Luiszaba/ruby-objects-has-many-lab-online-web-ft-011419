
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end
  
  def songs
    self.@@all.select do |song| 
    if song.artist == self
      song
  end
end
  
  def self.song_count
    Song.all.count
  end
end
end