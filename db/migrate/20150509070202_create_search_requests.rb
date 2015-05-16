class CreateSearchRequests < ActiveRecord::Migration
  def change
    create_table :search_requests do |t|
      t.string :keyword
      t.timestamp :crawl_start_at
      t.timestamp :crawl_end_at

      t.timestamps null: false
    end
  end
end
