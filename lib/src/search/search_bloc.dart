import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

// Reduce down to one bloc?
class SearchBloc extends BlocBase {
  SearchBloc({this.service});

  final SupplyService service;

  BehaviorSubject<List<Result>> _searchController = BehaviorSubject<List<Result>>();
  Observable<List<Result>> get results => _searchController.stream;

  void search({String query}) async {
    if (query == "") return;

    try {
      ProductSearchResponse response = await service.search(query: query);
      _searchController.add(response.results);
    } catch (e) {}
  }

  @override
  void dispose() {
    _searchController.close();
  }
}
