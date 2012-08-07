require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "question title and question description must not be empty" do
    question = Question.new
    
    assert question.invalid?
    assert question.errors[:title].any?
    assert question.errors[:description].any?
  end
  
end
