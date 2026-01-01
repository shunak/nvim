return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      -- ここでキーを設定します
      keymap = {
        accept = "<Tab>", -- Tabキーで決定
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
  },
}
