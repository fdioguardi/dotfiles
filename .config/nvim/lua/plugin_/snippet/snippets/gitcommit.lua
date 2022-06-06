local cab = (
      vim.fn.filereadable(vim.fn.stdpath("data") .. "/github-handles.json")
      == 1
    )
    and fmt("Co-Authored-By: {}", {
      i(1, "@handle"),
    })
  or fmt("Co-Authored-By: {} <{}@{}>", {
    i(1, "Name"),
    i(2, "user"),
    i(3, "github.com"),
  })

return { s({ trig = "cab", dscr = "Co-Authored-By:" }, cab) }
