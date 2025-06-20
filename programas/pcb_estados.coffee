require '../stdlib/stdlib.js'

caminho_proc = path_join(mydir(), "dados", "processo.yaml")

limpa()
print color("cB", "==============================")
print color("cB", "       ESTADO DOS PROCESSOS   ")
print color("cB", "==============================\n")

if not file_exists(caminho_proc)
    print color("rB", "Arquivo de processos não encontrado: " + caminho_proc)
    exit()

processos = load_yaml(caminho_proc)

print color("y", "Digite o estado (ready, running, blocked):")
estado = input().strip().lower()

filtrados = processos.filter (processo) -> processo.state.lower() == estado

if len(filtrados) == 0
    print color("rB", "\nNenhum processo com estado '#{estado}'.\n")
    exit()

print color("gB", "\n📋 Processos no estado '#{estado}':\n")

for processo in filtrados
    print "- PID: #{processo.pid} | Nome: #{processo.name} | UID: #{processo.uid} | I/O bound: #{processo.io_bound} | Affinity: #{processo.affinity}"

print color("c", "\n==============================")
