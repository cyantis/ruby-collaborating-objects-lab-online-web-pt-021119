class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files = Dir.glob("#{@path}/*.mp3").split("/")
  end

  def import

  end

end
