
"use strict";

(function(){

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
  .factory("SpecieFactory", [
    "$resource",
    SpecieFactoryFunction
    ])
  .controller("CategoryIndexController", [
    "AnimalFactory",
    CategoryIndexControllerFunction
  ])
  .controller("CategoryShowController",[
    "AnimalFactory",
    "$stateParams",
    CategoryShowControllerFunction
  ])
  .controller("SpecieIndexController",[
    "AnimalFactory",
    SpecieIndexControllerFunction
  ])
  .controller("SpecieShowController",[
    "SpecieFactory",
    "$stateParams",
    SpecieShowControllerFunction
  ])

function RouterFunction($stateProvider){
$stateProvider
.state("categoryIndex",{
  url: "/categories",
  templateUrl: "js/ng-views/category_views/index.html",
  controller: "CategoryIndexController",
  controllerAs: "vm"
})
.state("categoryShow",{
  url: "/categories/:id",
  templateUrl: "js/ng-views/category_views/show.html",
  controller: "CategoryShowController",
  controllerAs: "vm"
})
.state("specieIndex",{
  url: "/species",
  templateUrl: "js/ng-views/specie_views/index.html",
  controller: "SpecieIndexController",
  controllerAs: "vm"
})
.state("specieShow",{
  url: "/categories/:category_id/species/:id",
  templateUrl: "js/ng-views/specie_views/show.html",
  controller: "SpecieShowController",
  controllerAs: "vm"
})

}


function CategoryIndexControllerFunction (AnimalFactory){
  this.categories = AnimalFactory.query()
}


function CategoryShowControllerFunction (AnimalFactory, $stateParams){
  this.category = AnimalFactory.get({id: $stateParams.id})
}

function SpecieIndexControllerFunction (AnimalFactory){
  this.species = AnimalFactory.query()
}

function SpecieShowControllerFunction (SpecieFactory, $stateParams){
 this.specie = SpecieFactory.get({id: $stateParams.id})

}


function AnimalFactoryFunction( $resource ){
  return $resource( "http://localhost:3000/categories/:id.json", {}, {})
}

function SpecieFactoryFunction( $resource ){
  return $resource( "http://localhost:3000/species/:id.json", {}, {})
}


})();
