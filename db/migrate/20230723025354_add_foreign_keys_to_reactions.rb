class AddForeignKeysToReactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :reactions, :user, null: true, foreign_key: true
    add_reference :reactions, :publication, null: true, foreign_key: true
  end
end
