import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_genesis/customer_detail.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<GoogleSignInAccount?> _handleSignIn() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      return account;
    } catch (error) {
      print(error);
      return null;
    }
  }

  void _handleSignInAndNavigate(BuildContext context) async {
    final account = await _handleSignIn();
    if (account != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CustomerDetailPage()),
      );
    } else {
      print('User cancelled or failed to sign-in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genesis App'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () => _handleSignInAndNavigate(context),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Image.asset(
            'assets/icons/google_float_icon.png',
            height: 32,
            width: 32,
          ),
          label: Text('LogIn with Google'),
        ),
      ),
    );
  }
}


