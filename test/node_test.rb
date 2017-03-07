require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_a_node_holds_data
    node = Node.new("pizza")
    
    assert_equal "pizza", node.data
  end

  def test_node_holds_different_data
    node = Node.new("Taylor Swift")

    assert_equal "Taylor Swift", node.data
  end

  def test_no_next_node_by_default
    node = Node.new("Justin Bieber")

    refute node.next_node
  end

  def test_node_can_push
    node = Node.new("Harry")

    node.push("Ron")

    assert_equal Node, node.next_node.class
    assert_equal "Ron", node.next_node.data

  end
end