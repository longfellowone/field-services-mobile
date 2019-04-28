import 'package:flutter/material.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/search/search_bloc.dart';

class ProductSearchDelegate extends SearchDelegate {
  ProductSearchDelegate({this.searchBloc});

  final SearchBloc searchBloc;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _results();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    searchBloc.search(query: query);

    return _results();
  }

  Widget _results() {
    return StreamBuilder<List<Result>>(
      stream: searchBloc.results,
      builder: (BuildContext context, AsyncSnapshot<List<Result>> snapshot) {
        if (query == "") {
          return Container();
        }

        if (!snapshot.hasData) {
          return Text("no results");
        }

        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                snapshot.data[index].product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
//              leading: Icon(Icons.add_circle_outline),
              onTap: () {
                close(context, snapshot.data[index].product);
              },
            );
          },
        );
      },
    );
  }
}
