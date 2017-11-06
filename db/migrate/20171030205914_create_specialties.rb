class CreateSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
