vim.opt.number = true         -- Turn on line numbers
vim.opt.relativenumber = true -- Turn on relative line numbers

vim.keymap.set("n", "<F9>", function ()
	vim.cmd("write")

	local file = vim.fn.expand("%:p")
	local name = vim.fn.expand("%:t:r")
	local ext = vim.fn.expand("%:e")
	local dir = vim.fn.expand("%:p:h")

	local cmd = ""

	if ext == "c" then
		cmd = string.format(
			"gcc -Wall -Wextra -Werror -Wshadow -std=c11 -g '%s' -o '%s/%s' && '%s/%s'",
			file, dir, name, dir, name
		)
	elseif ext == "cpp" then
		cmd = string.format(
			"g++ -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror -pedantic -O2 -g '%s' -o '%s/%s' && '%s/%s'",
			file, dir, name, dir, name
		)
	elseif ext == "rs" then
		cmd = string.format(
			"rustc '%s' -o '%s/%s' && '%s/%s'",
			file, dir, name, dir, name
		)
	elseif ext == "py" then
		cmd = string.format(
			"python3 '%s'",
			file
		)
	elseif ext == "js" then
		cmd = string.format(
			"node '%s'",
			file
		)
	else
		vim.notify("Unsupported filetype: " .. ext, vim.log.levels.WARN)
		return
	end

	vim.cmd("split | terminal " .. cmd)
end, { desc = "Build & run current file"})

