return {
  -- Enable Copilot
  "zbirenbaum/copilot.lua",
  cmd = "Copilot", -- This ensures Copilot is loaded when the command is called
  build = ":Copilot auth", -- Ensures authentication for Copilot
  event = "BufReadPost", -- You can also use `VimEnter` or `BufRead` as an event depending on your preference
  config = function()
    -- Set up Copilot
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        keymap = {
          accept = "<C-J>",  -- Customize the keymap to accept suggestions (this will use Ctrl+J by default)
          next = "<M-]>",    -- Use Alt+Right for the next suggestion
          prev = "<M-[>",    -- Use Alt+Left for the previous suggestion
        },
      },
      panel = {
        enabled = false,  -- Option to disable the Copilot panel (set to true if you want the panel)
      },
      filetypes = {
        markdown = true,  -- Enable Copilot for markdown files
        help = true,      -- Enable Copilot for help files
      },
    })

    -- Optionally, set key mappings here
    vim.api.nvim_set_keymap("i", "<C-J>", "copilot#Accept()", { silent = true, expr = true, noremap = true })
  end,
}
