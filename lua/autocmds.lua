require("nvchad.autocmds")

-- Highlight yanked lines for 200ms
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch", -- highlight group to use
            timeout = 200, -- duration in milliseconds
        })
    end,
})

-- Restore cursor position when reopenging files

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Resize splits automatically when window is resized
vim.api.nvim_create_autocmd("VimResized", {
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})

-- Automatically toggle relative numbers
--
-- vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave" }, {
--     callback = function()
--         vim.wo.relativenumber = true
--     end,
-- })

-- vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter" }, {
--     callback = function()
--         vim.wo.relativenumber = false
--     end,
-- })

-- open terminal in insert mode
vim.api.nvim_create_autocmd("TermOpen", {
    callback = function()
        vim.cmd("startinsert")
        vim.opt.signcolumn = "no"
    end,
})
