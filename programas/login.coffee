require '../stdlib/stdlib.js'

caminho = path_join(mydir(), "dados", "contas.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "        LOGIN DE USUÁRIO      ")
print color("cB", "==============================")

print color("yB", "Digite o seu login e senha abaixo:") 

print color("y", "Login: ")
login = input()
print color("y", "Senha: ")
senha = input_password("*")
senha_hash = hash_sha256(senha)

if not file_exists(caminho)
    print color("rB", "\n Não há contas cadastradas. Por favor, cadastre um usuário primeiro.\n")
    exit()

contas = load_yaml(caminho)

usuario_valido = contas.find (conta) ->
    conta.login == login and conta.senha_hash == senha_hash

bemvindo = path_join(mydir(), "sons", "bemvindo.mp3")
acessonegado = path_join(mydir(), "sons", "acessonegado.mp3")

if usuario_valido
    print color("gB", "\n Login bem-sucedido! Bem-vindo, #{usuario_valido.login}!\n")
    play_sound(bemvindo)
else
    print color("rB", "\n Login ou senha incorretos. Tente novamente.\n")
    play_sound(acessonegado)

print color("c", "==============================")
