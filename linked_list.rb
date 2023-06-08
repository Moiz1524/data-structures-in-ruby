class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add(value)
    if head.nil?
      self.head = Node.new(value, nil)
    else
      last_node = self.head
      
      while(!last_node.next_node.nil?)
        last_node = last_node.next_node
      end
      # We are at the end of the list
      last_node.next_node = Node.new(value, nil)  
    end
  end

  def find(value)
    node = self.head

    while(!node.nil?)
      return true if (node.value == value)
      node = node.next_node
    end

    false
  end

  def prepend(value)
    if head.nil?
      self.head = Node.new(value, nil)
    else
      self.head = Node.new(value, head)
    end    
  end

  def remove(value)
    return true if head.nil?

    node = head
    prev_node = nil

    until (node.nil?)
      if node.value == value
        if !prev_node.nil?
          prev_node.next_node = node.next_node 
          return
        else
          self.head = node.next_node
          return
        end
      end
      
      prev_node = node
      node = node.next_node
    end
  end

  private

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
# ll.add(30)

# puts ll.head.value
# puts ll.head.next_node.value

# puts ll.find(10)
# puts ll.find(30)
# puts ll.find(20)

# ll.prepend(10)
# ll.prepend(20)

ll.remove(10)

puts ll.head.value
# puts ll.head.next_node.value