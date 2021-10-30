import 'package:flutter/material.dart';
import 'package:workshop1/dummy_attractions.dart';
import 'package:workshop1/models/attraction_model.dart';
import 'attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemCount: attractions.length,
        itemBuilder: (context, index) {
          AttractionModel currentAttraction = attractions[index];
          return AttractionCard(attractionModel: currentAttraction);
        },
      ),
    );
  }
}
