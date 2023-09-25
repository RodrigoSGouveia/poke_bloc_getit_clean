import 'package:flutter/material.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/entities/entities.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_list/pages/poke_list_page/ui/widgets/eternal_list_card.dart';

class EternalList extends StatefulWidget {
  final List<ListResultEntity> list;
  const EternalList({super.key, required this.list});

  @override
  State<EternalList> createState() => _EternalListState();
}

class _EternalListState extends State<EternalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return EternalListCard(
          name: widget.list[index].name,
          url: widget.list[index].url,
          index: index,
        );
      },
    );
  }
}
