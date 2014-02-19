class PedidosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:pedido, {}).permit(:dataPedido, :situacaoPedido, :cliente_id)]
    end
end
