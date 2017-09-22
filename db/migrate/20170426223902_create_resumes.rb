class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.text :biography
      t.string :profile_pic
      t.string :cv_image

      t.timestamps
    end
  end
end
