class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.text :subject
      t.references :specialty, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
