class AddBookmarkCountToBlogposts < ActiveRecord::Migration[5.1]
  def change
    add_column :blogposts, :bookmarks_count, :integer
  end
end
