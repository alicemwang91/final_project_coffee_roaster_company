class AddCommentCountToBlogposts < ActiveRecord::Migration[5.1]
  def change
    add_column :blogposts, :comments_count, :integer
  end
end
