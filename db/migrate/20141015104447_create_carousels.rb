class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.string :caption
      t.string :image
      t.boolean :visible
      t.boolean :promotion

      t.timestamps
    end
  end
end
