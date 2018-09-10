# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.

require_relative 'bst_node'

class BinarySearchTree

  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value)
    @root = recurse_insert(@root, value)
  end

  def find(value, tree_node = @root)
    return nil if tree_node.nil?
    return tree_node if tree_node.value == value
    if tree_node.value > value
      find(value, tree_node.left)
    else
      find(value, tree_node.right)
    end
  end

  def delete(value)
    
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    return tree_node if tree_node.right == nil
    maximum(tree_node.right)
  end

  def depth(tree_node = @root)
  end

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:

  def recurse_insert(node, val)
    if node == nil
      return BSTNode.new(val)
    end

    if val < node.value
      node.left = recurse_insert(node.left, val)
    else
      node.right = recurse_insert(node.right, val)
    end

    node
  end

end
