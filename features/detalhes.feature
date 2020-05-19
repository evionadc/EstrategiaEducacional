            #language:pt
            Funcionalidade: Detalhes do curso
            Funcionalidade desenvolvida, para abranger os casos de teste
            da função de busca do site da Estratégia Concursos.

            Esquema do Cenario: Visualizar os detalhes dos cursos
            Dado que acessei o site "https://www.estrategiaconcursos.com.br"
            Quando realizar uma busca pelo curso "<curso>"
            E clicar em detalhes do primeiro resultado da busca
            Entao valido que os detalhes do curso sao exibidos

            Exemplos:
            | curso               |
            | Saude               |
            | OAB                 |
            | Carreiras Jurídicas |
