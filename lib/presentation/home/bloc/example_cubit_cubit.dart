import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'example_cubit_state.dart';

class ExampleCubitCubit extends HydratedCubit<ExampleCubitState> {
  ExampleCubitCubit() : super(ExampleCubitInitial());
  
  @override
  ExampleCubitState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
  
  @override
  Map<String, dynamic>? toJson(ExampleCubitState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
