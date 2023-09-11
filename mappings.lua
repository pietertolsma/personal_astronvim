-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        require("astronvim.utils.buffer").close(bufnr)
                    end)
            end,
            desc = "Pick to close"
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>vs"] = {
            ":VenvSelect<cr>",
            desc = "Select a Virtual Environment"
        },
        ["<leader>vc"] = {
            ":VenvSelectCached<cr>",
            desc = "Select the most recent Virtual Environment"
        },
        ["<leader>b"] = {name = "Buffers"},
        ["<leader>v"] = {name = "🌎 Virtual Environments"},
        ["<leader>c"] = {
            function()
                local bufs = vim.fn.getbufinfo {buflisted = true}
                require("astronvim.utils.buffer").close(0)
                if require("astronvim.utils").is_available "alpha-nvim" and
                    not bufs[2] then require("alpha").start(true) end
            end,
            desc = "Close buffer"
        },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}
