return {
  { -- QoL features for folding
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    opts = true,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "UIEnter",
    keys = {
      { "z?", vim.cmd.UfoInspect, desc = "󱃄 :UfoInspect" },
      {
        "zm",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "󱃄 Close All Folds",
      },
      {
        "zr",
        function()
          require("ufo").openFoldsExceptKinds({ "comment", "imports" })
        end,
        desc = "󱃄 Open Regular Folds",
      },
    },
    init = function()
      -- INFO fold commands usually change the foldlevel, which fixes folds, e.g.
      -- auto-closing them after leaving insert mode, however ufo does not seem to
      -- have equivalents for zr and zm because there is no saved fold level.
      -- Consequently, the vim-internal fold levels need to be disabled by setting
      -- them to 99.
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
    opts = {
      provider_selector = function(_, ft, buftype)
        -- PERF disable folds on `log`, and only use `indent` for `bib` files
        if ft == "log" then
          return ""
        end
        -- ufo accepts only two kinds as priority, see https://github.com/kevinhwang91/nvim-ufo/issues/256
        if ft == "" or buftype ~= "" or vim.startswith(ft, "git") or ft == "applescript" then
          return "indent"
        end
        return { "lsp", "treesitter" }
      end,
    },
  },
}
