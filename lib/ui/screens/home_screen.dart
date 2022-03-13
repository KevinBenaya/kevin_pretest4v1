import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kevin_pretest4v1/ui/screens/widgets/my_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Track parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            centerTitle: false,
            floating: true,
            snap: false,
            pinned: true,
            titleSpacing: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1270661398540898305%2F-zF5jVqt_400x400.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fkevinbenaya2&tbnid=YjmzhKSDjcT5-M&vet=12ahUKEwjN9oHDqsL2AhVrjNgFHQWrCj0QMygBegQIARA2..i&docid=D_N3_HhSOcY4mM&w=400&h=400&itg=1&q=kevin%20benaya&ved=2ahUKEwjN9oHDqsL2AhVrjNgFHQWrCj0QMygBegQIARA2'),
                  ),
                ),
              ),
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 64),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter parcel number or scan QR code',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 7,
                              bottom: 40,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Theme.of(context).backgroundColor,
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.all(14),
                                  width: 50,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/images/icon_qrcode.svg'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Track parcel',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              style: Theme.of(context).textButtonTheme.style,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: const EdgeInsets.only(
              top: 32,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My parcels',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '00359007738060313786',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(''),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'In transit',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Last update: 3 hours ago',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Details',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SvgPicture.asset(''),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
