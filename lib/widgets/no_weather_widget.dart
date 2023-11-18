import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const Text(
            //   'there is no weather 😔 ',
            //   style: TextStyle(
            //     fontSize: 30,
            //   ),
            // ),
            Image.asset('assets/images/Group 16.png'),
            const SizedBox(
              height: 20,
            ),

            const Text(
              'search for a city now',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SearchView();
                      },
                    ),
                  );
                },
                child: const Text(
                  'start',
                  style: TextStyle(fontSize: 22),
                ))
            // IconButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return const SearchView();
            //         },
            //       ),
            //     );
            //   },
            //   icon: const Icon(Icons.search),
            //   iconSize: 50,
            // ),
          ],
        ),
      ),
    );
  }
}
