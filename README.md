Dicas build dockerfile

FROM = escolher o ambiente de execução, nesse caso o linux alpine com nodejs
WORKDIR = diretorio de trabalho, ponto inicial a onde vão ser executados os comandos COPY/ADD
COPY = copiar diretorio/arquivos para um diretorio destino (COPY origem destino)
ADD = utilizado para adicionar arquivos a partir de url's ou de arquivos zip, esse comando ele descompacta tbm (ADD test.zip .)
RUN = comandos executados durante o build da imagem (RUN addgroup dev && adduser -S edson -G dev)
CMD = comandos executados depois da construção da imagem
EXPOSE = expor a aplicação através de uma porta
USER = utilizar um usuário linux para executar os comandos (USER edson)

executar o container em modo interativo -it

-it = interativo
apk = instalador docker, equivalente ao apt do linux
-d = rodar em segundo plano
-p = port

docker run -it app .

docker run -dp 3655:3655 app
