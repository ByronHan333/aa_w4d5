require_relative 'min_max_stack'

class MinMaxStackQueue
  attr_reader :in_stack, :out_stack

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
    populate_outstack if @out_stack.empty?
    return @out_stack.peek
  end

  def enqueue(ele)
    if @in_stack.empty? && !@out_stack.empty?
      last_ele = @out_stack[0]
      _, min, max = last_ele
      @in_stack.push(ele, min, max)
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
      @out_stack.push(*ele)
    end
  end

  # def min
  #   self.peek[1]
  # end

  # def max
  #   self.peek[2]
  # end
end

mmsq = MinMaxStackQueue.new
mmsq.enqueue(1)
mmsq.enqueue(2)
mmsq.enqueue(3)
mmsq.enqueue(4)
mmsq.dequeue
p "here"
# print "#{mmsq.in_stack.store} \n"
print "#{mmsq.out_stack.store} \n"
print "#{mmsq.peek} \n"
# mmsq.populate_outstack
p mmsq.min
p mmsq.max
