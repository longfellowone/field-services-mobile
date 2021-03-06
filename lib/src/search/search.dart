import 'package:flutter/material.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/search/search_bloc.dart';

class ProductSearchDelegate extends SearchDelegate<Product> {
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
        if (query == "" || !snapshot.hasData) {
          return Container();
        }

        if (snapshot.data.length == 0) {
          return ListView(
            children: <Widget>[
              ListTile(
                title: Center(
                  child: Text("No results"),
                ),
              ),
            ],
          );
        }

        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
            final Product product = snapshot.data[index].product;

            return ListTile(
              title: Text(
                product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                close(context, product);
              },
            );
          },
        );
      },
    );
  }
}
