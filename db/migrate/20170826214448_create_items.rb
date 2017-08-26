class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.boolean :read, default: false
      t.references :feed, foreign_key: true

      t.timestamps
    end
  end
end
