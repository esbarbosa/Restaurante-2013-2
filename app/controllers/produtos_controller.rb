class ProdutosController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:produto, {}).permit(:descricao, :preco, :quantidade)]
    end

end
