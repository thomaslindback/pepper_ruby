
puts("Name this class? ")
className = gets.strip().capitalize()		# make sure class name starts with capital letter
Object.const_set(className,Class.new)		# create new class
puts("I'll give it a method called 'myname'" )
className = Object.const_get(className)
className::module_eval{ define_method(:myname){ 
			puts("Name is '#{self.class}'" ) } 
			}
require 'pp'
pp x = className.new
pp x.myname
pp x.singleton_methods
# class_eval operates on classes but create instance_methods
className.class_eval{
  p "now in #{self}"
  def time()
    @time
  end
  def set_time()
    @time = Time.now
    :tempus_fugit
  end
  def get_now_time()
    Time.now
  end
}
pp className.class
pp className.singleton_methods
pp x.singleton_methods
pp x.myname
pp x.send(:set_time)
pp x.time
pp className.instance_methods(false)
f = "foo"
pp f.singleton_methods
class << f 
  def foo_bar
    puts :foo_bar
  end
end
pp f.singleton_methods