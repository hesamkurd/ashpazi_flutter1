import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/big.text.dart';
import 'package:flutter_application_1/widgets/text.category.dart';

import '../../../unit/app.layout.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = AppLayout.getHeight(200);

  List listImages = const [
    DecorationImage(image: AssetImage('assets/images/food2.png')),
    DecorationImage(image: AssetImage('assets/images/food3.png')),
    DecorationImage(image: AssetImage('assets/images/food4.png')),
    DecorationImage(image: AssetImage('assets/images/food5.png')),
    DecorationImage(image: AssetImage('assets/images/food6.png')),
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print('current page value is : $_currentPageValue');
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          // view pager and indicator
          SizedBox(
            height: AppLayout.getHeight(200),
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),
          ),
          SizedBox(
            height: AppLayout.getHeight(16),
          ),
          DotsIndicator(
            dotsCount: 5,
            position: _currentPageValue,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeColor: Colors.red,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          SizedBox(height: AppLayout.getHeight(16)),
          // popular category
          const TextCategory(text: 'دسته بندی های محبوب شما'),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
          Container(
            width: AppLayout.getScreenWidth(),
            height: AppLayout.getHeight(65),
            margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(11)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: AppLayout.getWidth(80),
                        height: AppLayout.getHeight(40),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(8)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/food2.png'))),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(4),
                      ),
                      const Text(
                        'آشپزی',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(16),
          ),
          // newest video
          Container(
            width: AppLayout.getScreenWidth(),
            height: AppLayout.getHeight(300),
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(11),
                vertical: AppLayout.getHeight(5)),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(5)),
                      width: AppLayout.getWidth(150),
                      height: AppLayout.getHeight(300),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text('جدیدترین\n ویدیوهای \n آموزشی',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          )),
                    );
                  } else if (index == 6) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(5)),
                      width: AppLayout.getWidth(150),
                      height: AppLayout.getHeight(300),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_circle_left_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: AppLayout.getHeight(4),
                            ),
                            const Text(
                              'مشاهده همه',
                              style: TextStyle(color: Colors.black87),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(5)),
                      width: AppLayout.getWidth(150),
                      height: AppLayout.getHeight(300),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/food2.png'))),
                    );
                  }
                }),
          ),

          // most visited video
          SizedBox(
            height: AppLayout.getHeight(16),
          ),
          const TextCategory(text: 'پربازدیدترین ویدیوها'),
          SizedBox(
            height: AppLayout.getHeight(6),
          ),
          Container(
            width: AppLayout.getScreenWidth(),
            height: AppLayout.getHeight(160),
            margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(11)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
              return Container(
                height: AppLayout.getHeight(150),
                width: AppLayout.getWidth(150),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                  color: Colors.amber[500],
                  borderRadius: BorderRadius.circular(8)
                ),
              );
            }),
          ),

          // popular course
          SizedBox(height: AppLayout.getHeight(16),),
          const TextCategory(text: 'محبوب ترین دوره ها'),
          SizedBox(height: AppLayout.getHeight(8),),
          Container(
            width: AppLayout.getScreenWidth(),
            height: AppLayout.getHeight(120),
            margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(11)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
              return Container(
                height: AppLayout.getHeight(120),
                width: AppLayout.getWidth(240),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(8)
                ),
              );
            }),
          ),

        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Container(
        height: AppLayout.getHeight(200),
        margin: EdgeInsets.only(
            left: AppLayout.getWidth(8), right: AppLayout.getWidth(8)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(16)),
            color: Colors.red[400],
            image: DecorationImage(
                fit: BoxFit.cover,
                image: index.isEven
                    ? const AssetImage('assets/images/food2.png')
                    : const AssetImage('assets/images/food3.png'))),
      ),
    );
  }
}
