import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/models/models.dart';
import 'package:ecommerce_app/models/wishlist_model.dart';
import 'dart:async';

part 'wishlist_state.dart';
part 'wishlist_event.dart';

class WishlistBloc extends Bloc<WishListEvent, WishListState> {
  WishlistBloc() : super(WishListLoading());

  @override
  Stream<WishListState> mapEvenToState(
    WishListEvent event,
  ) async* {
    if (event is StarWishList) {
      yield* _mapStarWishlishToState();
    } else if (event is AddWishListProduct) {
      yield* _mapAddWishlishProductToState(event, state);
    } else if (event is RemoveWishListProduct) {
      yield* _mapRemoveWishlishProductToState(event, state);
    }
  }

  Stream<WishListState> _mapStarWishlishToState() async* {
    // yield const WishListLoaded();
    yield WishListLoading();
    try{
      await Future<void>.delayed(Duration(seconds: 1));
      yield const WishListLoaded();
    } catch (_){}
  }

  Stream<WishListState> _mapAddWishlishProductToState(
    AddWishListProduct event,
    WishListState state,
  ) async* {
    if (state is WishListLoaded) {
      try {
        yield WishListLoaded(wishList: WishList(products: List.from(state.wishList.products)..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<WishListState> _mapRemoveWishlishProductToState(
    RemoveWishListProduct event,
    WishListState state,
  ) async* {
    if (state is WishListLoaded) {
      try {
        yield WishListLoaded(wishList: WishList(products: List.from(state.wishList.products)..remove(event.product)));
      } catch (_) {}
    }
  }
}
