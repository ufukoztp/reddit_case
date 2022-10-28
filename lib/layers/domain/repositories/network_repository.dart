

import 'package:dartz/dartz.dart';
import 'package:reddit_case/commons/errors/failure.dart';

abstract class NetworkRepositoryAbs {
 Future<Either<Failure,List>>getContents();
 }
