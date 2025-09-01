sealed class ApiResult<T>{ /// عشان اهندل حتة الايرور بتاع ال api واية هيا ال sealed class دا دا ما هوا الا انك مينفعش تستخدم ال class برة الفايل الي هوا تعملوا  extands لي هوا في فايل تاني مش هيظهر ولو حتي ظهر هيضرب ايرور انما الباقي يظهر الي هوا SuccessApiResult والباقي دا  هيظهر عادي

  bool get hasData => this is SuccessApiResult; /// دول انا عملت كدا عشان مروحش اعمل ifcondition في فايل ال login حتة ال blocListener
  bool get hasError => this is ErrorApiResult;
  AppErrors get getError => (this as ErrorApiResult).errors;
  T get getData => (this as SuccessApiResult).data;
  bool get isLoading => this is LoadingApiResult;

}


class SuccessApiResult<T> extends ApiResult<T> {  /// هنا اية مينفعش انك تعرف ال data بحاجاة معينة لا انا اعايزها تشتغل مع كل ال api مش ال login and register بس لا انا كمان مع باقي ال api فكان قدامي حل هوا يا اما اكتب dynamic بس بردوا هاعمل if conditions عليها هوا انا login هوا انا category كدا  يا اما اعمل <T> دية سعني templete ممكن تسميها اي حاجة تانية عادي بردو طب مهمتها اية اني بدل ما اعمل dynamic لا انا هاقولوا انا مثلا ال data دية نوعها اية وانتا بتبعتها زي الليستة كدا list<> مش لازم تعرف الليستة دية نوعها اية هيا زيها كدا
 T? data ;
 SuccessApiResult(this.data);
}
class LoadingApiResult<T> extends ApiResult<T> {}
class ErrorApiResult<T> extends ApiResult<T> {
  AppErrors errors ;
  ErrorApiResult(this.errors);
}
class InitialApiResult<T> extends ApiResult<T> {}


class AppErrors{/// ممكن بردوا الايرور يبقا نت او سيرفر بايظ او ايرور مش معروف او بردو حاجات تانية
  String message ;
  AppErrors(this.message);
}

class NetworkError extends AppErrors{
  NetworkError(super.message);

}

class ServerError extends AppErrors{
  ServerError(super.message);
}

class IgnoredError extends AppErrors{
  IgnoredError(super.message);
}

class UnKnownError extends AppErrors{
  UnKnownError(super.message);
}

