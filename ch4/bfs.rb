# breadth first search

def search
  queue = []
  root.marked = true
  queue.push(root)
  while(!queue.empty?)
    r = queue.shift
    p r
    r.adjacent.each do |n|
      if (n.marked == false)
        n.marked = true
        queue.push(n)
      end
    end
  end
end
