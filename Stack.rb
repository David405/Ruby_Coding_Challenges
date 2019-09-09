
class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class Stack
    def initialize
      @head = nil
    end
    
    def push(number)
      # your code here
      @head = Node.new(number, @head)
    end
    
    def pop
      # your code here
      value = @head.value
      @head = @head.next_node
      value
    end
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  stack.push(4)
  p stack
  puts stack.pop
  p stack
  # => 5
  
  