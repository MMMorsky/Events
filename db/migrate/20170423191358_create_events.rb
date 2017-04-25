class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :preview
      t.date :date

      t.timestamps
    end
  end
end
