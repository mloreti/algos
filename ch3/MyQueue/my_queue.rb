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
    output = []
    new_node = @new.top
    old_node = @old.top

    while old_node
      output << old_node
      old_node = old_node.next
    end

    while new_node
      output << new_node
      new_node = new_node.next
    end

    output.map(&:data)
  end

end
