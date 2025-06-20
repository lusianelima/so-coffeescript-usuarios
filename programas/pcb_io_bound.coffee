require '../stdlib/stdlib.js'

caminho_proc = path_join(mydir(), "dados", "processo.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "      PROCESSOS I/O BOUND     ")
print color("cB", "==============================\n")

if not file_exists(caminho_proc)
    print color("rB", "Arquivo de processos não encontrado: " + caminho_proc)
    exit()

processos = load_yaml(caminho_proc)

io_processos = processos.filter (processo) -> processo.io_bound == true

if len(io_processos) == 0
    print color("rB", "\nNenhum processo I/O bound encontrado.\n")
    exit()

print color("gB", "\n📋 Processos I/O bound:\n")

for processo in io_processos
  print "- PID: #{processo.pid} | Nome: #{processo.name}"

print color("c", "\n==============================")