class AddBlogpostCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :blogposts_count, :integer
  end
end
