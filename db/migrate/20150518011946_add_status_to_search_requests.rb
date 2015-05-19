class AddStatusToSearchRequests < ActiveRecord::Migration
  def change
    add_column :search_requests, :status, :integer,  default: 0
  end
end
