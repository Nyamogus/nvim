return {
	"AndrewRadev/switch.vim",
	keys = {
		{ "gs", nil, { "n", "v" }, desc = "Switch" },
	},
	lazy = false,
	config = function()
		local fk = [=[\<\(\l\)\(\l\+\(\u\l\+\)\+\)\>]=]
		local sk = [=[\<\(\u\l\+\)\(\u\l\+\)\+\>]=]
		local tk = [=[\<\(\l\+\)\(_\l\+\)\+\>]=]
		local fok = [=[\<\(\u\+\)\(_\u\+\)\+\>]=]
		local folk = [=[\<\(\l\+\)\(\-\l\+\)\+\>]=]
		local fik = [=[\<\(\l\+\)\(\.\l\+\)\+\>]=]
		vim.g["switch_custom_definitions"] = {
			vim.fn["switch#NormalizedCaseWords"]({
				"sunday",
				"monday",
				"tuesday",
				"wednesday",
				"thursday",
				"friday",
				"saturday",
			}),
			vim.fn["switch#NormalizedCase"]({ "<", ">" }),
			vim.fn["switch#NormalizedCase"]({ "yes", "no" }),
			vim.fn["switch#NormalizedCase"]({ "on", "off" }),
			vim.fn["switch#NormalizedCase"]({ "left", "right" }),
			vim.fn["switch#NormalizedCase"]({ "up", "down" }),
			vim.fn["switch#NormalizedCase"]({ "enable", "disable" }),
			vim.fn["switch#NormalizedCase"]({ "Always", "Never" }),
			vim.fn["switch#NormalizedCase"]({ "public", "private" }),
			vim.fn["switch#NormalizedCase"]({ "let", "let mut" }),
			{ "==", "!=", "~=" },
			{
				[fk] = [=[\=toupper(submatch(1)) . submatch(2)]=],
				[sk] = [=[\=tolower(substitute(submatch(0), '\(\l\)\(\u\)', '\1_\2', 'g'))]=],
				[tk] = [=[\U\0]=],
				[fok] = [=[\=tolower(substitute(submatch(0), '_', '-', 'g'))]=],
				[folk] = [=[\=substitute(submatch(0), '-', '.', 'g')]=],
				[fik] = [=[\=substitute(submatch(0), '\.\(\l\)', '\u\1', 'g')]=],
			},
		}
	end,
	init = function() end,
}
