import 'package:dartz/dartz.dart';

import 'package:reddit_case/commons/errors/failure.dart';
import 'package:reddit_case/layers/data/datasources/network_datasource.dart';

import '../../../commons/exceptions/exceptions.dart';
import '../../domain/repositories/network_repository.dart';
import '../models/content_model.dart';

class NetworkRepository implements NetworkRepositoryAbs{
  NetworkDatasource networkDatasource = NetworkDatasource();
  @override
  Future<Either<Failure, List<Content>>> getContents() async{
    try {
      final allContents = await networkDatasource.getContents();
      return Right(allContents);
    } catch (e) {
      return Left(Failure());
    }
  }

}