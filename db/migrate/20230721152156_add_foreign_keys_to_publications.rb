class AddForeignKeysToPublications < ActiveRecord::Migration[7.0]
  def change
    add_reference :publications, :user, null: false, foreign_key: true
    add_reference :publications, :cat, null: false, foreign_key: true
  end
end
