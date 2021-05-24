class Api::V1::SpellsController < ApplicationController

  before_action :set_spell, only: [:update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    spells = Spell.all 
    render json: SpellSerializer.new(spells)
  end

  def create
    spell = Spell.new(spell_params)
    if spell.save
      render json: SpellSerializer.new(spell), status: :accepted
    else
      render json: { errors: spell.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @spell.update(spell_params)
    if @spell.save
      render json: @spell, status: :accepted
    else
      render json: { errors: weapon.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @spell.destroy 
  end


  private

    def spell_params
      params.require(:spell).permit(:name, :desc, :higher_level, :range, :components, :material, :ritual, :duration, :concentration, :casting_time, :level, :level_int, :school, :dnd_class, :archetype, :circles)
    end
    

    def set_spell
      @spell = Spell.find_by(id: params[:id])
    end
  
end
