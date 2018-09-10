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

  #Step 1. Perform find(val).
  #Step 2. If val has no children, "erase" val.
  #Step 3. If val has one child, promote this child to take val's place, keeping everything else the same.
  #Step 4a. If val has two children, find the maximum element in val's left subtree. Call this node r.
  #Step 4b. Replace val with r.
  #Step 4c. If r had a left child, promote this child to take r's place. Keep everything else the same.

  def delete(value)
    node = find(value)
    if node.right.nil? && node.left.nil?
      node = nil
    elsif node.left.nil? && node.right
      node = node.right
    elsif node.right.nil? && node.left
      node = node.left
    else
      
    end

    node
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
