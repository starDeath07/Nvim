-- Only run on Windows
if vim.fn.has("win32") == 1 then
    -- Set PowerShell as the default shell
    vim.o.shell = "pwsh"

    -- Recommended flags for PowerShell in Neovim
    vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.o.shellquote = ""
    vim.o.shellxquote = ""

    -- Optional: print confirmation
    vim.api.nvim_create_autocmd("TermOpen", {
        callback = function()
            print("Neovim is now using PowerShell (pwsh) as the default shell!")
        end,
    })
end
