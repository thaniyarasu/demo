Demo.RESTSerializer = DS.RESTSerializer.extend(
  init: ->
    @_super()
    @map('Demo.Post',=>
      comments:
        embedded: 'always'
    )
)


Demo.RESTAdapter = DS.RESTAdapter.extend(
  bulkCommit: true
  serializer: Demo.RESTSerializer.create()
)

Demo.Store = DS.Store.extend(
  revision: 11
  adapter: Demo.RESTAdapter.create()
)



#//App.RESTSerializer = DS.RESTSerializer.extend({
#//    init: function() {
#//        this._super();
#//
#//        this.map('App.Contact', {
#//            phoneNumbers: {embedded: 'always'}
#//        });
#//    }
#//});
#//
#//App.Adapter = DS.RESTAdapter.extend({
#//    bulkCommit: false, serializer: App.RESTSerializer.create()
#//});
#//
#//App.Store = DS.Store.extend({
#//    revision: 11,
#//    adapter: App.Adapter.create()
#//});
#

