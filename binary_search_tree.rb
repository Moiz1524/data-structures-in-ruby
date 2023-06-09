class BinarySearchTree
  attr_accessor :root_node

  def initialize(root_value = nil)
    @root_node = Node.new(root_value)
  end

  def insert(node, value)
    if node.value == value
      return node
    elsif value < node.value
      insert(node.left, value)
    elsif value > node.value
      insert(node.right, value)
    else
      return node = Node.new(value)
    end
  end

  def BST_is_valid?(node, min = 1.0/0.0, max = 1.0/0.0)
    until node.left.nil? && node.right.nil?
      if min > node.value || max < node.value
        return false
      else
        BST_is_valid?(node.left, min, node.value)
        BST_is_valid?(node.right, node.value, max)
      end
      return true
    end
  end

  def search(value, node)
    return nil if node.nil?

    
    if value == node.value
      return node
    elsif value > node.value
      search(value, node.right)
    elsif value < node.value
      search(value, node.left)
    end    
  end

  def delete(value)
    node = search(value)

    if !node.nil?
      remove(node)
    end
  end

  def remove
    if node.left.nil? && node.right.nil?
      node = nil
    elsif !node.left.nil? && node.right.nil?
      node = node.left
    elsif node.left.nil? && !node.right.nil?
      node = node.right
    else
      node = delete_node_with_two_children(node)
    end
    node
  end

  def delete_node_with_two_children(node)
    min_node = find_min_node(node.right)
    replace_value(min_node, node)
    remove_min_node(min_node)
  end

  def find_min_node(node)
    if node.left.nil?
      min_node = node
      return min_node
    else
      find_min(node.left)
    end
  end

  def replace_value
    node.value = min_node.value    
  end

  def remove_min_node(min_node)
    min_node = nil
  end
  
  private
  
  class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(value = nil)
      @value = value
      left = nil
      right = nil
    end
  end
end