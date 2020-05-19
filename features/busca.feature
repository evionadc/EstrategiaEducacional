            #language:pt

            Funcionalidade: Busca
            Funcionalidade desenvolvida, para abranger os casos de teste
            da funcao de busca do site da Estrategia Concursos.

            Contexto: Acessar a busca do curso
            Dado que acessei o site "https://www.estrategiaconcursos.com.br"
            Quando realizar uma busca pelo curso "STF"

            Cenario: Busca de cursos
            Entao que aba pacotes esta habilitada
            E valido que a busca retornou somente cursos com "STF" no nome

            Esquema do Cenario: Filtragem de Cursos
            Entao valido que possivel filtrar por "<filtro>"
            Exemplos:
            | filtro      |
            | assinaturas |
            | pacotes     |
            | cursos      |