angular
  .module("endangeredApp",[
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("AnimalFactory",[
    "$resource",
    AnimalFactoryFunction
  ])
  .controller("CategoryIndexController", [
    "AnimalFactory",
    CategoryIndexControllerFunction
  ])
  .controller("CategoryShowController",[
    "AnimalFactory",
    CategoryShowControllerFuncion
  ])

function RouterFunction($stateProvider){
$stateProvider
.state("categoryIndex",[
  url: "/categories",
  templateUrl: "js/ng-views/category_views/index.html",
  controller: "CategoryIndexController",
  controllerAs: "vm"
])
.state("categoryShow",[
  url: "/categories/:id",
  templateUrl: "js/ng-views/category_views/show.html",
  controller: "CategoryIndexController",
  controllerAs: "vm"
])
.state("specieIndex",[
  url: "/species",
  templateUrl: "js/ng-views/specie_views/index.html",
  controller: "SpecieIndexController",
  controllerAs: "vm"
])
}

function SpecieIndexControllerFunction (AnimalFactory){
  this.species = AnimalFactory.query()
}

function CategoryIndexControllerFunction (AnimalFactory){
  this.categories = AnimalFactory.query()
}
// the .query in each index controllerfunction may need some changing so it only grabs the "categories" or "species" separately

function CategoryShowControllerFunction (AnimalFactory, $stateParams){
  this.category = AnimalFactroy.get({id: $stateParams.id})
}

function AnimalFactoryFunction( $resource ){
  return $resource( "http://localhost:3000/", {}, {})
}
