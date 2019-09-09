class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
   end
   class LinkedList
    #setup head and tail
    attr_accessor :head, :tail
    def initialize(value = nil)
      @head = Node.new(value)
    end
    def printlist
      current = @head
      while current
        puts current.value
        current = current.next_node
      end
    end
    def add(number)
      # your code here
      current = @head
      if current.nil?
        current = Node.new(number)
      else
        while current.next_node
          current = current.next_node
        end
        current.next_node = Node.new(number)
      end
    end
    def add_at(index, item)
      if @head.nil?
        @head = Node.new(item)
      else
        # list: 3 5
        current_node = get_node(index)  # 5
        new_node     = Node.new(item)
        # list: 3 11 5
        new_node.next_node     = current_node.next_node
        current_node.next_node = new_node
      end
    end
    def remove(index)
      current_node           = get_node(index)
      current_node.next_node = current_node.next_node.next_node
    end
    def length
      current = @head
      index   = -1
      while current
        index += 1   #=> index = index + 1
        current = current.next_node
      end
      return index
    end
    # returns the value of the node at index
    def get(index)
      return get_node(index).next_node.value
    end
    # returns the node object at index
    def get_node(index)
      # your code here
      current = @head
      if index == 0
        return current
      else
        idx = 0
        while (idx != (index)) && (current.next_node)
          current = current.next_node
          idx += 1
        end
        return current
      end
    end
   end
   class Queue
    def initialize()
      @items = LinkedList.new
    end
    def add(item)
      @items.add_at(0, item)
    end
    def remove()
      if @items.length == 0
        return -1
      end
      last_position = @items.length() - 1
      last_item     = @items.get(last_position)
      @items.remove(last_position)
      return last_item
    end
    def print_queue()
      @items.printlist()
    end
   end
   
   queue = Queue.new
   
   queue.add(3)
   queue.add(5)
   queue.add(4)
   puts queue.remove
   
   queue.add(5)
   puts queue.remove
   # => 3
   
   queue.add(2)
   queue.add(7)
   puts queue.remove
   # => 5
   
   puts queue.remove
   # => 2
   p queue
   #puts queue.remove
   # => 7
   
   #puts queue.remove
   # => -1