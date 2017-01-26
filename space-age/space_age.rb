class SpaceAge

  def initialize(age)
    @age = age
  end

  def seconds
    @age
  end

  def on_earth
    @age/(3600*24*365.25)
  end

  def on_mercury
    self.on_earth / 0.2408467
  end

  def on_venus
    self.on_earth / 0.61519726
  end

  def on_mars
    self.on_earth / 1.8808158
  end
  
  def on_jupiter
    self.on_earth / 11.862615
  end
  
  def on_saturn
    self.on_earth / 29.447498
  end
  
  def on_uranus
    self.on_earth / 84.016846
  end
  
  def on_neptune
    self.on_earth / 164.79132
  end
  
end
