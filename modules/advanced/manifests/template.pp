define advanced::template (
  $file_path = inline_template('<%= File.dirname(@title) %>'),
  $file_name = inline_template('<%= File.basename(@title) %>'),
  $extension = 'erb'
) {
  file { $title :
    ensure  => file,
    content => template("${module_name}/${file_path}/${file_name}.${extension}"),
  }
}
