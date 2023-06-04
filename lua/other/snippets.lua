local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

ls.add_snippets("markdown", {
  s("Feature", {
    t("#Feature: "),
    i(1),
    t({ "", "", "" }),
    i(2),
    t({
      "",
      "",
      "**Acceptance Criteria**:",
      "",
      "",
    }),
    i(3),
    t({
      "",
      [[Note: Please see [Dual Running   Coexistence with DFF](/Architecture/Design-View/Dual-Running-%2D-Coexistence-with-DFF) for background and technical details.]],
      "",
      "-----",
      "",
    }),
  }),
  s("Story", {
    t("##Story: "),
    i(1),
    t({ "", "" }),
    i(2),
    t({
      "",
      "",
      "**Acceptance Criteria**:",
      "",
      "",
    }),
    i(3),
    t({
      "",
      [[Note: Please see [Dual Running   Coexistence with DFF](/Architecture/Design-View/Dual-Running-%2D-Coexistence-with-DFF) for background and technical details.]],
      "",
      "-----",
      "",
    }),
  }),
  s("Given", {
    t("**Given** "),
    i(1),
    t({ "", "**When** " }),
    i(2),
    t({ "", "**Then** " }),
    i(3),
    t({ "", "", "" }),
  }),
  s("As a", {
    t({ "**As a** " }),
    i(1),
    t({ "", "**I want** " }),
    i(2),
    t({ ",", "**so that** " }),
    i(3),
    t({
      "",
      "",
    }),
  }),
})
