return {
	admin = 0, -- Tu id reemplazando "0"
	
	bot_api_key = io.open("./data/key","r"):read(),
	log_chat = -1001061708674,
	channel = '@canal', --ingresa tu canal aquí
	languages = 'lenguajes.lua',
	-- Aquí puedes añadir más administradores globales terminando su id con ,
	owners = {
		0,
		},

	plugins = {
		'onmessage.lua',
		'calculator.lua',
		'plugins.lua',
		'all.lua',
		'edit.lua',
		'uptime.lua',
		'gbanner.lua',
		'bash.lua',
		'error.lua',
		'caracola.lua',
		'antispam.lua',
		'spam.lua',
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
