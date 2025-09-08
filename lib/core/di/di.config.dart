// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/repositories/auth/auth_repository_impl.dart'
    as _i138;
import '../../features/auth/data/repositories/auth/data_sources/auth_remote_data_source.dart'
    as _i61;
import '../../features/auth/data/repositories/auth/data_sources/auth_remote_data_source_impl.dart'
    as _i948;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecase/login_and_register_usecase.dart'
    as _i1024;
import '../../features/auth/ui/login/cubit/login_cubit.dart' as _i416;
import '../../features/auth/ui/login/cubit/register_cubit.dart' as _i980;
import '../../features/network/api/commerce_services.dart' as _i392;
import '../../features/products/ui/cubit/category_products_cubit.dart' as _i686;
import '../../features/screens_navigationBar_layout/data/home_repository/data_source/home_remote_data_source.dart'
    as _i412;
import '../../features/screens_navigationBar_layout/data/home_repository/data_source/home_remote_data_source_impl.dart'
    as _i719;
import '../../features/screens_navigationBar_layout/data/home_repository/home_repository_impl.dart'
    as _i193;
import '../../features/screens_navigationBar_layout/data/mappers/category_mapper.dart'
    as _i979;
import '../../features/screens_navigationBar_layout/data/mappers/product_mapper.dart'
    as _i772;
import '../../features/screens_navigationBar_layout/domian/repository/home_repository.dart'
    as _i20;
import '../../features/screens_navigationBar_layout/domian/usecase/load_categories_use_case.dart'
    as _i555;
import '../../features/screens_navigationBar_layout/domian/usecase/load_products_use_case.dart'
    as _i129;
import '../../features/screens_navigationBar_layout/domian/usecase/load_subcategories.dart'
    as _i515;
import '../../features/screens_navigationBar_layout/tabs/categories/presentation/cubit/categories_cubit.dart'
    as _i341;
import '../../features/screens_navigationBar_layout/tabs/home/presentation/cubit/home_tab_cubit.dart'
    as _i595;
import '../shared_pref_helper/shared_pref_helper.dart' as _i1062;
import 'get_it_modules.dart' as _i320;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final getItModule = _$GetItModule();
    gh.factory<_i361.Dio>(() => getItModule.getDio());
    gh.factory<_i1062.SharedPrefsHelper>(() => _i1062.SharedPrefsHelper());
    gh.factory<_i979.CategoryMapper>(() => _i979.CategoryMapper());
    gh.factory<_i772.ProductMapper>(() => _i772.ProductMapper());
    gh.factory<_i392.CommerceServices>(
      () => _i392.CommerceServices.new(gh<_i361.Dio>()),
    );
    gh.factory<_i412.HomeRemoteDataSource>(
      () => _i719.HomeRemoteDataSourceImpl(gh<_i392.CommerceServices>()),
    );
    gh.factory<_i61.AuthRemoteDataSource>(
      () => _i948.AuthRemoteDataSourceImpl(gh<_i392.CommerceServices>()),
    );
    gh.factory<_i20.HomeRepository>(
      () => _i193.HomeRepositoryImpl(
        gh<_i412.HomeRemoteDataSource>(),
        gh<_i979.CategoryMapper>(),
        gh<_i772.ProductMapper>(),
      ),
    );
    gh.factory<_i787.AuthRepository>(
      () => _i138.AuthRepositoryImpl(
        gh<_i61.AuthRemoteDataSource>(),
        gh<_i1062.SharedPrefsHelper>(),
      ),
    );
    gh.factory<_i555.LoadCategoriesUseCase>(
      () => _i555.LoadCategoriesUseCase(gh<_i20.HomeRepository>()),
    );
    gh.factory<_i129.LoadProductsUseCase>(
      () => _i129.LoadProductsUseCase(gh<_i20.HomeRepository>()),
    );
    gh.factory<_i515.LoadSubCategoriesUseCase>(
      () => _i515.LoadSubCategoriesUseCase(gh<_i20.HomeRepository>()),
    );
    gh.factory<_i1024.LoginUseCse>(
      () => _i1024.LoginUseCse(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i1024.RegisterUseCase>(
      () => _i1024.RegisterUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i595.HomeTabCubit>(
      () => _i595.HomeTabCubit(
        gh<_i555.LoadCategoriesUseCase>(),
        gh<_i129.LoadProductsUseCase>(),
      ),
    );
    gh.factory<_i980.RegisterCubit>(
      () => _i980.RegisterCubit(gh<_i1024.RegisterUseCase>()),
    );
    gh.factory<_i686.CategoryProductsCubit>(
      () => _i686.CategoryProductsCubit(gh<_i129.LoadProductsUseCase>()),
    );
    gh.factory<_i341.CategoriesCubit>(
      () => _i341.CategoriesCubit(
        gh<_i555.LoadCategoriesUseCase>(),
        gh<_i515.LoadSubCategoriesUseCase>(),
      ),
    );
    gh.factory<_i416.LoginCubit>(
      () => _i416.LoginCubit(gh<_i1024.LoginUseCse>()),
    );
    return this;
  }
}

class _$GetItModule extends _i320.GetItModule {}
