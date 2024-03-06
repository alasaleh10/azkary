import 'package:flutter_bloc/flutter_bloc.dart';

part 'ahadeeth_state.dart';

class AhadeethCubit extends Cubit<AhadeethState> {
  AhadeethCubit() : super(AhadeethInitial());
}
