# IAC-LINUX
SCRIPTS IAC - Infraestructure as Code

Repositório de arquivos de script criados no projeto Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões, Bootcamp LINUX DIO

O arquivo script-infraestrutura.sh contém toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões que serão criadas automaticamente.
    O script foi criado baseado nos requisitos do projeto do bootcamp, sendo eles:
    - o servidor tem que estar sem usuários cadastrados e as pasta publico, adm, ven, sec não devem existir;
    - crie 3 grupos de usuários para os setores adm, ven e sec
    - crie 3 usuários para cada grupo;
    - cada usuários deve ser especificado o grupo que pertence, uma senha provisoria, login shell de cada um, uma pasta home para cada;
    - usuários root deve ter acesso a todas as pastas criadas, e o grupo da pasta refentente ao grupo do setor. Nas pastas, root tem acesso completo, grupo tem acesso completo e outros sem acesso, mas com acesso a pasta publico.


O arquivo script-projeto-web.sh contém o provisionamento de um servidor web para ser criado automaticamente.
    O script foi criado baseado nos requisitos do projeto do bootcamp, sendo eles:
    - servidor deve ter sido recem criado;
    - realize as atuliazações necessarias da maquina;
    - realize a instalação do pacote do apache e do unzip;
    - na pasta /tmp, realize o download do repositorio do https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip;
    - faça a descompactação deste, e copie para a pasta padrão do apache.

O arquivo script-infra-modificada.sh é uma versão minha com modificações que realizei para o processo de criação de usuários.

Obs: Para executar o script, certifique-se de estar logado como usuário root ou relativo.
Anotações sobre informações complementares

- Argumento -crypt passado no parâmetro -p com openssl pode ter sido descontinuado, há necessidade de verificar segundo tópico ecnontrado no fórum do bootcamp, substituido pelo parametro -5
- implementar script com mais requisitos de segurança para criação e utilização pelos usuários, Exemplos: parâmetros -e -f 
