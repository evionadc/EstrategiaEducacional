$valor
$valordetalhespage

Dado("clico em busca {string}") do |typebusca|
    find(:xpath, "//a[.='#{typebusca}']").click
  end
  
  Dado("acesso os cursos do professor {string}") do |professor|
    find(:xpath, "//a[.='#{professor}']").click
  end
  
  Quando("acessar o curso e armazenar o valor do curso na pagina de detalhes") do
    
    element = all(:xpath, "//*[@class='card-prod-title']/../div")[0]
    $valor = element.text.match(/(\d*,\d*)/)[0].gsub(",",".").to_f
    puts $valor
    if element.text.include? "x"
      xVezes =  element.text.match(/(\d*x)/)[0].gsub("x","").to_i
      puts xVezes
      $valor = $valor * xVezes
    end
    puts $valor
    all(:xpath, "//*[@class='card-prod-details']")[0].click
  end
  
  Entao("valido que o valor permanece o mesmo") do
    $valordetalhespage = find(:xpath, "//*[@class='value']").text.gsub(".","").match(/(\d*,\d*)/)[0].gsub(",",".").to_f
    puts $valordetalhespage
    expect($valordetalhespage).to eq $valor
  end
  
  Entao("que a soma do preco parcelado é igual ao total do curso") do
    element = find(:xpath,"//*[@class='cur-details-shopping-installments']")
    valorparcelado = element.text.match(/(\d*,\d*)/)[0].gsub(",",".").to_f
    xVezes =  element.text.match(/(\d*x)/)[0].gsub("x","").to_f
    puts "Valor parcelado de #{xVezes}x de #{valorparcelado}"

    valortotal = valorparcelado * xVezes
    expect(valortotal).to eq $valordetalhespage
  end
  