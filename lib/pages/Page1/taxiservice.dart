import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taxiService extends StatefulWidget {
  const taxiService({super.key});

  @override
  State<taxiService> createState() => _taxiServiceState();
}

class _taxiServiceState extends State<taxiService> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 234,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12, // Border color
          width: 1, // Border width
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform.translate(
              offset: const Offset(10, 0),
              child: const Text(
                'Taxi Service',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 92,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    child  : Column(
                      children : [
                        const SizedBox(height: 10,),
                        Image.asset('assets/Screenshot 2024-03-10 182942.png'),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('\$\$\$\$',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 11),),
                            Text('\$',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),),],
                        )

                      ],
                    ),
                  ),
                  Container(
                    width: 92,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    child  : Column(
                      children : [
                        const SizedBox(height: 10,),
                        Image.asset('assets/Screenshot 2024-03-10 183013.png'),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('\$\$\$\$',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 11),),
                            Text('\$',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),),],
                        )

                      ],
                    ),
                  ),
                  Container(
                    width: 92,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black12, // Border color
                        width: 1, // Border width
                      ),
                    ),
                    child  : Column(
                      children : [
                        const SizedBox(height: 10,),
                        Image.asset('assets/Screenshot 2024-03-10 183040.png'),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text('\$\$\$',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 11),),
                            Text('\$\$',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),),],
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(15, 15),
              child: Container(
                width: 92,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black12, // Border color
                    width: 1, // Border width
                  ),
                ),
                child  : Column(
                  children : [
                    Image.asset('assets/Screenshot 2024-03-10 183110.png'),
                    const Text('\$\$\$\$\$',style: TextStyle(fontWeight: FontWeight.w900, fontSize: 11),),
                  ],
                ),
              ),
            ),
          ], // taxi service
        ),
      ),
    );
  }
}
