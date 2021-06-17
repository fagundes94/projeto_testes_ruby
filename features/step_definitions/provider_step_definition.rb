

    

Quando('é realizado uma request') do
    @request = Crud.new
    $requesst = @request.create
    puts $requesst.body
end

Quando('é realizado a busca por todos providers') do
    @request = Crud.new
    $requesst = @request.get 
end
  
Então('deve retornar status {int}') do |int|
  expect($requesst.code).to eq (int) 
end