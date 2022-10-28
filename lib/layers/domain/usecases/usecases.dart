
import 'package:dartz/dartz.dart';

import 'package:reddit_case/commons/errors/failure.dart';
import 'package:reddit_case/layers/data/repositories/network_repository_impl.dart';

import '../../data/models/content_model.dart';
import '../repositories/network_repository.dart';

class UseCases implements NetworkRepositoryAbs {
  NetworkRepository networkRepository =NetworkRepository();


  @override
  Future<Either<Failure, List<Content>>> getContents()async {
  return await networkRepository.getContents();
  }

}
