Demo.PostView = Ember.View.extend(
  redirect: ->
    @transitionTo("posts")
)

