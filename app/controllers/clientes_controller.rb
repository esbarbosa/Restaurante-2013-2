class ClientesController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:cliente, {}).permit(:nomeCliente, :telefone, :cpf)]
    end

end
