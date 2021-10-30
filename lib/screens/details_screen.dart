import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop1/constraints.dart';
import 'package:workshop1/models/attraction_model.dart';

class DetailsPage extends StatelessWidget {
  AttractionModel? selectedModel;

  DetailsPage({Key? key, this.selectedModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(selectedModel!.imgPath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedModel!.name!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  selectedModel!.location!,
                  style: const TextStyle(
                    color: mainYellow,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  selectedModel!.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton (
                      onPressed: () {},
                      child: const Text(
                        'View Comments',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        color: mainYellow,
                        child: InkWell(
                          onTap: (){},
                          splashColor: Colors.black.withOpacity(0.1),
                          highlightColor: Colors.black.withOpacity(0.2),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: const Text(
                              'Use Itinerary',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: mainYellow),
            title: const Icon(Icons.airplanemode_on, color: mainYellow),
            centerTitle: true,
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.favorite),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
