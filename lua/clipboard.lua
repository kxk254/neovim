
-- local M = {}

-- M.copy = function(lines, _)
--   local text = table.concat(lines, "\n")
--   local b64 = vim.fn.systemlist("echo -n '" .. text .. "' | base64 -w0")[1]
--   io.write(string.format("\027]52;c;%s\a", b64))
-- end

-- M.paste = function()
--   return {}
-- end

-- M.name = "OSC52"
-- return M

