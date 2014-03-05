# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

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