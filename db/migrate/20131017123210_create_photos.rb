class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url

      t.references :user
      t.references :album
    end
  end
end
