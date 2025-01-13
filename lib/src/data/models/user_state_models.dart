import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_mobile/src/data/models/user_models.dart';

part 'user_state_models.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    User? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _UserState;
}
