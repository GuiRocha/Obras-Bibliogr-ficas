# Como fiz o teste?
Realizei o teste usando o ruby '2.7.0', Rails API '6.0.3', SQLite3 e o Postman.

# Rodar com Rails API e Postman
- Fazer o clone do projeto com Git Clone
- Para rodar o projeto é necessário fazer os seguintes passos:
- bundler install -> rails db:create -> rails db:migrate -> rails s
- Abrir o sotware POSTMAN
- Preencher o endereço com http://localhost:3000/autors
- Colocar no modo POST
- Preencher o Header com o Key: Content-Type, Value: application/json
- Preencher o body com um Hash da seguinte maneira(Nomes exemplo):
- {
    "nome_contador": 3,
    "nome": [
        "guilherme rocha",
        "Maria eduarda Rocha Ramos",
        "Carlos Augusto Rocha silva"
    ]
  }
 - nome_contador: Seria o número de nomes que vão ser inseridos
 - nome: Serão os nomes que serão inseridos
 - obs: é necessario que o número de nomes seja igual a quantidade de nomes a serem inseridos