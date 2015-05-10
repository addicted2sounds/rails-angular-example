app.controller 'ProductDetailCtrl', [ '$scope', '$stateParams', 'Product', ($scope, $stateParams, Product) ->
  Product.get($stateParams.alias).then (product)-> $scope.product = product

]