angular.module "skeleton"
  .directive 'navbar', ->

    NavbarController = ($auth) ->
      vm = this
      vm.neutralNav  = [
        {
          link: 'Link1'
          state: 'main'
          order: 1
        } 
      ]
      # For users signed in
      vm.authedNav = [
        {
          link: 'Link2'
          state: 'main'
          order: 2
        }
        {
          link: 'Logout'
          state: 'logout'
          order: 3
        }
      ]
      # For users not signed in
      vm.unauthedNav = [
        {
          link: 'Login'
          state: 'login'
          order: 2
        }
        {
          link: 'Register'
          state: 'register'
          order: 3
        }
      ]  
      return

    directive =
      restrict: 'E'
      templateUrl: 'assets/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true