import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, dynamic>> film = [
    {
      "judul": "Interstellar",
      "genre": "Sci-Fi",
      "rating": 5,
      "status": "Sudah Ditonton",
      "image":
          "https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
    },
    {
      "judul": "Mission Impossible",
      "genre": "Action",
      "rating": 0,
      "status": "Belum Ditonton",
      "image":
          "https://m.media-amazon.com/images/M/MV5BOGZjNDlkMTYtMTJkZi00OTkzLWI4NDEtYTA2ODQyMjcwYTdlXkEyXkFqcGc@._V1_.jpg",
    },
    {
      "judul": "Final Destination",
      "genre": "Horror",
      "rating": 4,
      "status": "Sudah Ditonton",
      "image":
          "https://m.media-amazon.com/images/M/MV5BMzc3OWFhZWItMTE2Yy00N2NmLTg1YTktNGVlNDY0ODQ5YjNlXkEyXkFqcGc@._V1_.jpg",
    },
    {
      "judul": "Housemaid",
      "genre": "Thriller",
      "rating": 5,
      "status": "Sudah Ditonton",
      "image":
          "https://dx35vtwkllhj9.cloudfront.net/lionsgate/the-housemaid/images/regions/gb/onesheet.jpg",
    },
    {
      "judul": "Until Dawn",
      "genre": "Horror",
      "rating": 4,
      "status": "Sudah Ditonton",
      "image":
          "https://dvvy6louqcr7j.cloudfront.net/vista/HO00015570/heroPoster/until-dawn.png",
    },
    {
      "judul": "28 Years Later",
      "genre": "Horror",
      "rating": 0,
      "status": "Belum Ditonton",
      "image":
          "https://upload.wikimedia.org/wikipedia/id/thumb/5/5d/28_Years_Later_film.jpg/250px-28_Years_Later_film.jpg",
    },
    {
      "judul": "Five Night at Freddy",
      "genre": "Horror",
      "rating": 3.5,
      "status": "Sudah Ditonton",
      "image":
          "https://asset.kompas.com/crops/RDf9_kfJ6jpb7MceDRe4_IS-AZc=/0x1:1071x715/1200x800/data/photo/2023/08/24/64e6fddc7acf4.png",
    },
    {
      "judul": "Jurassic Park",
      "genre": "Adventure",
      "rating": 3,
      "status": "Sudah Ditonton",
      "image":
          "https://image.tmdb.org/t/p/w500/9i3plLl89DHMz7mahksDaAo7HIS.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Watchlist Tahun 2025")),
      body: Container(
        child: ListView.builder(
          itemCount: film.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.movie),
              title: Text(film[index]['judul']),
              subtitle: Text(
                film[index]['genre'] +
                    " - Rating: " +
                    film[index]['rating'].toString(),
              ),
              trailing: Text(film[index]['status']),
            );
          },
        ),
      ),
    );
  }
}
