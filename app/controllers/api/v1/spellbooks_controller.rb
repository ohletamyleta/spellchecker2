class Api::V1::SpellbooksController < ApplicationController

  before_action :find_spellbook, only: [:show, :create, :update, :destroy]

  def show

  end

  def create 
    spellbook = sSellbook.new(spellbook_params)
    if spellbook.save
      render json: SpellbookSerializer.new(spellbook), status: :accepted
    else
      render json: { errors: spellbook.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def update 
    @spellbook.update(spellbook_params)
    if @spellbook.save
      render json: @spellbook, status: :accepted
    else
      render json: { errors: spellbook.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def destroy
    @spellbook.destroy
  end

  private

  def find_spellbook
    @spellbook = Spellbook.find(params[:id])
  end

  def spellbook_params
    params.require(:spellbook).permit(:title, :spell_id)
end
