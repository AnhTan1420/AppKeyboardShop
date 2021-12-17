import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kleyboardshop/Screen/profile.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [

            // home header
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF979797).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Tìm kiếm sản phẩm",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          )
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    child: GestureDetector(
                      onTap: () async {
                        // Get.to(ProFile());
                        Get.to(() => ProFile());
                      },
                      child: CircleAvatar(
                        backgroundImage:
                        NetworkImage("https://toigingiuvedep.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg"),
                        radius: 65.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Banner discount
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Ưu đãi',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text('Xem thêm'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              width: double.infinity,
              // height: 150,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.lightGreen,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: const Text.rich(
                TextSpan(
                    text: 'Đăng ký mới\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                          text: 'Nhận ngay coupon 30%',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ]
                ),

              ),
            ),

            // Products
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Sản Phẩm',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    // Products 01
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 3,
                                      offset: const Offset(2, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                    "assets/images/keyboard1.jpg",
                                    fit: BoxFit.cover
                                ),

                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Text(
                                'Akko 3070 Ocen Star',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.favorite_border,
                                  ),
                                  Text(
                                    '1.990.000 VND',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Products 02
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 3,
                                      offset: const Offset(2, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                    "assets/images/keyboard1.jpg",
                                    fit: BoxFit.cover
                                ),

                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Text(
                                'Akko 3070 Ocen Star',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.favorite_border,
                                  ),
                                  Text(
                                    '1.990.000 VND',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                ],
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
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    // Products 01
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 3,
                                      offset: const Offset(2, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                    "assets/images/keyboard1.jpg",
                                    fit: BoxFit.cover
                                ),

                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Text(
                                'Akko 3070 Ocen Star',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.favorite_border,
                                  ),
                                  Text(
                                    '1.990.000 VND',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Products 02
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 1.4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 3,
                                      offset: const Offset(2, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                    "assets/images/keyboard1.jpg",
                                    fit: BoxFit.cover
                                ),

                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Text(
                                'Akko 3070 Ocen Star',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.favorite_border,
                                  ),
                                  Text(
                                    '1.990.000 VND',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}