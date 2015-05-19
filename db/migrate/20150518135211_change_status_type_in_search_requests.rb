class ChangeStatusTypeInSearchRequests < ActiveRecord::Migration
  def change
    change_column :search_requests, :status, :string
  end
end
