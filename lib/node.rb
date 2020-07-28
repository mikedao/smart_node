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
    if tail?
      number
    else
      @next_node.count(number + 1)
    end
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
      value
    else
      @next_node.pop
    end
  end

  def next_node_tail?
    @next_node.tail?
  end

  def includes?(word)
    if @data == word
      true
    elsif tail?
      false
    else
      @next_node.includes?(word)
    end
  end

  def find(search_term, number)
    if search_term == @data
      @next_node.build_string(@data, number - 1)
    elsif tail?
      nil
    else
      @next_node.find(search_term, number)
    end
  end

  def build_string(string, number)
    if number > 0
      string += " #{@data}"
      if tail?
        string
      else
        @next_node.build_string(string, number - 1)
      end
    else
      string
    end
  end
end
