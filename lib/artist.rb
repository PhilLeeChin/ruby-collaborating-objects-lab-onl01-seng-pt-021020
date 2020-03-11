class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(artist)
    @name = artist
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find(name)
# <<<<<<< HEAD
#     self.all.find {|artist| artist.name == artist.name}
#   end
# 
#   def self.find_or_create_by_name(name)
#     self.find(name) ? self.find(name) : self.new(name)
# =======
#     self.all.find {|artist| artist.name == artist}
#   end
# 
#   def self.create(name)
#     artist = Artist.new(name)
#     artist.save
#     artist
#   end
# 
#   def self.find_or_create_by_name(name)
#     self.find(name) != nil ? self.find(name) : self.create(name)
# >>>>>>> 182f658a9fa771b140a33311a4c91fa54e04a49e
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
