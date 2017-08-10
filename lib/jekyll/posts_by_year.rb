require "jekyll"

# --
# Groups all the posts by year, so they can be used in
#   things like archives.
# --
Jekyll::Hooks.register :site, :pre_render, priority: 60 do |s, p|
  p.site["posts_by_year"] = s.posts.docs.group_by(&:date). \
    values.flatten
end
