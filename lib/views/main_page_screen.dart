import 'package:album_app/constants.dart';
import 'package:album_app/models/album.dart';
import 'package:album_app/providers/album_provider.dart';
import 'package:album_app/views/scaffolded_loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {

  @override
  void initState() {
    final albumProvider = Provider.of<AlbumProvider>(context, listen: false);
    albumProvider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AlbumProvider>(builder: (context, albumProvider, child) {
      return !albumProvider.isLoading
        ? const ScaffoldedLoadingScreen()
        : Scaffold(
          appBar: AppBar(
            title: const Text('Album List'),
          ),
          body: ListView.builder(
            itemCount: albumProvider.albums.length,
            itemBuilder: (buildContext, item) {
              AlbumModel album = albumProvider.albums[item];
              return ListTile(
                leading: album.artworkUrl100.isEmpty ?
                  const Icon(Icons.album, size: kPadding8)
                  : Image.network(album.artworkUrl100),
                title: Text(album.artistName),
                subtitle: Text(album.collectionPrice.toString()),
                trailing: GestureDetector(
                  child: Icon(Icons.favorite, color: albumProvider.favorite[item] ? kRedColor : kNormalColor,),
                  onTap: () {
                    if (albumProvider.favorite[item]) {
                      albumProvider.favorite[item] = false;
                      albumProvider.decCount();
                    }
                    else {
                      albumProvider.favorite[item] = true;
                      albumProvider.addCount();
                    }
                  },
                )
              );
            },
          ),
          drawer: _drawer(context, albumProvider),
        );
    });
  }

  Widget _drawer(BuildContext context, AlbumProvider albumProvider) {
    return Drawer(
      elevation: 24,
      child: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(),
                child: Stack(
                  children: const [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.settings,
                        size: 80,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('User',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  ]
                ),
              ),
              ListTile(
                leading: const Icon(Icons.favorite, color: kRedColor),
                title: const Text(
                  'Favorite'
                ),
                trailing: Text(
                  albumProvider.favorite.where(
                    (element) => element
                  ).toList().length.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                onTap: () {},
              ),
              const Divider(),
            ],
          ),
        ],
      )
    );
  }
}