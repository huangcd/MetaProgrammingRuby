# MetaProgramming Ruby Notes

###  Author: [huangcd](mailto:huangcd.thu@gmail.com)

---

## 对象模型

### Open Class（打开类）
打开类大概是Ruby里面最简单也是最通用的MetaProgramming技巧了。
通过打开类的技巧，可以动态地给Ruby类或者实例增加方法和属性。

打开类方法是重新定义一个类，然后在里面添加方法或者属性。

### 方法
Ruby中的方法包括类方法（如new）和实例方法两种。与Java、C#等不同的是，类的实例不能调用类的方法。

Ruby支持在运行时动态增加类方法和实例方法。

定义类方法有四种方式：

1. 在类的内部通过`def self.method_name; end`定义
2. 在类的内部使用`class << self; def method_name; end; end`定义
3. 在外部使用`def Object.method_name; end`定义
4. 2、3的混合