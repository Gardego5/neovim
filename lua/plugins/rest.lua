return {
    -- {
    --     "rest-nvim/rest.nvim",
    --     dependencies = {
    --         { "nvim-treesitter/nvim-treesitter" },
    --     },
    --     keys = {
    --         { "<leader>rr", "<cmd>Rest run<cr>", desc = "[R]un a [R]est request" },
    --     },
    -- },

    {
        "jellydn/hurl.nvim",
        branch = "canary",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            { -- Optional, for markdown rendering with render-markdown.nvim
                "MeanderingProgrammer/render-markdown.nvim",
                opts = {
                    file_types = { "markdown" },
                },
                ft = { "markdown" },
            },
        },
        ft = "hurl",
        opts = {
            debug = false,
            show_notification = true,
            mode = "popup", -- "popup" or "split"
            env_file = { ".env" },
            formatters = {
                json = { "jq" },
                html = { "prettier", "--parser", "html" },
                xml = { "tidy", "-xml", "-i", "-q" },
            },
            mappings = {
                close = "q",
                next_panel = "L",
                prev_panel = "H",
            },
        },
        keys = {
            -- Run API request
            { "<leader>A", "<cmd>HurlRunner<CR>", desc = "Run All requests" },
            { "<leader>a", "<cmd>HurlRunnerAt<CR>", desc = "Run Api request" },
            { "<leader>te", "<cmd>HurlRunnerToEntry<CR>", desc = "Run Api request to entry" },
            { "<leader>tE", "<cmd>HurlRunnerToEnd<CR>", desc = "Run Api request from current entry to end" },
            { "<leader>tm", "<cmd>HurlToggleMode<CR>", desc = "Hurl Toggle Mode" },
            { "<leader>tv", "<cmd>HurlVerbose<CR>", desc = "Run Api in verbose mode" },
            { "<leader>tV", "<cmd>HurlVeryVerbose<CR>", desc = "Run Api in very verbose mode" },
            -- Run Hurl request in visual mode
            { "<leader>h", ":HurlRunner<CR>", desc = "Hurl Runner", mode = "v" },
        },
    },
}
