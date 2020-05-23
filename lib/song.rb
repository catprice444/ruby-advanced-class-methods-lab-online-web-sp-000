class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song= self.new
    song.save
    song
  end

  def self.new_by_name(string_name)
    song = self.new
    song.name = string_name
    # song.save
    song
  end

  def self.create_by_name(string_name)
    song = self.new
    song.name = string_name
    song.save
    song
  end

# Build a class finder `Song.find_by_name` that accepts the string name of a song
# and returns the matching instance of the song with that name. Consider:
# 
# ```ruby
# the_middle = Song.create_by_name("The Middle")
# #=> #<Song @name="The Middle">
# 
# Song.find_by_name("The Middle")
# #<Song @name="The Middle">

  def self.find_by_name(string_name)
    self.all.detect {|s| s.name == string_name}

  end

  def self.find_or_create_by_name
  end

  def self.alphabetical
  end

  def self.new_from_filename
  end

  def self.create_from_filename
  end

  def self.destroy_all
    self.all.clear
  end

end
