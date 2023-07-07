class CreateGroupOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :group_operations do |t|
      t.references :group, null: false, foreign_key: true
      t.references :operation, null: false, foreign_key: { to_table: :operations, column: "operation_id" }

      t.timestamps
    end
  end
end
