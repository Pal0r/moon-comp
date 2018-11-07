class CreateTicks < ActiveRecord::Migration[5.2]
  def change
    create_table :ticks do |t|
      t.string :name
      t.date :send_date
      t.references :climber, foreign_key: true
      t.string :grade

      t.timestamps
    end
  end
end
