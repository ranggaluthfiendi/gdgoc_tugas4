import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: film.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: film[index]['status'] == 'Sudah Ditonton'
                  ? Colors.green[100]
                  : Colors.red[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      child: Image.network(
                        film[index]['image'],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.broken_image, size: 40),
                          );
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          film[index]['judul'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Rating: ${film[index]['rating']}",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
