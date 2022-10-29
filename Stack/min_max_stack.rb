class MinMaxStack

    attr_reader :store

    def initialize
        @store = []
    end

    def min
        return nil if empty?
        peek[1]
    end

    def max
        return nil if empty?
        peek[2]
    end

    def push(ele, min=nil, max=nil)
        min ||= self.peek[1] if !peek.nil?
        max ||= self.peek[2] if !peek.nil?
        # print "precheck, #{min}, #{max} \n"
        min = ele if min.nil? || ele < min
        max = ele if max.nil? || ele > max
        # print "postcheck, #{min}, #{max} \n"
        @store.push([ele, min, max])
    end

    def pop
        @store.pop
    end

    def peek
        @store.last
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end


end

if __file__ = $FILE_NAME
    mms = MinMaxStack.new
    p mms.push(1)
    p mms.push(10)
    p mms.push(-5)
    p mms.push(2)
    p mms.push(15)
    p mms.push(-10)
    p mms.min
    p mms.max
end
