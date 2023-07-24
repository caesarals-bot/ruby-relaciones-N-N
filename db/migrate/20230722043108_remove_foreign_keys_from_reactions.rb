class RemoveForeignKeysFromReactions < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reactions, :user, foreign_key: true
    remove_reference :reactions, :publication, foreign_key: true
    remove_reference :reactions, :comment, foreign_key: true
  end
end
