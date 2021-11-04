chars_sources = [
  'main.vala',
]

chars_deps = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
]

executable('chars', chars_sources,
  vala_args: '--target-glib=2.58',  dependencies: chars_deps,
  install: true,
)
