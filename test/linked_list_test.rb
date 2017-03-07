require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_list_starts_empty
    l = LinkedList.new

    refute l.head
    assert l.empty?
  end

  def test_list_can_push_one_item_and_its_a_node
    l = LinkedList.new
    
    l.push("Harry")

    assert_equal "Harry", l.head.data
    assert_equal Node , l.head.class
  end

  def test_list_can_push_many_nodes
    l = LinkedList.new
    
    l.push("Harry")
    l.push("Hermione")
    l.push("Snape")
    l.push("McGonagall")

    assert_equal "Harry", l.head.data
    assert_equal Node , l.head.class
    assert_equal "Hermione", l.head.next_node.data
    assert_equal Node , l.head.next_node.class
    assert_equal "Snape", l.head.next_node.next_node.data
    assert_equal Node , l.head.next_node.next_node.class
    assert_equal "McGonagall", l.head.next_node.next_node.next_node.data
    assert_equal Node , l.head.next_node.next_node.next_node.class
  end

  def test_list_can_count_nodes
    l = LinkedList.new
    assert_equal 0, l.count
    
    l.push("Harry")
    assert_equal 1, l.count
  
    l.push("Hermione")
    assert_equal 2, l.count
    
    l.push("Snape")
    assert_equal 3, l.count

    l.push("McGonagall")
    assert_equal 4, l.count
  end
    
  def test_list_can_pop_a_node
    l = LinkedList.new
    
    l.push("Harry")
    l.push("Hermione")
    l.push("Snape")
    l.push("McGonagall")

    assert_equal 4, l.count
    assert_equal "McGonagall", l.pop
    assert_equal 3, l.count
  end

  def test_list_can_pop_only_node
    l = LinkedList.new
    l.push("Hermione")

    assert_equal 1, l.count
    assert_equal "Hermione", l.pop
    assert_equal 0, l.count
  end

  def test_list_cant_pop_when_empty
    l = LinkedList.new

    refute l.pop
  end

  def test_list_can_unshift
    l = LinkedList.new
    l.push("Bon Jovi")

    l.unshift("Bruce Springsteen")
    
    assert_equal 2, l.count
    assert_equal "Bruce Springsteen", l.head.data
    assert_equal "Bon Jovi", l.head.next_node.data
    assert_equal Node, l.head.next_node.class
  end

  def test_list_can_unshift_empty
    l = LinkedList.new
    l.unshift("Gin Blossoms")

    assert_equal "Gin Blossoms", l.head.data
    assert_equal Node, l.head.class
  end

  def test_can_shift_empty
    l = LinkedList.new
    refute l.shift
  end

  def test_can_shift_list_of_one_node
    l = LinkedList.new
    l.push("Lemonheads")

    assert_equal 1, l.count
    assert_equal "Lemonheads", l.shift
    assert l.empty?
    assert_equal 0, l.count
  end

  def test_can_shift_list_of_many_nodes
    l = LinkedList.new
    l.push("Harry")
    l.push("Hermione")
    l.push("Snape")
    l.push("McGonagall")

    assert_equal 4, l.count
    assert_equal "Harry", l.shift
    assert_equal 3, l.count
  end
    

end
