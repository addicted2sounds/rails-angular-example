window.app = angular.module('app', [
  'ui.router',
  'templates',
  'rails',
  'ngSanitize',
  'appResource',
  'bgf.paginateAnything'
]).run [ "$rootScope", ($rootScope) ->

]