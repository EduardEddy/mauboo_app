import 'package:flutter/material.dart';

class WallPage extends StatelessWidget {
  const WallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mauboo'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: (){},)
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          String img='';
          String avatar='';
          String titleAvatar="";
          String booktitle = "";
          switch (index) {
            case 0:
              img='https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1473289542l/31869983._SY475_.jpg';
              avatar="https://t3.gstatic.com/images?q=tbn:ANd9GcSuTNcgeoJ7alQZbUwNj4K9QmIdJCsubWGiRTnxluQuzXV6nbiU2RO1nWIhQ3w1";
              titleAvatar="Valeria Luna";
              booktitle = "Henry and the Guardians of the Lost By Jenny Nimmo";
              break;
            case 1:
              img="https://i.pinimg.com/originals/f0/e7/b8/f0e7b8c5ab7a7f214a084f37911fa1e6.jpg";
              avatar="https://upload.wikimedia.org/wikipedia/commons/8/89/Chris_Evans_2020_%28cropped%29.jpg";
              titleAvatar="Adrian Rodriguex";
              booktitle = "katherine Rundell: The only time kids fully understand the word";
              break;
            case 2:
              img="https://images.cdn1.buscalibre.com/fit-in/360x360/c4/e9/c4e93e876288b4a0021a0cef47efc8bf.jpg";
              avatar="https://www.ecestaticos.com/image/clipping/6d16befb79a44a3bc7ffe633ad0807d5/sonrisas-y-pedrusco-emma-stone-anuncia-su-compromiso-en-instagram.jpg";
              titleAvatar="Julia Andrade";
              booktitle = "Harry Potter and the Philosopher's Stone";
              break;
          }
          return Card(
            child: Row(children: <Widget>[
              Image.network(img, width: 80,),
              Container(
                padding: EdgeInsets.only( top:10, left: 1),
                child:Column(
                  children: <Widget>[
                    SizedBox( width:size.width*.72),
                    Row(
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.brown.shade800,
                            backgroundImage: NetworkImage(avatar),
                            //child: Text('AH'),
                          ),
                        ),
                        SizedBox( width:5),
                        Container(
                          width: size.width*0.5,
                          child:Text(titleAvatar, style: TextStyle( color: Color(0xfffb6a8b)),),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only( left: 10 ),
                      width:size.width*.72,
                      child:Text(booktitle, style: TextStyle(color: Color(0xfffb6a8b), fontWeight: FontWeight.bold,fontSize: 18),)
                    )
                  ],
                )
              )
            ],
              )
          );
        },
      ),
    );
  }
}