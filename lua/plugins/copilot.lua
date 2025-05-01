return {
  "Exafunction/codeium.nvim",
  cmd = "Codeium",         -- Lazy-load on command
  build = ":Codeium Auth", -- Ensure user authenticates
  event = "BufReadPost",   -- Load on buffer open
  config = function()
    require("codeium").setup({
      enable_tab_fallback = true, -- if true, Codeium fallback uses <Tab> if no suggestion
      filetypes = {
        markdown = true,
        help = true,
        typescriptreact = true,
        javascriptreact = true,
        python = true,
        typescript = true,
        javascript = true,
        json = true,
      },
    })

    -- Custom keymaps for accepting suggestions
    vim.keymap.set("i", "<C-Q>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<M-]>", function()
      return vim.fn
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<M-[>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<C-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
}

