# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

Demo.Todo =DS.Model.extend
  title: null
  isDone: false

Demo.todosController = Em.ArrayController.create
  content: []
  createTodo: (title)->
    todo = Demo.Todo.createRecord(title: title)
    @pushObject(todo)


