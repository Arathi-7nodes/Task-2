class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :start_date
      t.string :completion_date
      t.timestamps
      t.belongs_to :user, index: true
    end
  end
end
