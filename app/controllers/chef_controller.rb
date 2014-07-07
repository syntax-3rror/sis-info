class ChefController < ApplicationController
	def index
		@comandas = ComandaComida.where(:estado => 'en proceso')
	end
	def edit
		@comandas = ComandaComida.find(params[:id])
		@comandas.estado = "listo"
		@comandas.save
		redirect_to chef_index_path
	end
end
