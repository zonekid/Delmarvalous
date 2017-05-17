
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
  .controller("CommentEditController", [
    "CommentFactory",
    "$stateParams",
    CommentEditControllerFunction
  ])
  // .controller("CommentIndexController",[
  //   "CommentFactory",
  //   CommentIndexControllerFunction
  // ])

function RouterFunction($stateProvider){
$stateProvider
.state("home",{
  url: "",
  templateUrl: "js/ng-views/category_views/index.html",
  controller: "CategoryIndexController",
  controllerAs: "vm"
})
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
.state("commentEdit", {
  url: "/species/:species_id/comments/:id",
  templateUrl: "js/ng-views/comment_views/edit.html",
  controller: "CommentEditController",
  controllerAs: "vm"
})


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


function CommentEditControllerFunction (CommentFactory, $stateParams){
  console.log($stateParams)
  this.comment = CommentFactory.get({species_id: $stateParams.species_id, id: $stateParams.id})
  this.update = function(){
    this.comment.$update({id: $stateParams.id})
  }
  this.destroy = function(){
    this.comment.$delete({id: $stateParams.id})
  }

}


// function CommentIndexControllerFunction (CommentFactory){
//   this.species = CommentFactory.query()
// }
let domain = "https://shrouded-castle-11429.herokuapp.com"

function AnimalFactoryFunction( $resource ){
  return $resource( domain + "/categories/:id.json", {}, {})
}

function SpecieFactoryFunction( $resource ){
  return $resource( domain + "/species/:id.json", {}, {})
}

function CommentFactoryFunction ( $resource ){
  return $resource( domain + "/species/:species_id/comments/:id.json", {}, {
    update: {method: "PUT"}
  })
}




})();
