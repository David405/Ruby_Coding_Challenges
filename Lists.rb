class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    #setup head and tail
    @head = nil
    @tail = nil
    @@list_length = 0
  
    def add(number)
      # your code here
      newNode = Node.new(number, nil)
      @@list_length += 1
      if !@head 
        @head = newNode 
      end
      if !@tail
        @tail = newNode
      else
        @tail.next_node = newNode
        @tail = newNode
      end
    end
  
    def get(index, getNode = false)
      # your code here
      if index<0
        puts "Error index value given must be greater than -1"
        return 
      elseif index > @@list-length-1
        puts "index value must be within the length of the LinkedList"
        return
      end
      count = 0
      current_node = @head
      linked_node = @head.next_node
      
      while count<@@list_length do
        if index == count
          if getNode
            return current_node
          end
          return current_node.value.to_i
        end
        current_node = linked_node
        if current_node != @tail
          linked_node = current_node.next_node
        end
        count += 1
      end
    end
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  puts list.get(1)
  