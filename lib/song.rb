class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = self.new(song_name)
    self.artist_name = artist_name
    new_song.artist = artist
    new_song
  end

  def self.artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    Artist.add_song(new_artist)
  end

end
