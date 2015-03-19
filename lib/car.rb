class Car

  attr_reader :name
  attr_reader :engine_size

  def initialize(name, engine_size)
    @name = name
    @engine_size = engine_size
  end

  def ==(other)
    unless other.kind_of? Car
      return false
    end
    @name == other.name && @engine_size == other.engine_size
  end
end