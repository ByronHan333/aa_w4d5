require_relative 'my_stack'

class StackQueue

  def initialize
    @in_stack = MinMaxStack.new
    @out_stack = MinMaxStack.new
  end

  def size
    @in_stack.length + @out_stack.length
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def peek
    if @out_stack.empty?
      return @in_stack.peek
    else
      return @out_stack.peek
    end
  end

  def enqueue(ele)
    if @in_stack.empty? && !@out_stack.empty?
      last_ele = @in_stack[0]
      _, min, max = last_ele
    else
      @in_stack.push(ele)
    end
  end

  def dequeue
    return nil if self.empty?
    return @out_stack.pop if !@out_stack.empty?
    if @out_stack.empty? && !@in_stack.empty?
      populate_outstack
      @out_stack.pop
    end
  end

  def populate_outstack
    until @in_stack.empty?
      ele = @in_stack.pop
      @out_stack.push(ele)
    end
  end

  def min

  end

  def max

  end
end
