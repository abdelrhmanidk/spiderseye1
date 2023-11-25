import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final void Function(String) onSearch;

  const SearchBarWidget(
      {super.key, required this.hintText, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
          const SizedBox(
              width: 10), // Add some spacing between the text field and icon
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              onSearch(_controller.text);
            },
          ),
        ],
      ),
    );
  }
}
