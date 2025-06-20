require '../stdlib/stdlib.js'

caminho_proc = path_join(mydir(), "dados", "processo.yaml")
caminho_users = path_join(mydir(), "dados", "usuarios.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "   PROCESSOS POR USUÁRIO (UID)")
print color("cB", "==============================\n")

if not file_exists(caminho_proc) or not file_exists(caminho_users)
  print color("rB", "\n❌ Arquivos processos.yaml ou usuarios.yaml não encontrados.\n")
  exit()

processos = load_yaml(caminho_proc)
usuarios = load_yaml(caminho_users)

mapa_usuarios = {}
for u in usuarios
  mapa_usuarios[u.uid] = u.login

print color("yB", "\nLista de Processos e seus usuários:\n")
for p in processos
  login = mapa_usuarios[p.uid] or "desconhecido"
  print "- PID: #{p.pid} | Nome: #{p.name} | UID: #{p.uid} | Usuário: #{login}"

print color("gB", "\nProcessos por usuário:\n")
for u in usuarios
  print color("c", "Usuário: #{u.login} (UID: #{u.uid})")
  achados = processos.filter (p) -> p.uid == u.uid
  if len(achados) == 0
    print "  - Nenhum processo."
  else
    for p in achados
      print "  - #{p.name} (PID #{p.pid})"
  print ""
