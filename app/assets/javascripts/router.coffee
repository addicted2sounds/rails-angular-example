app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider
    .state 'public',
      abstract: true,
      url: '',
      templateUrl: 'layouts/index.html',
      controller: 'layout'

    .state 'public.products',
      url: '/',
      templateUrl: 'views/products.html'
      controller: 'index'
    .state 'public.product',
      url: '/:alias',
      templateUrl: 'views/product-detail.html',
      controller: 'product'

    $urlRouterProvider.otherwise '/products'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])