#Como rodar o projeto

##Pré-requisitos
- JDK
- [Grails 2.3.11] (http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.3.11.zip)
- [MongoDB 2.6.5] (https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-2.6.5-signed.msi?_ga=1.222113552.968993154.1415828476)

##Configuração
- Configurar JDK
  - Criar variável de ambiente `JAVA_HOME` e popule com o caminho da JDK instalada
  - Edite a variável de ambiente PATH e adicione `%JAVA_HOME%/bin`

- Configurar Grails
  - Crie a variável de ambiente `GRAILS_HOME` e popule com o caminho onde descompactou o Grails
  - Edite a variável de ambiente `PATH` e adicione `%GRAILS_HOME%/bin`

- Instale o MongoDB

##Rodando
- Inicie o MongoDB
Pela linha de comando acesse a pasta `bin` dentro da pasta onde o Mongo está instalado, execute:
```shell
mongod.exe --dbpath="<caminho onde ficaram os arquivos de dados>"
```

Pela linha de comando acesse a pasta do projeto e execute:
```shell
grails run-app
```
