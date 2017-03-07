class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data       = data
    @next_node  = nil
  end
  
  def push(data)
    if @next_node.nil?
      @next_node = Node.new(data)
    else
      @next_node.push(data)
    end
  end

  def count(number)
    return number if @next_node.nil?
    return @next_node.count(number + 1)
  end
  
  def set_next(data)
    @next_node = Node.new(data)
  end

end