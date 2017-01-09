class QueueNode
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end

end

class Queue
  attr_accessor :first, :last
  def initialize
    @first = nil
    @last = nil
  end

  def add(data)
    node = QueueNode.new(data)
    if (@last != nil)
      last.next = node
    end
    @last = node
    if(first.nil?)
      @first = @last
    end
  end

  def remove
    raise "no such element" if is_empty?
    node = @first
    @first = @first.next
    if(@first.nil?)
      @last = nil
    end
    return node
  end

  def peek
    raise "no such element" if is_empty?
    return @first.data
  end

  def is_empty?
    return first == nil
  end

end
