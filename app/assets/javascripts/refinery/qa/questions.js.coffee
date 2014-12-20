$('.qa input, .qa textarea').placeholder()

$('.qa button').click ->
  $(this).parents('form').trigger('reset')
