import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO : 1. deklarasi variabel yg dibutuhkn
  bool isSignedIn = true;
  String fullName = 'Theresia Chintia';
  String userName = 'thereesiaaa';
  int FavoriteCandiCount = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.deepPurple,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              //TODO : 2. Buat profile header (gbr prfile)
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                          shape: BoxShape.circle
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/placeholder_image.png'),
                        ),
                      ),
                      if(isSignedIn)
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50],
                          ))
                    ],
                  ),
                ),
              ),
              //TODO : 3. bagian profile pp (foto pp)
              //baris satu profile
              const SizedBox(height: 20,),
              Divider(color: Colors.deepPurple[100],),
              const SizedBox(height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child: const Row(
                      children: [
                        Icon(Icons.lock, color: Colors.amber,),
                        const SizedBox(width: 8,),
                        Text(
                          'Pengguna', 
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,
                          ) ,), 
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ': $userName',
                    style: TextStyle(fontSize: 18),
                    )),
              //baris dua profile
              const SizedBox(height: 20,),
              Divider(color: Colors.deepPurple[100],),
              const SizedBox(height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'asfdhs',
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(': $userName',
                    style: TextStyle(fontSize: 18),
                    ))
                ],
              )

                
                ],
              ),
              //TODO : 4. profile action (sign in/out)
            ],
          ),
        ),
      ],
    ),
   );
  }
}
