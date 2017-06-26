class CreateEditSightings < ActiveRecord::Migration[5.1]
  def change
    change_table :sightings do |t|
      t.column :region, :string
    end

    remove_column :sightings, :region_id
  end
end
