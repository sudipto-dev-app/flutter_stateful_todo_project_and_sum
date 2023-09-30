import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (BuildContext ) {
        return MaterialApp(
          home: Home(),
        );
      },

    );
  }
}
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor:Colors.blue,
      ),
      body: OrientationBuilder(builder: (context, orientation) =>
      (orientation == Orientation.portrait)
        ?Potrait()
        :landscape(),),
    );
  }
}



final image =
    'https://cdn.vox-cdn.com/thumbor/j9jpwQFZfEXcb7aGCh3dlaNHn9o=/0x0:2040x1360/1400x1400/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/13707075/akrales_190117_3163_0194.jpg';

class Potrait extends StatelessWidget {
   Potrait({super.key});
  List<String>imagelist=[
    'https://res.cloudinary.com/petrescue/image/upload/b_auto:predominant,f_auto,c_pad,h_638,w_638/v1683545741/l9xgfhc08kg5oxaootxb.jpg',
    'https://as2.ftcdn.net/v2/jpg/00/97/58/97/1000_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/36/99/22/1000_F_236992283_sNOxCVQeFLd5pdqaKGh8DRGMZy7P4XKm.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/27/76/44/1000_F_227764486_nAcFB4FnDTiyk0WLgKBXArOsqaUCuk7X.jpg',
    'https://as1.ftcdn.net/v2/jpg/06/05/37/40/1000_F_605374009_hEUHatmKPzuHTIacg7rLneAgnLHUgegM.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.width,
          child: CircleAvatar(backgroundImage: NetworkImage(image)),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            'Sudipto Sarker',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
              'I am Sutipto, a dedicated and passionate Flutter app developer. With a deep love for technology',
              style: TextStyle(fontSize: 15)),
        ),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: imagelist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context,index){
              return  SizedBox(
                height: 130,
                child: Image.network(imagelist[index],fit: BoxFit.cover,),
              );
            },
          ),
        )
      ],
    );
  }
}
class landscape extends StatelessWidget {
   landscape({super.key});
  List<String>imagelist=[
    'https://res.cloudinary.com/petrescue/image/upload/b_auto:predominant,f_auto,c_pad,h_638,w_638/v1683545741/l9xgfhc08kg5oxaootxb.jpg',
    'https://as2.ftcdn.net/v2/jpg/00/97/58/97/1000_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/36/99/22/1000_F_236992283_sNOxCVQeFLd5pdqaKGh8DRGMZy7P4XKm.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/27/76/44/1000_F_227764486_nAcFB4FnDTiyk0WLgKBXArOsqaUCuk7X.jpg',
    'https://as1.ftcdn.net/v2/jpg/06/05/37/40/1000_F_605374009_hEUHatmKPzuHTIacg7rLneAgnLHUgegM.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: CircleAvatar(backgroundImage: NetworkImage(image)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                'Sudipto Sarker',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'I am Sutipto, a dedicated and passionate Flutter app developer. With a deep love for technology',
                    style: TextStyle(fontSize: 15)),
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: imagelist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context,index){
                    return  SizedBox(
                      height: 130,
                      child: Image.network(imagelist[index],fit: BoxFit.cover,),
                    );
                  },
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
