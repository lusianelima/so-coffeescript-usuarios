require '../stdlib/stdlib.js'

caminho_config = path_join(mydir(), "dados", "lang.config")

limpa()
print color("cB", "==============================")
print color("cB", "   MENSAGEM INTERNACIONALIZADA")
print color("cB", "==============================\n")

if not file_exists(caminho_config)
  print color("rB", "\n Arquivo lang.config não encontrado na pasta dados/.\n")
  exit()

idioma = load(caminho_config).strip().lower()

mensagens =
    pt: "Oi, tudo bem?"
    en: "Hi, how are you?"
    es: "Hola, ¿todo bien?"
    fr: "Salut, ça va ?"
    de: "Hallo, alles gut?"
    it: "Ciao, come va?"
    ja: "こんにちは、元気ですか？"
    zh: "你好，你好吗？"
    ru: "Привет, как дела?"
    ar: "مرحبا، كيف حالك؟"
    hi: "नमस्ते, आप कैसे हैं?"
    ko: "안녕하세요, 잘 지내세요?"
    

if idioma of mensagens
  print color("gB", "\n Mensagem: " + mensagens[idioma] + "\n")
else
  print color("rB", "\n Idioma não suportado: #{idioma}\n")

print color("c", "==============================")
