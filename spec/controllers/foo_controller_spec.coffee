describe 'FooController', ->

  beforeEach -> module('app')

  beforeEach inject ($controller, $rootScope) ->
    @scope = $rootScope.$new()
    @scope.foo = 'World'
    $controller('FooController', {$scope: @scope})

  describe 'sayHi', ->

    it 'says hi', ->
      expect(@scope.sayHi('Mark')).toEqual('Hello Mark')
      expect(@scope.sayHi()).toEqual('Hello World')
