class CreateSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :specs do |t|
      t.references :product, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
