class Stack
    def initialize
        @data = []
    end

    def push(value)
        @data[@data.count] = value
    end

    def pop
        @data.delete_at(@data.count - 1)
    end

    def data
        @data
    end
end