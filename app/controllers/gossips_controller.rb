# Définition de la classe Gossip
class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
    end
    def show
        @gossip = Gossip.find(params[:id])
    end
    def new
        @gossip = Gossip.new
    end
    def create
        @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.all.sample)
        if @gossip.save
            
            flash[:notice] = "enregistrer"
            redirect_to gossip_path(@gossip.id)
            
        else 
            flash[:alert] = "Non enregistrer"
            render :new
        end
    end
end

