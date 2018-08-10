class Artist
  @@all = []
  attr_accessor :name, :name_song, :genre
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(name_song, genre)
    Song.new(name_song, self, genre)
  end
end
