require '../stdlib/stdlib.js'

caminho = path_join(mydir(), "dados", "contas.yaml")

som_cassiane = path_join(mydir(), "sons", "paracassiane.mp3")
som_joana = path_join(mydir(), "sons", "parajoana.mp3")
som_antonieta = path_join(mydir(), "sons", "paraantonieta.mp3")
som_outros = path_join(mydir(), "sons", "outros.mp3")

limpa()
print color("cB", "==============================")
print color("cB", "     SORTEIO DE USUÁRIOS      ")
print color("cB", "==============================\n")

if not file_exists(caminho)
    print color("rB", "Nenhum usuário cadastrado. Cadastre usuários primeiro.\n")
    exit()

contas = load_yaml(caminho)

if len(contas) == 0
    print color("rB", "Nenhum usuário cadastrado. Cadastre usuários primeiro.\n")
    exit()

indices = rand(0, len(contas) - 1)
sorteado = contas[indices].login

print color("yB", "\n O usuário sorteado foi: ") + color("gB", sorteado.upper())
print color("g", "\nParabéns! Você ganhou um prêmio!\n")

if sorteado.lower() == "cassiane"
    play_sound(som_cassiane)
else if sorteado.lower() == "joana"
    play_sound(som_joana)
else if sorteado.lower() == "antonieta"
    play_sound(som_antonieta)
else
    play_sound(som_outros)


print color("c", "==============================")