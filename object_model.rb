class ObjectModel
  def self.class_method
    "I'm only in ObjectModel"
  end

  def instance_method
    @var = 1
    "I'm in the instance of ObjectModel"
  end
end