class LinkedList
  attr_reader :head

  def initialize(data)
    @head = Node.new(data)
  end
  
  def push(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.push(data)
    end
  end

end