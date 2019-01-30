require_relative 'ModuleA'

ModuleA::sum(100,200) #calling module method

obj = ModuleA::Testing.new # creating obj of the class inside module

obj.sub(400,100) #calling a function inside a class within module
