dog = angular.module('dog',[])
app.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "<%= asset_path('index.html') %>"
        controller: 'DogsController'
      )
      .when('/dogs/new',
        templateUrl: "<%= asset_path('new.html') %>"
        controller: 'DogsController'
      )
])
