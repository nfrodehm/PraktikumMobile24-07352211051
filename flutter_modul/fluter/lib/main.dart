import 'package:flutter/material.dart';

//awal mula masuk ke program
void main() => runApp( MyApp());
class MyApp extends StatelessWidget {
  //MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ), //ThemeData
      routes: {
        "/" : (context) => HomePage()
      },
    );
  }
}

//bagian homepage
class HomePage extends StatelessWidget{
  //HomePage({super.key});
  @override
  Widget build(BuildContext context){
   return Scaffold(
    body: ListView(children: [
      const HomeAppBar(),
      const SizedBox(height: 20),
        const SearchBar(),
         SizedBox(height: 20),
           PromoBanner(),
           SizedBox(height: 20),
          FreelancerList(),
          SizedBox(height: 20),
          const ServiceList(),
          SizedBox(height: 20),
          BestBookings(),
          SizedBox(height: 20),
          RecommendedWorkshopsPage(),
    ],
    ),
   );
  }
}

// bagian widget
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 35,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          const Spacer(),
          const Text(
            "E-Commers",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Background color icon lonceng
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              const SizedBox(width: 10), // spasi diantara icon
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Background color for icon keranjang
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//bagian search bar
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.black54),
                  SizedBox(width: 10),
                  Text(
                    "Search here",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.tune,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

//promo banner awal
class PromoBanner extends StatelessWidget {
  // PromoBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(0),
          image:  DecorationImage(
            image: AssetImage('assets/images/2.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//freelance with rating
class FreelancerList extends StatelessWidget {
  final List<String> profiles = [
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Top Rated Freelancers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, backgroundColor: Color.fromARGB(255, 12, 15, 212)),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text("View All", style: TextStyle(color: Color.fromARGB(255, 6, 87, 153))),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: profiles.map((profile) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(profile),
                      ),
                      const SizedBox(height: 5),
                      const Text("Wade Warren", style: TextStyle(fontWeight: FontWeight.bold)),
                      const Text("Beautician", style: TextStyle(color: Colors.black54)),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.purple, size: 16),
                          Text("4.9", style: TextStyle(color: Colors.purple)),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

//ini top service
class ServiceList extends StatelessWidget {
  const ServiceList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            children: [
              const Text(
                "Top Rated Freelancers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, backgroundColor: Color.fromARGB(255, 12, 15, 212)),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text("View All", style: TextStyle(color: Color.fromARGB(255, 6, 87, 153))),
              ),
            ],
          ),
        const SizedBox(height: 10),
       ServicesCard(
          imageUrl: 'assets/images/minion.png',
          name: 'Miss',
          role: 'Beautician',
          description: 'Doloribus saepe aut necessitatibus qui.',
          rating: 4.9,
        ),
        ServicesCard(
          imageUrl: 'assets/images/minion.png',
          name: 'ghibli',
          role: 'Beautician',
          description: 'Doloribus saepe aut necessitatibus qui.',
          rating: 4.9,
        ),
        ServicesCard(
          imageUrl: 'assets/images/minion.png',
          name: 'Miss Zachary Will',
          role: 'Beautician',
          description: 'Doloribus saepe aut necessitatibus qui.',
          rating: 4.9,
        ),
      ],
    );
  }
}


class ServicesCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String role;
  final String description;
  final double rating;

  const ServicesCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.role,
    required this.description,
    required this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Layer bawah: gambar besar
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imageUrl,
              width:220,
              height: 199,
              fit: BoxFit.fill,
            ),
          ),
          // Layer atas: card informasi
          Positioned(
            left: 90,
            bottom: 25, // untuk membuat card informasi terlihat menumpuk
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                    radius: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          role,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 110, 66, 131),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Color.fromARGB(255, 126, 79, 170), size: 20),
                            const SizedBox(width: 4),
                            Text(
                              rating.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                        ),
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 117, 76, 150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BestBookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Bookings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, backgroundColor: const Color.fromARGB(255, 2, 5, 185)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View All"),
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(height: 16),
          BookingCard(
            profileImage: "assets/images/8.png",
            mainImage: "assets/images/1.png",
            name: "Miss Zachary Will",
            profession: "Beautician",
            rating: 4.9,
            description: "Occaecati aut nam beatae quo non deserunt consequatur.",
          ),
          BookingCard(
            profileImage: "assets/images/6.png",
            mainImage: "assets/images/3.png",
            name: "Miss Zachary Will",
            profession: "Beautician",
            rating: 4.9,
            description: "Occaecati aut nam beatae quo non deserunt consequatur.",
          ),
          BookingCard(
            profileImage: "assets/images/9.png",
            mainImage: "assets/images/5.png",
            name: "Miss Zachary Will",
            profession: "Beautician",
            rating: 4.9,
            description: "Occaecati aut nam beatae quo non deserunt consequatur.",
          ),
        ],
      ),
    );
  }
}
class BookingCard extends StatelessWidget {
  final String profileImage;
  final String mainImage;
  final String name;
  final String profession;
  final double rating;
  final String description;
  BookingCard({
    required this.profileImage,
    required this.mainImage,
    required this.name,
    required this.profession,
    required this.rating,
    required this.description,
  });
@override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              mainImage,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profileImage),
                  radius: 25,
                ),
                 SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        profession,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.purple, size: 16),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Recomended Workshop
class RecommendedWorkshopsPage extends StatelessWidget {
  const RecommendedWorkshopsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.5,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return buildWorkshopCard(context);
                },
              ),
            ],
          ),
        ],
      );
    // );
  }

  /// Fungsi untuk membuat kartu workshop
  Widget buildWorkshopCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/6.jpg', // Ganti dengan path gambar Anda
                    height: 230,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: const Color.fromARGB(255, 75, 88, 232), size: 16),
                        SizedBox(width: 4),
                        Text(
                          "4.9",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Miss Zachary Will",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Beautician",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 49, 111, 235),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Occaecati aut nam beatae quo non deserunt consequat.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 73, 81, 250),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Book Workshop",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}