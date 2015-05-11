app.controller 'ProductListCtrl', [ '$scope', '$stateParams', 'Product', ($scope, $stateParams, Product) ->
  Product.get($stateParams.alias).then (products)-> $scope.products = products

]