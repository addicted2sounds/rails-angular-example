app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider
    .state 'public',
      abstract: true,
      url: '',
      templateUrl: 'layouts/index.html',
      controller: 'layout'

    .state 'public.index',
      url: '/',
      templateUrl: 'views/products.html'
      controller: 'index'

    $urlRouterProvider.otherwise '/products'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])