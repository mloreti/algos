require_relative 'node'

def in_order_traversal (node)
  if (node)
    in_order_traversal(node.left)
    p node.val
    in_order_traversal(node.right)
  end
end
