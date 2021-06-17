#language:pt


Funcionalidade: Deve ser capaz de validar um provider

    Cenário: Inserindo um provider com sucesso 
        Quando é realizado uma request
        Então deve retornar status 201

    # Cenário: Realizando uma busca de todos os providers com sucesso
    #     Quando é realizado a busca por todos providers 
    #     Então deve retornar status 200

    # Cenário: Consultando os provuders com sucesso
    #     Quando é realizado uma consulta na lista de providers 
    #     Então deve dar tudo certo
