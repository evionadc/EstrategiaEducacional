#language:pt
@only
Funcionalidade: Verificar precificacao dos cursos

Cenario: Preco parcelado

Dado que acessei o site "https://www.estrategiaconcursos.com.br"
E clico em busca "Por professor"
E acesso os cursos do professor "Ena Loiola"
Quando acessar o curso e armazenar o valor do curso na pagina de detalhes
Entao valido que o valor permanece o mesmo
E que a soma do preco parcelado é igual ao total do curso