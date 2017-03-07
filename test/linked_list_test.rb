require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_list_starts_with_a_node_at_head
    l = LinkedList.new("Hermione")
  
    assert_equal "Hermione", l.head.data
    assert_equal Node, l.head.class
  end  

  def test_list_can_push_items_on
    l = LinkedList.new("Hermione")

    refute l.head.next_node

    l.push("Luna")

    assert_equal "Luna", l.head.next_node.data
    assert_equal Node, l.head.next_node.class

    l.push("Neville")

    assert_equal "Neville", l.head.next_node.next_node.data
    assert_equal Node, l.head.next_node.next_node.class
  end
end
