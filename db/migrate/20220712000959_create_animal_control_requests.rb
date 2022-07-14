class CreateAnimalControlRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :description
      t.integer :completed_requests_id
      t.timestamp :created_at
    end
  end
end
