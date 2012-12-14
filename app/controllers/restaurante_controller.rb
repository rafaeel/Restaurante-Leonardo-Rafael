#conding:utf-8	
class RestauranteController < ApplicationController
	def index
		@restaurantes = Restaurantes.order("nome")
	end
	
	def show
		@restaurante = Restaurantes.find(params[:id])
	end

	def new
		@restaurante = Restaurantes.new
	end
	
	def create
		@restaurante = Restaurantes.new(params[:restaurante])
		if @restaurante.save
			redirect_to(action: "show", id: @restaurante)
		else
			render action: "new"
		end
	end

	def edit
		@restaurante = Restaurantes.find(params[:id])
	end


	def update
    	@restaurante = Restaurantes.find(params[:id])

    	respond_to do |format|
      		if @restaurante.update_attributes(params[:restaurante])
        		format.html { redirect_to @restaurante, notice: 'Restaurante modificado com sucesso.' }
        		format.json { head :no_content }
      		else
        		format.html { render action: "edit" }
        		format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      		end
    	end
  	end


	def destroy
		@restaurante = Restaurantes.find(params[:id])
		@restaurante.destroy
		redirect_to(action: "index")
	end
end

