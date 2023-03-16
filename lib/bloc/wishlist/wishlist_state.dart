import 'package:equatable/equatable.dart';

import 'wishlist_bloc.dart';

abstract class WishListState extends Equatable{
  const WishListState();
}

class WishListLoading extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class WishListLoaded extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class WishListError extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}