require 'test-unit'

class Scoreable
  def score
  end
end

class Scores
  def initialize
    @scores = []
  end

  def add(scoreable)
    @scores << scoreable
  end

  def arithmetic_mean
    total = @scores.inject(0) {|sum, v| sum + v}
    total / @scores.size
  end
end

class TestScores < Test::Unit::TestCase
  def test_answers_arithmetic_mean_of_two_numbers
    # arrange
    scores = Scores.new
    scores.add(5)
    scores.add(7)

    # act
    actual_result = scores.arithmetic_mean

    # assert
    assert_equal(actual_result, 6);
  end
end
