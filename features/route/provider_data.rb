require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'


class Crud


    include HTTParty
    base_uri 'https://controleestoque-backend.herokuapp.com/api/v1'

    def create
        name = Faker::Name.name
        cnpj = Faker::Number.number(digits: 14)
        $body = {name: name, cnpj: cnpj.to_s}.to_json
  
        $headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
            }

        self.class.post('/providers', body: $body, headers: $headers) 
    end

    def get

        $headers = {
            'accept' => 'application/json'
             }
        self.class.get('/providers', headers: $headers) 
    end
end