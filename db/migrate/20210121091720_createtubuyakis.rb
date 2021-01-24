class Createtubuyakis < ActiveRecord::Migration[5.2]
  def change
    create_table :tubuyakis do |t|
      t.text :content
    end
  end
end
