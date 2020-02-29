class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    enable_extension :citext
    create_table :products do |t|
      t.citext :title
      t.text :description
      t.string :cover_image
      t.string :affiliate_link
      t.string :coupon_code
      t.integer :create_user_id
      t.integer :update_user_id

      t.timestamps
    end
  end
end
