return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#fdf6ee",
                bg_dark = "#fdf6ee",
                bg_highlight = "#fdf6ee",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#22211d",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#24201d",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#fdf6ee",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#df2b0d",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#e03c20",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#8a6c3e",
                -- green: Comments, strings, success states, git additions
                green = "#29472a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#3d6b52",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#5e8e28",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#28473f",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#28463c",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Keep line numbers visible (comment color is set to bg to remove highlights)
            vim.api.nvim_set_hl(0, "LineNr", { fg = "#a09080" })
            vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#a09080" })
            vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#a09080" })
            vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#7a6550" })

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
