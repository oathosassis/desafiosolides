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

$ cd desafiosolides

- Instale os pacotes necessários

yarn install --check-files (este comando único foi o suficiente em meu teste)

yarn add bootstrap jquery popper.js

yarn add inputmask

yarn add @fortawesome/fontawesome-free

$ bundle install --without production

- Crie o Banco de Dados e vamos nessa!

$ rails server

Dica!
Após o cadastro de um estagiário, acesse ./db/seeds.rb e altere o parâmetro 'estagiario_id'.
Substitua a mensagem 'COLOQUE AQUI O ID' pelo id referente e propague o Banco de Dados.

$ rails db:seed

- Algumas imagens do WebApp

https://ibb.co/xhGpbWG

https://ibb.co/8DgxRvH

https://ibb.co/Ydz85Xz

https://ibb.co/WWrZDrb

https://ibb.co/Y81wkN6