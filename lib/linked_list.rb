require './lib/node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.push(data)
    end
  end
end