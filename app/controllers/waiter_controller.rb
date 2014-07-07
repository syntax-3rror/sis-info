class WaiterController < ApplicationController
  def index
  	@mesas = Mesa.all

  end
  def tomar_comanda_comida

  	@mesa = Mesa.find(params[:id])	

  	# => redirect_to waiter_index_path
  end
  def insertar_comanda_comida
  	
  	if params[:pique]== 'on'
	  	@comanda = ComandaComida.new
	  	@comanda.nombre = 'pique'
	  	@comanda.cantidad = params[:cantidad_pique]
	  	@comanda.llevar = params[:llevar_pique]
	  	@comanda.mesa_id = params[:mesa_id_pique]
	  	@comanda.estado = params[:estado_pique]
	  	@comanda.save
	end
	if params[:picante]== 'on'
		@comanda = ComandaComida.new
	  	@comanda.nombre = 'picante'
	  	@comanda.cantidad = params[:cantidad_picante]
	  	@comanda.llevar = params[:llevar_picante]
	  	@comanda.mesa_id = params[:mesa_id_picante]
	  	@comanda.estado = params[:estado_picante]
	  	@comanda.save
	end
	redirect_to waiter_index_path
  end
end
