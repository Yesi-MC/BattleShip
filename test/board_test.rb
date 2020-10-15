require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_has_cells
    skip
    board = Board.new
    
    # assert_equal {
    #   "A1" => Cell.new("A1"),
    #   "A2" => Cell.new("A2"),
    #   "A3" => Cell.new("A3"),
    #   "A4" => Cell.new("A4"),
    #   "B1" => Cell.new("B1"),
    #   "B2" => Cell.new("B2"),
    #   "B3" => Cell.new("B3"),
    #   "B4" => Cell.new("B4"),
    #   "C1" => Cell.new("C1"),
    #   "C2" => Cell.new("C2"),
    #   "C3" => Cell.new("C3"),
    #   "C4" => Cell.new("C4"),
    #   "D1" => Cell.new("D1"),
    #   "D2" => Cell.new("D2"),
    #   "D3" => Cell.new("D3"),
    #   "D4" => Cell.new("D4")
    # }, board.cells

    # assert_equal expected, board.cells
  end

  def test_valid_coordinate
    board = Board.new

    assert_equal true, board.valid_coordinate?("A1")
    assert_equal false, board.valid_coordinate?("A5")
    assert_equal true, board.valid_coordinate?("D4")
    assert_equal false, board.valid_coordinate?("E1")
    assert_equal false, board.valid_coordinate?("A22")
  end
end