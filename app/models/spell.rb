class Spell < ApplicationRecord

  validates :name, :desc, :dnd_class, :level, presence: true
  
end
