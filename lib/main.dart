import 'package:album_app/providers/album_provider.dart';
import 'package:album_app/views/main_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AlbumApp());
}

class AlbumApp extends StatelessWidget {
  const AlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AlbumProvider()),
      ],
      child: MaterialApp(
        title: 'AlbumApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPageScreen(),
      )
    );
  }
}
