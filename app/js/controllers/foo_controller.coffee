@FooController = ($scope, $http) ->

  $http.get('/api/name').success (data) ->
    $scope.name = data.name

  $scope.sayHi = (name = $scope.foo) ->
    "Hello #{name}"
