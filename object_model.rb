class ObjectModel
    def self.class_method
        "I'm only in ObjectModel"
    end

    class << self
        def another_class_method
            "I'm a strange class method in ObjectModel"
        end
    end

    private

    def instance_method
        @var = 1
        "I'm in the instance of ObjectModel"
    end
end

def ObjectModel.third_class_method
    "I'm still a class method of ObjectModel"
end

class << ObjectModel
    def forth_class_method
        "I'm a very strange class method in ObjectModel"
    end
end

class ObjectModel
    define_method :dynamic_define_method do |a, b|
        a * b
    end
end

class ObjectModel
    def method_missing(method, *args)
        puts "You called:  #{method}(#{args.join(', ')})"
        puts "(You also pass it a block)" if block_given?
        super.method_missing(method, *args)
    end
end