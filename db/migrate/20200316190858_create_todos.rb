class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.column :todo_text, :text
      t.column :due_date, :date
      t.column :completed, :bool
    end
  end
end
