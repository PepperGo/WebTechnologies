import angular from 'angular';
import angularMeteor from 'angular-meteor';
import { Tasks } from '../../api/tasks.js';
 
import template from './todosList.html';
 
class TodosListCtrl {
  constructor($scope) {
    $scope.viewModel(this);
 
    this.helpers({
      tasks() {
        return Tasks.find({});
      }
    })
  }
}

export default angular.module('todosList', [])
  .component('todosList', {
    templateUrl: 'imports/components/todosList/todosList.html',
    controller: ['$scope', TodosListCtrl]
  });
