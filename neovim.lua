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
                bg = "#181f1c",
                bg_dark = "#181f1c",
                bg_highlight = "#cbcecd",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f3f3f3",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#e7e5e7",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#cbcecd",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#8f9995",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#bfc5c3",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#9aa39f",
                -- green: Comments, strings, success states, git additions
                green = "#8a9590",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#cacfcd",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#aab2ae",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#bac0be",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d4d9d7",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

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
