module ModuleA

  puts 'Executable code of module is here'

  def ModuleA.sum(a,b) #method inside module = module_name . name_of_the_method(xx,xx)
    c = a+b
    puts c
  end

  class Testing

    def initialize
      puts 'This is constructor'
    end

    def sub(a,b)
      c=a-b
      puts c
    end
    
  end

end
