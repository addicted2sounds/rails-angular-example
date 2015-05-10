app.factory 'Product', ['AppModel', (AppModel) ->

  class User extends AppModel
    @configure url: '/products', name: 'products'
]