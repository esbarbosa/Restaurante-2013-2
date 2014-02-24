class ContasController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:conta, {}).permit(:dataAbertura, :valorTotal, :status, :dataFechamento , :pedido_id)]
    end
end
