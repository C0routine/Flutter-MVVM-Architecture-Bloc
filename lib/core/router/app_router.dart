enum AppRouter {
  root(path: '/', name: 'root', routerConfigPath: '/'),

  /// Home Router
  home(path: '/home', name: 'home', routerConfigPath: '/home'),

  /// Tab Router
  tab2(path: '/tab2', name: 'tab2', routerConfigPath: '/tab2'),
  tab3(path: '/tab3', name: 'tab3', routerConfigPath: '/tab3'),
  tab4(path: '/tab4', name: 'tab4', routerConfigPath: '/tab4'),

  /// My Router
  my(path: '/my', name: 'my', routerConfigPath: '/my'),
  auth(path: '/my/auth', name: 'auth', routerConfigPath: 'auth'),
  example(path: '/example', name: 'example', routerConfigPath: '/example');

  const AppRouter({
    required this.path,
    required this.name,
    required this.routerConfigPath,
  });

  final String path;
  final String name;
  final String routerConfigPath;
}
