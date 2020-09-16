class AddColumnsToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :title, :string
    add_column :feeds, :content, :string
  end
end
