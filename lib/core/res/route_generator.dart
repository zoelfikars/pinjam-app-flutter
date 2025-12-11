import 'package:flutter/material.dart';
import 'package:flutter_app/core/res/app_routes.dart';
import 'package:flutter_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_app/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/admin/list_pinjam_admin_page.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/nasabah/form_pinjam_page.dart';
import 'package:flutter_app/features/pinjaman/presentation/pages/nasabah/list_pinjam_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return _fadeRoute(const LoginPage());
      case AppRoutes.register:
        return _fadeRoute(const RegisterPage());
      case AppRoutes.listPengajuanNasabah:
        return _fadeRoute(const ListPinjamPagePage());
      case AppRoutes.listPengajuanAdmin:
        return _fadeRoute(const ListPinjamAdminPage());
      case AppRoutes.formPinjam:
        return _fadeRoute(const FormPinjamPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _fadeRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      settings: const RouteSettings(),
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Halaman tidak ditemukan!')),
        );
      },
    );
  }
}
