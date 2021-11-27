# your code here
class Stack
  def initialize(limit=0)
    @stack = []
    @limit = limit
  end

  def push(value)
    raise "Stack Overflow" if size >= @limit && @limit != 0
    @stack.push(value)
  end

  def pop
    value = peek
    @stack.pop
    value
  end

  def peek
    @stack.last
  end

  def size
    @stack.count
  end

  def empty?
    size == 0
  end

  def full?
    size == @limit
  end

  def search(value)
    i = size - 1
    until i < 0
      return size - i - 1 if @stack[i] == value
      i -= 1
    end
    -1
  end
end