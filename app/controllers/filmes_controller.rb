class FilmesController < ApplicationController
	def new
		@filme = Filme.new
		@filmes = Filme.all
	end
	
	def create
		@filme = Filme.new(params[:filme])
		
		if @filme.save
			redirect_to new_filme_path
		else
			respond_to do |format|
				format.html { render action: "new" }
        		format.json { render json: @filme.errors, status: :unprocessable_entity }
      		end
		end
	end


	def destroy
		@filme = Filme.find(params[:id])
		
		 @filme.destroy
			redirect_to filme_path
		
	end

	def index
		@filmes = Filme.all

	end

	def show
		@filmes = Filme.all
		@cdgo = params[:id]
	end
				
end
