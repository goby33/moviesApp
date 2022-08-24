import '../models/movieDetails/movies_details_models.dart';
import '../network/network_helper.dart';
import '../network/network_service.dart';
import '../network/query_param.dart';

class MovieDetailsRepository {
  final String _baseUrl = "https://api.themoviedb.org/3/movie/";

  Future<MoviesDetailsModels> getDiscoverMovies({required String id}) async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.get, url: _baseUrl+id , queryParam: QP.apiQP(page: '2'));
    return NetworkHelper.filterResponse(
        callBack: (json) => MoviesDetailsModels.fromJson(json),
        response: response,
        onFailureCallBackWithMessage: (errorType, msg) =>
        throw Exception('An Error has happened, $errorType - $msg')
    );
  }
}
