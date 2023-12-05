import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

class Login12 extends StatefulWidget {
  const Login12({super.key, required this.title});

  final String title;

  @override
  State<Login12> createState() => _Login12State();
}

/*class _Login12State extends State<Login12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(),
    );
  }
}*/


class _Login12State extends State<Login12> with SingleTickerProviderStateMixin {
  int index = 1;
  late AnimationController? _animationController;
  late Animation<double> animation;
  bool isPlaying = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )
    /*..forward()
      ..repeat(reverse: true)*/;
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);

  }

  @override
  void dispose() {
    super.dispose();
    _animationController?.dispose();
  }
  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController?.forward()
          : _animationController?.reverse();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Parent Scaffold"),
        automaticallyImplyLeading: false,
      ),*/
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: AnimatedIcon(
                icon: AnimatedIcons.menu_arrow, progress: animation),
            onPressed: () {
              if (_scaffoldKey.currentState?.isDrawerOpen == false) {
                _scaffoldKey.currentState?.openDrawer();
              } else {
                _scaffoldKey.currentState?.openEndDrawer();
              }
              _handleOnPressed();
            }),
      ),
      body: Scaffold(
          key: _scaffoldKey,
          onDrawerChanged: (onDrawerChanged) {
            debugPrint('onDrawerChanged? $onDrawerChanged');
            // onDrawerChanged is called on changes in drawer direction
            // true - gesture that the Drawer is being opened
            // false - gesture that the Drawer is being closed
            onDrawerChanged
                ? _animationController?.forward()
                : _animationController?.reverse();
          },
          drawer: Drawer(
            backgroundColor: const Color(0xFFb3d9d2),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text(
                    'USAMA MUZAFFAR',
                  ),
                  accountEmail: Text(
                    'Flutter Developer',
                  ),
                  decoration: BoxDecoration(color: Color(0xFF008069)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/login_signup_12/usama.jpg',
                    ),
                  ),
                ),
                ListTile(
                  selectedColor: const Color(0xFF008069),
                  selected: index == 1,
                  leading: const Icon(Icons.device_unknown_rounded),
                  title: const Text('Device Info'),
                  onTap: () {
                    Navigator.pop(context);
                    if (index != 1) {
                      setState(() => index = 1);
                    }
                  },
                ),
                ListTile(
                  selectedColor: const Color(0xFF008069),
                  selected: index == 2,
                  leading: const Icon(Icons.contact_support_outlined),
                  title: const Text('Application Info'),
                  onTap: () {
                    Navigator.pop(context);
                    if (index != 2) {
                      setState(() => index = 2);
                    }
                  },
                ),
                ListTile(
                  selectedColor: const Color(0xFF008069),
                  selected: index == 3,
                  leading: const Icon(Icons.network_check_rounded),
                  title: const Text('Network Info'),
                  onTap: () {
                    Navigator.pop(context);
                    if (index != 3) {
                      setState(() => index = 3);
                    }
                  },
                ),
              ],
            ),
          ),
          /*body: index == 1
              ? const DeviceInfoPage()
              : index == 2
              ? const ApplicationInfoPage()
              : index == 3
              ? const NetworkInfoPage()
              : const Center(
              child: Text('ERROR!', textAlign: TextAlign.center))*/),
    );
  }
}