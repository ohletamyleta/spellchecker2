class Spellbook < ApplicationRecord

  has_many :spells
  
  validates :title, uniqueness: true
end
