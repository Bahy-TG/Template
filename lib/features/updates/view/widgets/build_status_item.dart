import 'package:flutter/material.dart';


import '../../../../models/status_model.dart';

class BuildStatusItem extends StatelessWidget {


  const BuildStatusItem({
    super.key,
    required this.statusModel,
      });
  final StatusModel statusModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              statusModel.imageUrl,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 100,
                height: 140,
                color: Colors.grey.shade300,
                child: const Icon(Icons.error),
              ),
            ),
          ),

          const SizedBox(height: 6),
          Text(statusModel.userName, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
