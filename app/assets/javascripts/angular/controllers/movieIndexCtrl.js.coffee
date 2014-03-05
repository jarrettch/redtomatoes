@redTomatoes.controller 'MovieIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.movies = []
  $http.get('./movies.json').success((data) ->
    $scope.movies = data
  )
]