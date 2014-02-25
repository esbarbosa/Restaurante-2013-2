class ItempedidosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:itempedido, {}).permit(:subtotal, :pedido_id, :produto_id)]
    end
end
