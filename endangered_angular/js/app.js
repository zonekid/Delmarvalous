
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
  .factory("CommentFactory",[
   "$resource",
   CommentFactoryFunction
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
  // .controller("SpecieIndexController",[
  //   "AnimalFactory",
  //   SpecieIndexControllerFunction
  // ])
  .controller("SpecieShowController",[
    "SpecieFactory",
    "CommentFactory",
    "$stateParams",
    SpecieShowControllerFunction
  ])
  // .controller("CommentIndexController",[
  //   "CommentFactory",
  //   CommentIndexControllerFunction
  // ])

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
// .state("specieIndex",{
//   url: "/species",
//   templateUrl: "js/ng-views/specie_views/index.html",
//   controller: "SpecieIndexController",
//   controllerAs: "vm"
// })
.state("specieShow",{
  url: "/categories/:category_id/species/:id",
  templateUrl: "js/ng-views/specie_views/show.html",
  controller: "SpecieShowController",
  controllerAs: "vm"
})

// .state("commentIndex", {
// url: "/categories/:category_id/species/:id",
// templateUrl: "js/ng-views/specie_views/show.html",
// controller: "CommentIndexController",
// controllerAs: "vm"
// })

}


function CategoryIndexControllerFunction (AnimalFactory){
  this.categories = AnimalFactory.query()
}


function CategoryShowControllerFunction (AnimalFactory, $stateParams){
  this.categories = AnimalFactory.query()
  this.category = AnimalFactory.get({id: $stateParams.id})
}

// function SpecieIndexControllerFunction (AnimalFactory){
//   this.species = AnimalFactory.query()
// }

function SpecieShowControllerFunction (SpecieFactory, CommentFactory, $stateParams){
  let self = this
  this.specie = SpecieFactory.get({id: $stateParams.id})
  this.create = function (){
    console.log(this.comment)
    let comment = new CommentFactory()
    comment.content = this.comment
    comment.$save({species_id: $stateParams.id}).then(function (response){
      console.log(response)
      self.specie.comments.push(response)

   })
 }
}


// function CommentIndexControllerFunction (CommentFactory){
//   this.species = CommentFactory.query()
// }


function AnimalFactoryFunction( $resource ){
  return $resource( "http://localhost:3000/categories/:id.json", {}, {})
}

function SpecieFactoryFunction( $resource ){
  return $resource( "http://localhost:3000/species/:id.json", {}, {})
}

function CommentFactoryFunction ( $resource ){
  return $resource( "http://localhost:3000/species/:species_id/comments.json", {}, {
    update: {method: "PUT"}
  })
}


})();
