import 'package:poke_bloc_getit_clean/src/features/poke_details/entities/name_url_pair_entity.dart';
import 'package:poke_bloc_getit_clean/src/features/poke_details/models/name_url_pair_model.dart';

extension NameUrlPairEntityExtension on NameUrlPairEntity {
  NameUrlPairModel toModel() {
    return NameUrlPairModel(
      name: name,
      url: url,
    );
  }
}

extension NameUrlPairModelExtension on NameUrlPairModel {
  NameUrlPairEntity toEntity() {
    return NameUrlPairEntity(
      name: name,
      url: url,
    );
  }
}
