# Creation Notes

1. In VS Code, View -> Command Palette -> flutter New Application (to get the app template).
2. `flutter run -d chrome`


Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            // ...
          )
        ),
        body: // ...
      )
    );
  }