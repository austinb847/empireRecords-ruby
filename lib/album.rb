# backend

class Album
  attr_reader :id, :name
  attr_accessor :name
  @@albums = {}
  @@total_rows = 0

  def self.clear
    @@albums = {}
    @@total_rows = 0
  end

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  def self.all()
    @@albums.values()
  end

  def self.find(id)
    @@albums[id]
  end

  def save
    @@albums[self.id] = Album.new(self.name, self.id)
  end

  def ==(album_to_compare)
    self.name() == album_to_compare.name()
  end

  def update(name)
    @name = name
  end

  def delete
    @@albums.delete(self.id)
  end
end
