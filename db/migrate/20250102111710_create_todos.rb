class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.references :list, foreign_key: true
      t.text :name, null: false
      t.datetime :limit_date
      t.boolean :is_finished, null: false, default: false

      t.timestamps
    end
  end
end
