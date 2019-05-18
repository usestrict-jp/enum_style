class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|

      t.string :title, index: true
      t.integer :publish, limit: 1, default: 0

      t.timestamps
    end
  end
end
