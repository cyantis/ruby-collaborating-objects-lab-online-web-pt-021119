require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.collect {|f| f.split("mp3s/")[1]}
  end

  def import

  end

end
