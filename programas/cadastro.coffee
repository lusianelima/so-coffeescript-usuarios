require '../stdlib/stdlib.js'

caminho = path_join(mydir(), "dados", "contas.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "      CADASTRO DE USUÁRIO     ")
print color("cB", "==============================")

print color("yB", "Digite as informações de acesso abaixo:")

print color("v", "Login:")
login = input(color("y", "Login: "))
print color("v", "Senha:")
senha = input_password("*")
senha_hash = hash_sha256(senha)

contas = []
if file_exists(caminho)
  contas = load_yaml(caminho)

ja_existe = contas.some (conta) -> conta.login == login

if ja_existe
  print color("rB", "\n Este login já está em uso. Tente outro.\n")
else
  contas.push { login: login, senha_hash: senha_hash }
  print("Salvando...")
  save_yaml(caminho, contas)
  print color("gB", "\n Usuário cadastrado com sucesso!\n")

print color("c", "==============================")


