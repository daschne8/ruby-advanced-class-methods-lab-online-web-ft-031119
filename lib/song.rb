class Song
  attr_accessor :name, :artist_name
  @@all = []
  def self.create
    song = self.new
    self.all << song
    song
  end
  def self.new_by_name(name)
    song = self.new
    song.name = name
    self.all << song
    song
  end
  def self.create_by_name(name)
    self.new_by_name(name)
  end
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def find_by_name(name)
    self.all.each do |song|
      self.all.find{|song| song.name == name}
    end
    return falsey
  end
end
