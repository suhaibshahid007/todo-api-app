class AddTodoIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :todo, foreign_key: true
  end
end
