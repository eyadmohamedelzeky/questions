
 import 'package:equatable/equatable.dart';

class Failure  extends Equatable{
  final String? message;

  const Failure(this.message);

  @override
  String toString() => message ?? 'Unexpected error';

  List<Object?> get props => [message];
}

class FetchDataException extends Failure {
  FetchDataException(super.message);
}

class BadRequestException extends Failure {
  BadRequestException(super.message);
}

class UnauthorizedException extends Failure {
  UnauthorizedException(super.message);
}

class NotFoundException extends Failure {
  NotFoundException(super.message);
}

class ConflictException extends Failure {
  ConflictException(super.message);
}

class InternalServerErrorException extends Failure {
  InternalServerErrorException(super.message);
}

class NoInternetConnectionException extends Failure {
  NoInternetConnectionException(super.message);
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure(super.message) ; // Pass null or a default message here
}

class ServerFailure extends Failure {
  ServerFailure(super.message); // Pass the message here
}

class ReadFileFailure extends Failure {
  ReadFileFailure(super.message); // Pass the message here
}

class CacheFailure extends Failure {
  CacheFailure(super.message); // Pass the message here
}
