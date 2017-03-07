class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data       = data
    @next_node  = nil
  end
  
  def push(data)
    if tail?
      set_next(data)
    else
      @next_node.push(data)
    end
  end

  def count(number)
    return number if tail?
    return @next_node.count(number + 1)
  end
  
  def set_next(data)
    @next_node = Node.new(data)
  end

  def tail?
    @next_node.nil?
  end

end