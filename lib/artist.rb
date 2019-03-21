require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find do |n|
      binding.pry
      n.name == name ? name : artist = self.new(name)
    end
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def print_songs
    self.songs.each {|s| puts "#{s.name}"}
  end

end
