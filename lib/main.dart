import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: HalamanTiga(),
  ));
}

//listview dengan konsep/metode list-basic
class HalamanUtama extends StatelessWidget {
  List lokasi = [
    'Jakarta',
    'Surabaya',
    'Malang',
    'Semarang'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Halaman Utama"),
      ),
      body: Container(
        child: ListView(
          children: lokasi.map((nama) {
            return ListTile(
              //leading: Icon(Icons.map),
              title: Text(nama),
              subtitle: Text('klik untuk detail'),
              //trailing: Icon(Icons.keyboard_arrow_right),
            );
          }).toList(),
        ),
      ),
    );
  }
}

//listview dengan konsep/metode list-array
class HalamanDua extends StatelessWidget {
  var lokasi = [
    {
      'kota': 'Jakarta',
      'img':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Jakarta.jpg/640px-Jakarta.jpg'
    },
    {
      'kota': 'Surabaya',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/d/d3/Pemandangan_Kota_Surabaya.jpg/640px-Pemandangan_Kota_Surabaya.jpg'
    },
    {
      'kota': 'Malang',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/7/75/Tugu_Balai_Kota_Malang.jpg/640px-Tugu_Balai_Kota_Malang.jpg'
    },
    {
      'kota': 'Semarang',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/c/c6/Semarang_SimpangLima.jpg/640px-Semarang_SimpangLima.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Container(
        child: ListView(
            children: lokasi.map((nama){
              return Card(
                child: Column(
                  children: <Widget>[
                    Image(
                      image: NetworkImage('${nama['img']}'),
                    ),
                    Text('${nama['kota']}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }).toList()
        ),
      ),
    );
  }
}

//listview dengan konsep/metode list-builder
class HalamanTiga extends StatelessWidget {
  var lokasi = [
    {
      'kota': 'Jakarta',
      'img':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Jakarta.jpg/640px-Jakarta.jpg'
    },
    {
      'kota': 'Surabaya',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/d/d3/Pemandangan_Kota_Surabaya.jpg/640px-Pemandangan_Kota_Surabaya.jpg'
    },
    {
      'kota': 'Malang',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/7/75/Tugu_Balai_Kota_Malang.jpg/640px-Tugu_Balai_Kota_Malang.jpg'
    },
    {
      'kota': 'Semarang',
      'img':
      'https://upload.wikimedia.org/wikipedia/id/thumb/c/c6/Semarang_SimpangLima.jpg/640px-Semarang_SimpangLima.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: lokasi.length,
          itemBuilder: (context, i) {
            return Card(
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage('${lokasi[i]['img']}'),
                  ),
                  Text('${lokasi[i]['kota']}')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}