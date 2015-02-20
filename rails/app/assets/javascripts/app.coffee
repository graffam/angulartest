# This is app/assets/javascripts/app.coffee.erb

#= depend_on_asset index.html
#= depend_on_asset new.html

dogs = angular.module('dogs',[
  'templates',
  'ngRoute',
  'controllers',
])

dogs.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'DogsController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("DogsController", [ '$scope',
  ($scope)->
])
