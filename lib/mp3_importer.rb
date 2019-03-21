class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files = Dir.MP3Importer('./spec/fixtures/*.mp3')

  end

  def import

  end

end
