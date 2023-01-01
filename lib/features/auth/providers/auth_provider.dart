import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reddit_clone/features/auth/screens/login_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authStateProvider = AuthNotifier(ref: ref);
  return GoRouter(
    initialLocation: '/login',
    // errorBuilder: (context, state) {
    //   return ErrorScreen(error: state.error.toString());
    // },
    redirect: authStateProvider._redirectLogic,
    refreshListenable: authStateProvider,
    routes: authStateProvider._routes,
  );
});

class AuthNotifier extends ChangeNotifier {
  final Ref ref;

  AuthNotifier({required this.ref});
  FutureOr<String?> _redirectLogic(BuildContext context, GoRouterState state) {
    // UserModel의 인스턴스 또는 null
    // final user = ref.read(userProvider);

    // // 로그인을 하려는 상태인지
    // final loggingIn = state.location == '/login';

    // // 유저 정보가 없다 - 로그인한 상태가 아니다.
    // // 유저 정보가 없고
    // // 로그인하려는 상태가 아니라면
    // // 로그인 페이지로 이동한다.
    // if (user == null) {
    //   return loggingIn ? null : '/login';
    // }

    // // 유저 정보가 있는데
    // // 로그인 페이지라면
    // // 홍으로 이동
    // if (loggingIn) {
    //   return '/';
    // }

    return null;
  }

  List<GoRoute> get _routes => [
        //       GoRoute(
        //         path: '/',
        //         builder: (_, state) => HomeScreen(),
        //         routes: [
        //           GoRoute(
        //             path: 'one',
        //             builder: (_, state) => OneScreen(),
        //             routes: [
        //               GoRoute(
        //                 path: 'two',
        //                 builder: (_, state) => TwoScreen(),
        //                 routes: [
        //                   GoRoute(
        //                     path: 'three',
        //                     name: ThreeScreen.routeName,
        //                     builder: (_, state) => ThreeScreen(),
        //                     routes: [],
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        GoRoute(
          path: '/',
          builder: (_, state) => LoginScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (_, state) => LoginScreen(),
        ),
      ];
}

// final userProvider = StateNotifierProvider<UserStateNotifier, UserModel?>(
//   (ref) => UserStateNotifier(),
// );

// // 로그인한 상태면 UserModel 인스턴스 상태로 넣어주기
// // 로그아웃 상태면 null 상태로 넣어주기
// class UserStateNotifier extends StateNotifier<UserModel?> {
//   UserStateNotifier() : super(null);

//   login({
//     required String name,
//   }) {
//     state = UserModel(name: name);
//   }

//   logout() {
//     state = null;
//   }
// }