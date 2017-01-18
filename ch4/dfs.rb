# depth first search

def search(root)
  return if root.nil?
  p root
  root.visited = true
  root.adjacent.each do |n|
    if n.visited == false
      search(n)
    end
  end
end
