require './lib/node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(data)
    if empty?
      @head = Node.new(data)
    else
      @head.push(data)
    end
  end

  def count
    return 0 if empty?
    return @head.count(1)
  end

  def pop
    if empty?
      return nil
    elsif @head.tail?
      value = @head.data
      @head = nil
      return value
    elsif @head.next_node.tail?
      value = @head.next_node.data
      @head = nil
      return value
    else
      return @head.next_node.pop
    end
  end
  
  def empty?
    @head.nil?
  end
end