class GamesController < ApplicationController
  def new
    @letters = generate_random_letters(10)
  end

  def score
    @user_word = params[:word]
    @user_score = compute_score(@user_word)
  end

  private

  def generate_random_letters(count)
    ('A'..'Z').to_a.sample(count)
  end

  def compute_score(word)
    word.length
  end
end
