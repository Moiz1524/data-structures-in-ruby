class Queue
  attr_accessor :queue
  
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue << item
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.empty?
  end

  def size
    @queue.size
  end
end

# queue = Queue.new
# queue.enqueue(1)
# queue.enqueue(2)

# puts queue.peek
# puts queue.empty?

# puts queue.size

# queue.dequeue
# puts queue.inspect
# puts queue.queue
# puts queue.size