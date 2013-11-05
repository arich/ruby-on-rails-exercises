class AddBrandRelationships < ActiveRecord::Migration
  def change
  	add_reference :orders, :frame
  	add_reference :frames, :brand
  	remove_column :orders, :brand_id
  end

end
