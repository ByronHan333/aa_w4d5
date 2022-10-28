class MyQueue

    def initialize
        @store = []
    end

    def dequeue
        @store.shift
    end

    def enqueue(ele)
        @store.push(ele)
    end

    def peek
        @store.first
    end

    def empty?
        @store.empty?
    end

    def size  
        @store.length
    end
end