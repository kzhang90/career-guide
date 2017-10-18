class DropAdviceTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :advices
  end
end
