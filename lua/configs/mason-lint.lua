-- local lint = package.loaded["lint"]
--
-- -- List of linters to ignore during install
-- local ignore_install = {}
--
-- -- Helper function to find if value is in table.
-- local function table_contains(table, value)
--     for _, v in ipairs(table) do
--         if v == value then
--             return true
--         end
--     end
--     return false
-- end
--
-- -- Build a list of linters to install minus the ignored list.
-- local all_linters = {}
-- for _, v in pairs(lint.linters_by_ft) do
--     for _, linter in ipairs(v) do
--         if not table_contains(ignore_install, linter) then
--             table.insert(all_linters, linter)
--         end
--     end
-- end
--
-- require("mason-nvim-lint").setup({
--     ensure_installed = all_linters,
--     automatic_installation = false,
-- })
--
--

local lint = require("lint") -- use require instead of package.loaded

-- List of linters to ignore during install
local ignore_install = {}

-- Helper function to check if value exists in table
local function table_contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end

-- Collect all linters from linters_by_ft
local all_linters = {}
for _, v in pairs(lint.linters_by_ft) do
    for _, linter in ipairs(v) do
        if not table_contains(ignore_install, linter) then
            table.insert(all_linters, linter)
        end
    end
end

-- Remove duplicates
local seen = {}
local unique_linters = {}
for _, linter in ipairs(all_linters) do
    if not seen[linter] then
        table.insert(unique_linters, linter)
        seen[linter] = true
    end
end
all_linters = unique_linters

-- Setup mason-nvim-lint
require("mason-nvim-lint").setup({
    ensure_installed = all_linters,
    automatic_installation = false,
})
