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
    if data.class == Node
      @next_node = data
    else
      @next_node = Node.new(data)
    end
  end

  def tail?
    @next_node.nil?
  end

  def pop
    if next_node_tail?
      value = @next_node.data
      @next_node = nil
      return value
    else
      @next_node.pop
    end
  end 

  def next_node_tail?
    @next_node.tail?
  end


end