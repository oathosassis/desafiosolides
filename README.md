# README
DESAFIO SOLIDES - Controle de Ponto

Importante!
A instalação do Ruby, Rails e suas dependências foram baseadas no guia abaixo:
https://gorails.com/setup/ubuntu/18.04
Obs: rbenv foi o método utilizado na instalação do Ruby.

Versões: 
- Ruby > 2.7.0
- Rails > 6.0.2.1

Para iniciar o WebApp siga as seguintes instruções:
- Clone o repositório 
$ git clone https://github.com/oathosassis/desafiosolides.git

- Acesse o novo diretório
$ cd desafio_solides

- Instale os pacotes necessários
yarn add bootstrap jquery popper.js
yarn add inputmask
yarn add @fortawesome/fontawesome-free
$ bundle install --without production

- Migre o Banco de Dados
$ rails db:migrate

- Propague o Banco de Dados
$ rails db:seed

- e vamos nessa!
$ rails server