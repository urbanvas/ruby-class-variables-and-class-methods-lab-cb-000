class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genre = []
  @@artist = []
  @@hash = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre
    @@artist << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genre.uniq
  end

  def self.artist
    @@artist.uniq
  end

  def self.genre_count
    (0...@@genre.length).each do |i|
      @@hash[@@genre[i]] = i
    end
  end
end
