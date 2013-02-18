Demo.MyTextField = Em.TextField.extend(
  insertNewline: ->
    value=@get('value')
    if value
      Demo.todosController.createTodo(value)
      @set('value','')
)
