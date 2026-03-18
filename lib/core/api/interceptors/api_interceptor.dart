// import 'dart:developer';

// import 'package:dio/dio.dart';

// class ApiInterceptor extends Interceptor {
//   static const String _retryKey = 'retry_attempt';
//   static final Set<String> _refreshingTokens =
//       {}; // Prevent multiple refresh calls

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) {
//     final accessToken = CacheHelper().getData(key: ApiKey.accessToken);
//     options.headers[ApiKey.authorization] =
//         accessToken != null ? "Bearer $accessToken" : null;
//     // log("Authorization: ${options.headers[ApiKey.authorization]}");
//     super.onRequest(options, handler);
//   }

//   @override
//   Future<void> onError(
//     DioException err,
//     ErrorInterceptorHandler handler,
//   ) async {
//     // Don't retry if already attempted
//     if (err.requestOptions.extra[_retryKey] == true) {
//       return handler.next(err);
//     }

//     // Handle 401 Unauthorized - token expired
//     if (err.response?.statusCode == 401) {
//       final refreshToken = CacheHelper().getData(key: ApiKey.refreshToken);

//       if (refreshToken != null) {
//         // Prevent multiple simultaneous token refresh calls
//         final isAlreadyRefreshing = _refreshingTokens.contains(refreshToken);

//         if (!isAlreadyRefreshing) {
//           _refreshingTokens.add(refreshToken);

//           try {
//             final isRefreshed =
//                 await reGenerateToken(refreshToken: refreshToken);

//             if (isRefreshed) {
//               final accessToken =
//                   CacheHelper().getData(key: ApiKey.accessToken);
//               err.requestOptions.headers[ApiKey.authorization] =
//                   "Bearer $accessToken";
//               err.requestOptions.extra[_retryKey] = true;

//               try {
//                 final response = await globalDio.request(
//                   err.requestOptions.path,
//                   options: Options(
//                     method: err.requestOptions.method,
//                     headers: err.requestOptions.headers,
//                   ),
//                   data: err.requestOptions.data,
//                   queryParameters: err.requestOptions.queryParameters,
//                 );
//                 return handler.resolve(response);
//               } catch (e) {
//                 return handler.next(err);
//               }
//             }
//           } finally {
//             _refreshingTokens.remove(refreshToken);
//           }
//         }
//       }
//     }

//     return handler.next(err);
//   }
// }
