require './stdlib.js'

limpa()
print color("cB", "==============================")
print color("cB", "      CADASTRO DE USUÁRIO     ")
print color("cB", "==============================")

# Garante espaço visual
print ""

# Força a mensagem a aparecer antes dos inputs
print color("yB", "Digite as informações de acesso abaixo:")
print ""  # espaço visual

# Entradas
print color("v", "Login:")
login = input(color("y", "Login: "))
print color("v", "Senha:")
senha = input_password("*")
senha_hash = hash_sha256(senha)

# Carrega ou inicia contas.yaml
contas = []
if file_exists("contas.yaml")
  contas = load_yaml("contas.yaml")

# Verifica se login já existe
ja_existe = contas.some (conta) -> conta.login == login

if ja_existe
  print color("rB", "\n Este login já está em uso. Tente outro.\n")
else
  contas.push { login: login, senha_hash: senha_hash }
  save_yaml("contas.yaml", contas)
  print color("gB", "\n Usuário cadastrado com sucesso!\n")

print color("c", "==============================")


