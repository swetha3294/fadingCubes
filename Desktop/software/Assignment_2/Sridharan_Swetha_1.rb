class Class
 def attr_accessor_with_history(attr_name)
   attr_name = attr_name.to_s   # make sure it's a string
   attr_reader attr_name        # create the attribute's getter
   attr_reader attr_name+"_history" # create bar_history getter
   attr_history=attr_name+"_history"
   self.class_eval ("def #{attr_name}=(val); @#{attr_name}=(val); @#{attr_history}.push(val);end")
   self.class_eval ("def initialize(); @#{attr_history}=['nil'];end")
 end
end

class Foo
 attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar_history # => if your code works, should be [nil,1,2]





f = Foo.new     # => #<Foo:0x127e678>
f.bar = 3       # => 3
f.bar = :wowzo  # => :wowzo
f.bar = 'boo!'  # => 'boo!'
puts f.bar_history # => [nil, 3, :wowzo, 'boo!']
