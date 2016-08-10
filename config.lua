return {
	bot_api_key = io.open("./data/key","r"):read(),
	admin = 0, -- Tu id reemplazando "0"
	admin2 = 0, -- si quieres añadir un segundo administrador reemplaza "0" por su id
	log_chat = -1001061708674,
    channel = '@canal', --ingresa tu canal aquí
	languages = 'lenguajes.lua',

	plugins = {
		'onmessage.lua',
		'all.lua',
		'uptime.lua',
		'gbanner.lua',
		'bash.lua',
		'error.lua',
		'caracola.lua',
		'killer.lua',
		'saludador.lua',
		'say.lua',
		'sendfiles.lua',
		'compresor.lua',
		'repetir.lua',
		'sera.lua',
		'banhammer.lua',
		'mod.lua',
		'users.lua',
		'help.lua',
		'rules.lua',
		'settings.lua',
		'about.lua',
		'flag.lua',
		'service.lua',
		'links.lua',
		'warn.lua',
		'extra.lua',
		'setlang.lua',
		'floodmanager.lua',
		'mediasettings.lua',
		'admin.lua'
	},
	
	available_languages = {
		'es'
	},
	chat_data = {
		'mod',
		'owner',
		'settings',
		'about',
		'rules',
		'flood',
		'extra',
		'reportblocked',
		'media',
		'banned',
		'welcome'
	},
}