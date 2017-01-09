# queue implemented with 2 stack
require '../stack/stack'

class MyQueue
  attr_accessor :new, :old
  def initialize
    @new = Stack.new
    @old = Stack.new
  end

  def add(data)
    @new.push(data)
    nil
  end

  def shift_stacks
    if (@old.is_empty?)
      until (@new.is_empty?)
        @old.push(@new.pop.data)
      end
    end
    nil
  end

  def peek
    self.shift_stacks
    @old.peek
  end

  def remove
    self.shift_stacks
    return @old.pop.data
  end

  def to_a
    self.shift_stacks
    new_node = @new.top
    old_node = @old.top

    front = []
    while old_node
      front << old_node
      old_node = old_node.next
    end

    back = []
    while new_node
      back << new_node
      new_node = new_node.next
    end

    front.concat(back.reverse)
    front.map(&:data)
  end

end


q = MyQueue.new
q.add(1)
q.add(2)
q.add(3)
q.add(4)
q.add(5)

q.remove
q.remove
q.add(6)
q.add(7)
p q.to_a
p q.to_a
