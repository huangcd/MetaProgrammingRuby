class ObjectModel
  def self.class_method
    "I'm only in ObjectModel"
  end

  class << self
    def another_class_method
      "I'm a strange class method in ObjectModel"
    end
  end

  def instance_method
    @var = 1
    "I'm in the instance of ObjectModel"
  end
end

def ObjectModel.third_class_method
  "I'm still a class method of ObjectModel"
end