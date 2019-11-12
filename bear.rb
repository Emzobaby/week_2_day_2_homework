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

def eat_fish(river, fish_name)
  river.lose_fish(fish_name)
  @stomach << fish_name
end

end
