-- Generated using https://github.com/RohanVashisht1234/rohansyntax
-- Author: Rohan Vashisht
-- mod-version:3
local syntax = require "core.syntax"
syntax.add {
  name = "Clojure",
  comment = ";;",
  files = {
    "%.clojure$",
  },
  patterns = {
    { pattern = ';;.*',                                   type = 'comment' },
    { pattern = ';.*',                                    type = 'comment' },
    { pattern = { '#"', '"', '\\' },                      type = 'string' },
    { pattern = { '"', '"', '\\' },                       type = 'string' },
    { pattern = { '"""', '"""', '\\' },                   type = 'string' },
    { pattern = 'Retention%s+()[%a_][%w_/]*',             type = { 'keyword', 'literal' } },
    { pattern = ':[%a_][%w_/%-]*',                        type = { 'keyword2', 'literal' } },
    { pattern = '[%a_][%w_]*()%.()[%a_][%w_/%-]*',        type = { 'keyword','operator', 'keyword2' } },
    { pattern = "%(()def()%s+()[%a_][%w_%-]*",            type = { "normal", "keyword", "literal", 'literal' } }, -- tested ok
    { pattern = "%(()def[%a_][%w_]*()%s+()[%a_][%w_%-]*", type = { "normal", "keyword", "literal", 'literal' } }, -- tested ok
    { pattern = '%(()require()%s+()[%a_][%w_]*',          type = { 'normal', 'keyword', 'literal', 'literal' } },
    { pattern = '%(()[%a_][%w_/]*',                       type = { 'normal', 'literal' } },
    { pattern = '-?0x%x+',                                type = 'number' },
    { pattern = '-?%d+[%d%.eE]*f?',                       type = 'number' },
    { pattern = '-?%.?%d+f?',                             type = 'number' },
    { pattern = '[!%#%$%%&*+./%<=>%?@\\%^|%-~:]',         type = 'operator' },
    { pattern = "[%a_'][%w_']*",                          type = 'normal' },
  },
  symbols = {
    ['def']        = 'keyword', -- tested ok
    ['defn']       = 'keyword',
    ['str']        = 'keyword',
    ['fn']         = 'keyword',
    ['println']    = 'keyword',
    ['if']         = 'keyword',
    ['cond']       = 'keyword',
    ['vector']     = 'keyword',
    ['apply']      = 'keyword',
    ['String']     = 'keyword',
    ['ns']         = 'keyword',
    ['try']        = 'keyword',
    ['let']        = 'keyword',
    ['get']        = 'keyword',
    ['catch']      = 'keyword',
    ['Retention']  = 'keyword',
    ['Deprecated'] = 'keyword',
    ['require']    = 'keyword2',
    ['true']       = 'keyword2',
    ['false']      = 'keyword2',
    ['nil']        = 'literal',
    ['int']        = 'literal',
  },
}
