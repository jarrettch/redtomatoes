@redTomatoes.controller 'MovieIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.movies = []
  $http.get('./api/v1/movies').success((data) ->
    $scope.movies = data
    console.log data
  )
]