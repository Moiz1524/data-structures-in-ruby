# Stack: A stack is an ordered collection of items where the addition of new items and the removal of existing items happens on the same end. Usually, this end is referred to as the top, while the opposite end is referred to as the base. The closer an item is to the base, the longer it has been on the stack. The most recently added item will always be at the top. Hence, the ordering method used here is Last-In-First-Out (LIFO). A good example of a stack usage is a web browser back button. On navigation using the back button, the web pages will be displayed in order visited, starting with the most recently visited page. Below is a simple implementation of the stack data structure in Ruby.

class Stack
  attr_reader :items
  
  def initialize
    @items = []
  end

  def push(item)
    @items.push(item)
  end

  def pop
    @items.pop
  end

  def size
    @items.length    
  end
end

stack = Stack.new
stack.push(1)
stack.push(2)

# puts stack.size
# stack.pop
# puts stack.size
