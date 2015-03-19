class Car

  attr_reader :name

  def initialize(name, engine_size)
    @name = name
    @engine_size = engine_size
  end
end