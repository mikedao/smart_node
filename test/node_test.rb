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


  def test_node_can_set_next_node
    node = Node.new("Hagrid")

    node.set_next("Lucius")

    assert_equal "Lucius", node.next_node.data
    assert_equal Node, node.next_node.class
  end

  def test_node_can_count_next
    node = Node.new("Bellatrix")
    node.set_next("Narcissa")

    assert_equal 2, node.count(1)
  end

  def test_node_knows_its_tail
    node = Node.new("Dudley")

    assert node.tail?
  end

  def test_node_knows_not_tail
    node = Node.new("Vernon")

    node.set_next("Petunia")

    refute node.tail?
  end

  def test_node_can_pop
    node = Node.new("Vernon")

    node.set_next("Petunia")

    assert_equal "Petunia", node.pop
    refute node.next_node
  end

  def test_node_knows_if_next_node_is_tail
    node = Node.new("Vernon")

    node.set_next("Petunia")
    node.next_node.set_next("Dudley")

    refute node.next_node_tail?
    assert node.next_node.next_node_tail?
  end

  def test_set_next_can_handle_nodes_and_strings
    node = Node.new("Derek")
    node_2 = Node.new("Hansel")

    node.set_next("Matilda")

    assert_equal "Matilda", node.next_node.data
    assert_equal Node, node.next_node.class

    node.set_next(node_2)
    assert_equal "Hansel", node.next_node.data
    assert_equal Node, node.next_node.class
  end

end
