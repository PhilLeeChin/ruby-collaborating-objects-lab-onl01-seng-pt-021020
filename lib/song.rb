require "pry"
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(song)
    @name = song
    @artist = artist
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.new_by_filename(title)
    binding.pry
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
# <<<<<<< HEAD
#     self.artist.add_song(self)
# =======
#     artist.add_song(self)
# >>>>>>> 182f658a9fa771b140a33311a4c91fa54e04a49e
  end
end
