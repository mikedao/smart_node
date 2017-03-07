require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_list_starts_empty
    l = LinkedList.new

    refute l.head
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

end
