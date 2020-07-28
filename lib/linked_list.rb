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
    if empty?
      0
    else
      @head.count(1)
    end
  end

  def pop
    if empty?
      nil
    elsif @head.tail?
      value = @head.data
      @head = nil
      value
    elsif @head.next_node.tail?
      value = @head.next_node.data
      @head = nil
      value
    else
      @head.next_node.pop
    end
  end

  def empty?
    @head.nil?
  end

  def unshift(data)
    if empty?
      @head = Node.new(data)
    else
      temp = @head
      @head = Node.new(data)
      @head.set_next(temp)
    end
  end

  def shift
    if empty?
      nil
    else
      value = @head.data
      @head = @head.next_node
      value
    end
  end

  def includes?(word)
    if empty?
      false
    else
      @head.includes?(word)
    end
  end

  def find(search_term, number)
    if empty?
      nil
    else
      @head.find(search_term, number)
    end
  end
end
