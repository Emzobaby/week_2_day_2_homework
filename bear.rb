class Bear

  attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def fish_count
  return @stomach.size
end

def roar
  return "RARRRRRRR"
end

end
