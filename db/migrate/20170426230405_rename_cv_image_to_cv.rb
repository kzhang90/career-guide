class RenameCvImageToCv < ActiveRecord::Migration[5.0]
  def change
    rename_column :resumes, :cv_image, :cv
  end
end
