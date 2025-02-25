

void main()
{
  // Nullable 변수 선언 - 타입 뒤에 ? 를 붙임
  String? nullableString; // null 가능
  String nonNullString = "안녕"; // null 불가능

  // null 체크
  if (nullableString != null) {
    print(nullableString.length); // null 아닐때만 접근 가능
  }

  // null-aware operator (?.) 사용
  print(nullableString?.length); // null이면 null 반환, 아니면 length 반환

  // null 병합 연산자 (??) 사용
  String result = nullableString ?? "기본값"; // null이면 기본값 사용

  // late 키워드로 나중에 초기화
  late String lateString;
  // lateString 사용전에 반드시 값 할당 필요
  lateString = "나중에 할당";

  // 강제 null 해제 (!) - 주의: null이면 런타임 에러 발생
  String forcedString = nullableString!; // nullableString이 null이면 에러

  print("Nullable 변수 예시 실행 완료");


  // 타입 캐스팅 예시

  // 1. as 연산자 - 명시적 타입 캐스팅
  num number = 10;
  int intNumber = number as int; // num을 int로 캐스팅
  print('as 연산자: $intNumber');

  // 2. is 연산자 - 타입 체크
  if (number is int) {
    print('number는 int 타입입니다.');
  }

  // 3. is! 연산자 - 타입이 아닌지 체크
  if (number is! double) {
    print('number는 double 타입이 아닙니다.');
  }

  // 4. 다운캐스팅 예시
  Object someText = 'Hello';
  if (someText is String) {
    // 스마트 캐스트: someText를 String으로 자동 인식
    print('문자열 길이: ${someText.length}');
  }

  // 5. 안전하지 않은 캐스팅 예시 (런타임 에러 가능)
  try {
    Object value = 42;
    String text = value as String; // 실패: IntegerDivisionByZeroException
    print(text);
  } catch (e) {
    print('캐스팅 실패: $e');
  }

  // 6. 제네릭 타입 캐스팅
  List<Object> objects = [1, '문자열', true];
  for (var item in objects) {
    if (item is int) {
      print('정수: ${item + 1}');
    } else if (item is String) {
      print('문자열: ${item.toUpperCase()}');
    } else if (item is bool) {
      print('불리언: ${!item}');
    }
  }
}