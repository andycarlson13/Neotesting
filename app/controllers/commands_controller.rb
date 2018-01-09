class CommandsController < ApplicationController

  def index

    @cords = ::Cord::Cord.all
  end

  def create
    npx = ::Cord::Cord.find(params["cord"]["id"]).neo_pixel

    case params[:selected_command]
    when "all_on"
      c = params["led_color"]
      puts c
    when "all_off"
      npx.all_off
    when "pattern"
    when "rainbow"
    when "snake"
      sc = params["snake_color"]
      puts sc
    when "patterned_snake"
    when "christmas"
    when "moving_dots" 
    when "lightshow"
      npx.lightshow
    when "middle_pulse"
    when "game_of_life"
    else
    end
  end

  def new
  end


  private
end
