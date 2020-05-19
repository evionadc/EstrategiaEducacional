Dado("que acessei o site {string}") do |site|
    visit site
    find('#onesignal-popover-cancel-button').click
  end
  
  Quando("realizar uma busca pelo curso {string}") do |curso|

    busca = find(:xpath,"//form/div[@class='search-input']/input")
    busca.send_keys curso
    busca.send_keys :enter
  end
  
  Entao("que aba pacotes esta habilitada") do

   expect(page).to have_xpath("//button[@class='button is-active' and @data-type-button='pacotes']")
    
  end
  
  Entao("valido que a busca retornou somente cursos com {string} no nome") do |curso|
  
    elements = all(:xpath,"//*[@class='card-prod']/h1/a")
    elements.each do |element|
      puts element.text
      expect(element).to have_content curso  
  end
  end
  
  Entao("valido que possivel filtrar por {string}") do |filtro|
    find(:xpath, "//button[@data-type-button='#{filtro}']").click
    expect(page).to have_xpath("//button[@class='button is-active' and @data-type-button='#{filtro}']")
  end
  
