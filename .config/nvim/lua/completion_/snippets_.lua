--
-- snippets_.lua
--

local utils = require('snippets.utils')

function pascal_case(identifier)
  return ((" " .. identifier):gsub("%W%l", string.upper):sub(2)):gsub("%s+", "")
end

require('snippets').snippets = {
  _global = {
    ["todo"] = utils.comment_and_indent [[TODO(fdioguardi): ${0}
      ${=os.date()}]]
  },

  python = {
    ["class"] = [[
class ${1:ClassName|pascal_case(S.v)}(${2:object|pascal_case(S.v)}):
    """${0}"""]],

    ["var"] = [[ ${1:var|S.v:gsub("%s+", "_")} = ${0} ]],

    ["def"] = [[
def ${1:function|S.v:gsub("%s+", "_")}(${2:self|S.v:gsub("%s+", ", ")}):
    ${0} ]],
  },


  sh = {
    ["if"] = [[
if [ ${1:expression} ]; then
  ${0}
fi ]],

    ["shebang"] = [[#!/bin/sh]] .. "\n",
    ["#!"] = [[#!/bin/sh]] .. "\n"
  },

  lua = {
    ["local"] = [[local ${1:var|S.v:gsub("%s+", "_")} = ]],

    ["for"] = utils.match_indentation [[
for ${1:i}, ${2:v} in ipairs(${3:t}) do
  $0
end]],

    ["require"] = [[local ${1:var|S.v:gsub("%s+", "_")} = require('${2:mod}')]],
  },
}
