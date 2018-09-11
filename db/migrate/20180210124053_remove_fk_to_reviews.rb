class RemoveFkToReviews < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :reviews, :users
  end
end
