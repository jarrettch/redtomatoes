@redTomatoes = angular.module('redTomatoes', ['ngRoute', 'ngAnimate'])

@redTomatoes.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/movies', {
      templateUrl: '../templates/movies/index.html',
      controller: 'MovieIndexCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])