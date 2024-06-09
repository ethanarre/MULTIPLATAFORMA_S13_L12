import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material vs Cupertino'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Material'),
              Tab(text: 'Cupertino'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MaterialControls(),
            CupertinoControls(),
          ],
        ),
      ),
    );
  }
}

class MaterialControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Material Controls',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text('Login'),
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: Text('Forgot password?'),
          ),
          SizedBox(height: 32),
          TextButton(
            onPressed: () {},
            child: Text('Sign up here'),
          ),
        ],
      ),
    );
  }
}

class CupertinoControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Controls'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cupertino Controls',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 32),
                CupertinoTextField(
                  placeholder: 'Username',
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey, width: 0.0),
                    borderRadius: BorderRadius.circular(8.0),
                    color: CupertinoColors.systemGrey5,
                  ),
                ),
                SizedBox(height: 16),
                CupertinoTextField(
                  placeholder: 'Password',
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  obscureText: true,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey, width: 0.0),
                    borderRadius: BorderRadius.circular(8.0),
                    color: CupertinoColors.systemGrey5,
                  ),
                ),
                SizedBox(height: 32),
                CupertinoButton.filled(
                  child: Text('Login', style: TextStyle(fontSize: 18)),
                  onPressed: () {
                    // Handle Sign In logic
                  },
                  borderRadius: BorderRadius.circular(10),
                ),
                SizedBox(height: 16),
                CupertinoButton(
                  child: Text('Forgot password?', style: TextStyle(fontSize: 14)),
                  onPressed: () {
                    // Handle reset password logic
                  },
                ),
                SizedBox(height: 32),
                CupertinoButton(
                  child: Text('Sign up here', style: TextStyle(fontSize: 14)),
                  onPressed: () {
                    // Handle sign up logic
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
