import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/Home%20tab/Motors.dart';
import 'package:olx/Home%20tab/Property.dart';
import 'package:olx/Home%20tab/QuickFilter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 180;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: Color(0xffEAEEEF),
        body:  NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.white,
                pinned: true,
                expandedHeight: 318,


                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 20,bottom: 10),
                  collapseMode: CollapseMode.none,
                  title: _isShrink
                      ?  SizedBox(height: 30,child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuickFilter()));
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 261,
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.search),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Find Cars, Mobile Phones and more',
                                style: TextStyle(fontSize: 14,color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.notifications_none),
                      )
                    ],
                  ),)
                      : null,
                  background: SafeArea(
                    child: Column(children: [
                      Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ImageIcon(
                                  AssetImage('image/OLXlogo.png'),
                                  size: 40,
                                  color: Colors.blue,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Motors()));
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                          'image/CarIcon.png',
                                        ),
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'OLX MOTORS',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Property()));
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        ImageIcon(
                                          AssetImage('image/BI.png'),
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'OLX PROPERTY',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          color: Color(0xffF9F9F9),
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text('Multan, Punjab'),
                                        SizedBox(
                                          width: 205,
                                        ),
                                        Icon(Icons.keyboard_arrow_down)
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => QuickFilter()));
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 330,
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(Icons.search),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Find Cars, Mobile Phones and more',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(Icons.notifications_none),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 167,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Browse Categories',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1),
                              child: SizedBox(
                                height: 120,
                                child: ListView(
// This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff8BF2EE),
                                            radius: 30,
                                            child: Icon(
                                              Icons.phone_android,
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Mobiles',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffAE9C68),
                                            radius: 30,
                                            child: Icon(
                                              Icons.car_rental_outlined,
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Vehicles',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff22E6DA),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/sale.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 45,
                                            child: Text(
                                              'Property for rent',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffFADC3D),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/rent.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 45,
                                            child: Text(
                                              'Property for rent',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff9AB9FF),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/tv.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 48,
                                            child: Text(
                                              'Electronic & Home ...',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffFE645C),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/bike.jpg'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Bikes',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffFFE893),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/buildings.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 55,
                                            child: Text(
                                              'Business, Industrial ...',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffFE645B),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/service.jpg'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Services',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffBDC6CD),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/bag.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Jobs',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff91F4F0),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/animals.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Animals',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffD2B981),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/chair.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 45,
                                            child: Text(
                                              'Furniture & Hom...',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff23E6D8),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/shirt.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 45,
                                            child: Text(
                                              'Fasion & Beauity',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffF9DD3C),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/guitar.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            width: 40,
                                            child: Text(
                                              'Books, Sports ...',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 85.0,
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff9BB9FF),
                                            radius: 30,
                                            child: ImageIcon(
                                              AssetImage('image/pencil.png'),
                                              size: 30,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Kids',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],),
                  ),
                ),

              ),
            ];
          },
          body: Padding(padding: EdgeInsets.only(left: 10,right: 10,),child: GridView.count(
            childAspectRatio: 0.75,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            crossAxisCount: 2,
            children: List.generate(20, (index) {
              return Container(
                  decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10),),
                 child: Column(children: [
                   Expanded(child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),image: DecorationImage(image: AssetImage('image/cats.jpg'),fit: BoxFit.fill)),
                   ),),
                   Expanded(child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [Padding(padding: EdgeInsets.only(top: 5,left: 10),child:
                       Row(children: [
                         Text('Persian Cat for Sale',style: TextStyle(fontSize: 13),),
                         SizedBox(width: 35,),
                         Icon(Icons.favorite_border,size: 18,)
                       ],),),
                         Padding(padding: EdgeInsets.only(top: 10,left: 10),child:
                         Text('Rs 20000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff003134)),),),
                         SizedBox(height: 45,),
                         Padding(padding: EdgeInsets.only(left: 10),child: Row(children: [
                           Text('Multan, Pakistan',style: TextStyle(fontSize: 10,color: Colors.black45),),
                           SizedBox(width: 50,),
                           Text('15 JUNE',style: TextStyle(fontSize: 10,color: Colors.black45),)
                         ],),)
                       ],
                     ),
                     ))
                 ],),);
            }),
          ),)
        ),
    );
  }
}
