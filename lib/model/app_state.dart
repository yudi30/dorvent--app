class AppState {
  bool isAuthenticated;
  String currentUser;

  AppState({
    this.isAuthenticated = false,
    this.currentUser = '',
  });

  AppState.fromAppState(AppState anotherState) {
    isAuthenticated = anotherState.isAuthenticated;
    currentUser = anotherState.currentUser;
  }
}
