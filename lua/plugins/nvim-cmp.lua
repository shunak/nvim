return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- 既存のマッピング設定に追記・上書き
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          -- メニューが出ているときは「決定 (Confirm)」
          if cmp.visible() then
            cmp.confirm({ select = true })
          else
            -- メニューが出ていないときは「通常のTab入力」
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
