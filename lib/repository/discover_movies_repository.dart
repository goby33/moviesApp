import 'package:app_movies/models/discoverMovies/discover_movies_models.dart';
import 'package:app_movies/network/network_helper.dart';
import 'package:app_movies/network/network_service.dart';
import 'package:app_movies/network/query_param.dart';



class DiscoverMoviesRepository {
  final String _baseUrl = "https://api.themoviedb.org/3/discover/movie";


  Future<DiscoverMoviesModels> getDiscoverMovies(String page) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.get, url: _baseUrl , queryParam: QP.apiQP(page: page));
    return NetworkHelper.filterResponse(
        callBack: (json) => DiscoverMoviesModels.fromJson(json),
        response: response,
        onFailureCallBackWithMessage: (errorType, msg) =>
            throw Exception('An Error has happened, $errorType - $msg')
    );
  }
}
