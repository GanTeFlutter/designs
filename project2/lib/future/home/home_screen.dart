import 'package:flutter/material.dart';
import 'package:market_app/product/constants/application_collors.dart';
import 'package:market_app/product/constants/application_padding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeightsize = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _appBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          head(context, screenHeightsize),
          body(screenHeightsize), // Buradaki `Expanded` yapısına dikkat edeceğiz
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.headset, color: ApplicationColors.appButton),
          const SizedBox(width: 5),
          Text(
            'Audio',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.personal_injury, color: Colors.blue),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Expanded head(BuildContext context, double height) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: ApplicationPadding.screensColumnPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi USER null,',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w300),
            ),
            Text(
              'What are you looking for today? Iyisin dimi ',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height * 0.02),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Headphones',
                hintStyle:
                    Theme.of(context).textTheme.bodyMedium?.copyWith(color: ApplicationColors.gray),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded body(double screenHeightsize) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: const BoxDecoration(
          color: ApplicationColors.gri2,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeightsize * 0.06,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: ApplicationColors.appButton,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // transform: Matrix4.rotationZ(0.1),
                      child: Center(
                        child: Text('Kategori $index',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ApplicationColors.white)),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height:
                    screenHeightsize * 0.27, // ListView'in yüksekliğini sınırlamak için kullanıldı
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(10),
                        width: 420,
                        decoration: BoxDecoration(
                          color: ApplicationColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // transform: Matrix4.rotationZ(0.1),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('TMA-2 HD Wireless AL lan',
                                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            color: ApplicationColors.black,
                                            fontWeight: FontWeight.w700)),
                                    const Spacer(),
                                    TextButton.icon(
                                      onPressed: () {
                                        // Buton tıklama işlevini buraya yazın
                                      },
                                      icon: Text(
                                        'Shop Now',
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: ApplicationColors
                                                .appButton), // Renk kırmızı olarak ayarlandı
                                      ),
                                      label: const Icon(
                                        Icons.arrow_forward, // Ok ikonu eklendi
                                        color: ApplicationColors
                                            .appButton, // İkonun rengi de kırmızı olarak ayarlandı
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Column(
                                children: [
                                  Expanded(child: Image(image: AssetImage("assets/kulaklik.png"))),
                                ],
                              ),
                            )
                          ],
                        ));
                  },
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Text(
                    'Featured Products',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ApplicationColors.black), // Renk kırmızı olarak ayarlandı
                  ),
                ],
              ),
              SizedBox(
                height:
                    screenHeightsize * 0.27, // ListView'in yüksekliğini sınırlamak için kullanıldı
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: ApplicationColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Image(image: AssetImage("assets/kulaklik.png")),
                              Text('Sennheiser',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: ApplicationColors.black,
                                      fontWeight: FontWeight.w500)),
                              Text('sony WH-1000XM4',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: ApplicationColors.black,
                                      fontWeight: FontWeight.w500)),
                              TextButton.icon(
                                onPressed: () {},
                                icon: Text(
                                  '999tl',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: ApplicationColors.appButton),
                                ),
                                label: const Icon(
                                  Icons.arrow_forward,
                                  color: ApplicationColors.appButton,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
