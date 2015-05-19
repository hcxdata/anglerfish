class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.belongs_to :request, index: true
      t.string :title
      t.string :description
      t.string :url
      t.string :keyword
      t.string :engine

      t.timestamp :crawl_at

      t.timestamps null: false
    end
  end
end
