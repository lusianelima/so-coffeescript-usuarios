require '../stdlib/stdlib.js'

caminho_hd = path_join(mydir(), "dados", "hd.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "     ESPAÇO USADO PELO USUÁRIO")
print color("cB", "==============================\n")

if not file_exists(caminho_hd)
  print color("rB", "\nArquivo hd.yaml não encontrado na pasta dados/.\n")
  exit()

arquivos = load_yaml(caminho_hd)

print color("y", "Digite o nome do usuário: ")
usuario = input().strip().lower()

meus_arquivos = arquivos.filter (arquivo) ->
  arquivo.usuario.lower() == usuario

if len(meus_arquivos) == 0
  print color("rB", "\nUsuário não possui arquivos registrados.\n")
  exit()

print color("gB", "\nArquivos encontrados:")
total = 0

for arq in meus_arquivos
  print "📄 " + arq.arquivo + " — " + arq.tamanho + " MB"
  total += arq.tamanho

print color("yB", "\nTotal de espaço ocupado: #{total} MB\n")
print color("c", "==============================")
