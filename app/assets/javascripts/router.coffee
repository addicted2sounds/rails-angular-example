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
      templateUrl: 'views/product-list.html'
      controller: 'ProductListCtrl'

    .state 'public.product',
      url: '/:alias',
      templateUrl: 'views/product-detail.html',
      controller: 'ProductDetailCtrl'

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])