local lint = require("lint")

-- Define Ruff as a custom linter
lint.linters.ruff = {
    cmd = "ruff", -- command to run
    stdin = false, -- Ruff reads files, not stdin
    args = { "--stdin-filename", "%filepath", "-" },
    stream = "stdout",
    ignore_exitcode = true,
    parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", { source = "ruff" }),
}

-- Assign linters by filetype
lint.linters_by_ft = {
    lua = {},
    python = { "ruff" },
}

-- Customize luacheck globals safely
lint.linters.luacheck.args = {
    unpack(lint.linters.luacheck.args or {}),
    "--globals",
    "love",
    "vim",
}

-- Auto-lint on buffer events
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        -- Only try lint if the filetype has a linter
        local ft = vim.bo.filetype
        if lint.linters_by_ft[ft] and #lint.linters_by_ft[ft] > 0 then
            lint.try_lint()
        end
    end,
})
