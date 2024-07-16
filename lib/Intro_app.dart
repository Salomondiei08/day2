import 'package:flutter/material.dart';

import 'models/intro_model.dart';

class IntroApp extends StatefulWidget {
  const IntroApp({super.key});

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        itemCount: introList.length,
        itemBuilder: (context, index) => introList
            .map(
              (intro) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(intro.imageUrl),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: const [0.3, 0.9],
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              index.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '/${introList.length}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                intro.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  for (var i = 0; i < intro.rating; i++)
                                    const Icon(
                                      size: 20,
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  for (var i = 0; i < 5 - intro.rating; i++)
                                    const Icon(
                                      size: 20,
                                      Icons.star,
                                      color: Colors.white54,
                                    ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${intro.rating}/5.0",
                                    style: const TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "(${intro.viewNumber})",
                                    style: const TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                intro.description,
                                style: const TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "READ MORE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList()[index],
      ),
    );
  }
}
