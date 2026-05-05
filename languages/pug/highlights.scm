(comment) @comment

(tag_name) @tag

(content) @none

(id) @variable
(class) @selector

(quoted_attribute_value) @string
(attribute_name) @symbol
(
  (attribute_name) @keyword
  (#match? @keyword "^(\\(.*\\)|\\[.*\\]|\\*.*)$")
) @keyword

[
  ":"
  "{{"
  "}}"
  "+"
  "|"
] @punctuation.delimiter

(keyword) @keyword
((keyword) @include (#eq? @include "include"))
((keyword) @repeat (#any-of? @repeat "for" "each" "of" "in" "while"))
((keyword) @conditional (#any-of? @conditional "if" "else" "else if" "unless"))
((keyword) @keyword.function (#any-of? @keyword.function "block" "mixin"))

(filter_name) @method.call

(mixin_use (mixin_name) @method.call)
(mixin_definition (mixin_name) @function)
