class MyStack

    def initialize
        @store = []
    end

    def push(ele)
        @store.push(ele)
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