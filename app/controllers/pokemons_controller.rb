class PokemonsController < ApplicationController

  def new
  end

  def create
    poke = Pokemon.new
    poke[:name] = params[:pokemons][:name]
    poke[:health] = 100
    poke[:level] = 1
    poke[:trainer_id] = current_trainer.id
    if poke.save
      redirect_to "/trainers/" + current_trainer.id.to_s
    else
      redirect_to "/new"
      flash[:error] = poke.errors.full_messages.to_sentence
    end
  end

  def capture
    poke = Pokemon.find(params[:id])
    poke[:trainer_id] = current_trainer.id
    poke.save
    redirect_to "/"
  end

  def damage
    poke = Pokemon.find(params[:id])
    poke[:health] -= 10
    poke.save
    trainerId = poke.trainer_id.to_s
    if poke[:health] <= 0
      poke.destroy
    end
    redirect_to "/trainers/" + trainerId
  end


end
