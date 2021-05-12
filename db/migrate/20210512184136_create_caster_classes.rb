class CreateCasterClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :caster_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
