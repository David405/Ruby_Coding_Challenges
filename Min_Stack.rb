class Stack
    def initialize
      @items = []
    end
    def push(item)
      @items.append(item)
    end
    def pop
      return @items.pop()
    end
    def min
      @items.min()
    end
   end
   
   stack = Stack.new
   stack.push(3)
   stack.push(5)
   puts stack.min
   # => 3
   
   stack.pop
   stack.push(7)
   puts stack.min
   # => 3
   
   stack.push(2)
   puts stack.min
   # => 2
   
   stack.pop
   puts stack.min
   # => 3