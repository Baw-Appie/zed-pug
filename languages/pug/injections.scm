(tag
  (tag_name) @_tag_name
  (#eq? @_tag_name "script")
  (children) @injection.content
  (#set! injection.language "javascript")
  (#set! injection.include-children))

(tag
  (tag_name) @_tag_name
  (#eq? @_tag_name "style")
  (children) @injection.content
  (#set! injection.language "css")
  (#set! injection.include-children))

((javascript) @injection.content
  (#set! injection.language "javascript"))
