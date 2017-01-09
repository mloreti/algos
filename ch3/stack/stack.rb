class StackNode
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end

end

class MyQueue
  attr_accessor :top
  def initialize
    @top = nil
  end

  def pop
    raise "Queue is empty" if is_empty?
    node = @top
    @top = @top.next
    return node
  end

  def push(data)
    node = StackNode.new(data)
    node.next = @top
    @top = node
  end

  def peek
    raise "Stack is empty?" if is_empty?
    return @top.data
  end

  def is_empty?
    return @top == nil
  end

end
