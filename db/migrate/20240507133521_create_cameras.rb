class CreateCameras < ActiveRecord::Migration[7.1]
  def change
    create_table :cameras do |t|
      t.string :title
      t.text :description
      t.float :price
      t.boolean :available_yn
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
