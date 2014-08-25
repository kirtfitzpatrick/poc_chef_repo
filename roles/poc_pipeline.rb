name "poc_pipeline"
description "POC Pipeline Role"

run_list %w[
  recipe[git]
  recipe[build-essential]
  recipe[emacs]
  recipe[resolver]
  recipe[pipeline::jenkins]
  recipe[pipeline::knife]
  recipe[pipeline::berkshelf]
  recipe[pipeline::cookbooks]
  recipe[poc_pipeline]
]

override_attributes(
  "build-essential" => {
    "compile_time" => true
  }
)