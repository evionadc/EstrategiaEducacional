Quando("clicar em detalhes do primeiro resultado da busca") do
    all(:xpath,"//*[@class='card-prod']/a[.='Detalhes']")[0].click
    
  end
  
  Entao("valido que os detalhes do curso sao exibidos") do
    expect(page).to have_content "Certificado"
    expect(page).to have_content "Cronograma"
    expect(page).to have_content "Carga Horária"

  end