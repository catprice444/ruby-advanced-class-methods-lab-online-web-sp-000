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

  
  # Build a class constructor `Song.new_by_name` that takes in the string name of a
  # song and returns a song instance with that name set as its name property.
  # `Song.new_by_name` should return an instance of `Song` and not a simple string
  # or anything else. Implement the following functionality:
  # song = Song.new_by_name("The Middle")
  #=> #<Song @name="The Middle">
  # song.name #=> "The Middle"

  def self.new_by_name(string_name)
    song = self.new
    song.name = string_name
    song.save
    song
  end
    
end
