def in_order_traversal(tree_node = @root, arr = [])
  # left children, itself, right children
  if tree_node.left
    in_order_traversal(tree_node.left, arr)
  end

  arr.push(tree_node.value)

  if tree_node.right
    in_order_traversal(tree_node.right, arr)
  end

  arr
end

#traversing in-order done iteratively
def inorder_iterative(tree_node)
  stack = []
  current = tree_node
  until current.nil? && stack.empty?
    if current
      stack << current
      current = current.left
    else
      top_node = stack.pop
      p top_node.value
      current- top_node.right
    end
  end
end

def post_order_traversal(tree_node = @root, arr = [])

  if tree_node.left
    in_order_traversal(tree_node.left, arr)
  end

  if tree_node.right
    in_order_traversal(tree_node.right, arr)
  end
  arr.push(tree_node.value)
  arr
end

def pre_order_traversal(tree_node = @root, arr = [])
  arr.push(tree_node.value)

  if tree_node.left
    in_order_traversal(tree_node.left, arr)
  end


  if tree_node.right
    in_order_traversal(tree_node.right, arr)
  end

  arr

end
