class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end
    
    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params)
        
        redirect_to artist_path(@artist)
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy

        redirect_to artists_path
    end

    def artist_params
        params.require(:artist).permit(:name, :age, :bio) 
    end


end
