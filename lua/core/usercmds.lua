-- run code in neovim
local function CompileRun()
  -- 保存当前缓冲区
  vim.cmd("write")

  local ft = vim.bo.filetype
  local fname = vim.fn.expand("%")
  local fname_noext = vim.fn.expand("%:r")

  if ft == "c" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("res -5")
    -- 打开终端执行编译和运行
    vim.cmd("term gcc " .. fname .. " -o " .. fname_noext .. " && time ./" .. fname_noext)
  elseif ft == "cpp" then
    vim.cmd("set splitbelow")
    vim.cmd("!" .. "g++ -std=c++20 " .. fname .. " -Wall -o " .. fname_noext)
    vim.cmd("sp")
    vim.cmd("res -5")
    vim.cmd("term time ./" .. fname_noext)
  elseif ft == "cs" then
    vim.cmd("set splitbelow")
    vim.cmd("silent! !" .. "mcs " .. fname)
    vim.cmd("sp")
    vim.cmd("res -5")
    vim.cmd("term mono " .. fname_noext .. ".exe")
  elseif ft == "java" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("res -5")
    vim.cmd("term javac " .. fname .. " && time java " .. fname_noext)
  elseif ft == "sh" then
    vim.cmd("!" .. "time bash " .. fname)
  elseif ft == "python" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("term python3 " .. fname)
	elseif ft == 'lua' then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("term time lua " .. fname)
  elseif ft == "html" then
    local browser = vim.g.mkdp_browser or "firefox"
    vim.cmd("silent! !" .. browser .. " " .. fname .. " &")
  elseif ft == "markdown" then
    vim.cmd("InstantMarkdownPreview")
  elseif ft == "tex" then
    vim.cmd("silent! VimtexStop")
    vim.cmd("silent! VimtexCompile")
  elseif ft == "dart" then
    local device = vim.g.flutter_default_device or ""
    local args = vim.g.flutter_run_args or ""
    vim.cmd("CocCommand flutter.run -d " .. device .. " " .. args)
    vim.cmd("silent! CocCommand flutter.dev.openDevLog")
  elseif ft == "javascript" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("term export DEBUG=\"INFO,ERROR,WARNING\"; node --trace-warnings .")
  elseif ft == "racket" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("res -5")
    vim.cmd("term racket " .. fname)
  elseif ft == "go" then
    vim.cmd("set splitbelow")
    vim.cmd("sp")
    vim.cmd("term go run .")
  else
    print("Unsupported filetype: " .. ft)
  end
end

vim.api.nvim_create_user_command("CompileRun", CompileRun, {})
