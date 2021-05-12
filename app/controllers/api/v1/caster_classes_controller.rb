class Api::V1::CasterClassesController < ApplicationController

  def index
    caster_classes = CasterClass.all 
    render json: CasterClassSerializer.new(caster_classes)
  end
  
end
