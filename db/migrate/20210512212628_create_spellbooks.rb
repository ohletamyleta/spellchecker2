class CreateSpellbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :spellbooks do |t|
      t.string :title

      t.timestamps
    end
  end
end
