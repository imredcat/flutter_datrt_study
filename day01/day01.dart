void main() {
  // 다트의 기본 자료형(Data Types)

  
  print('Hello, World!');
  print("Hello, World!");
  print("한줄 주석은 // 슬래시 두번");
  print("여러줄 주석은 /* */ 사용");

  // 다트의 기본 자료형(Data Types)
  
  // 1. Numbers
  // - int: 정수형 (-2^63 ~ 2^63 - 1)
  //   * 메모리를 적게 사용하므로 정수 계산에 효율적
  //   * 오버플로우 주의 필요
  // - double: 부동 소수점 숫자 
  //   * 정밀한 소수점 계산 필요시 사용
  //   * 부동소수점 오차 발생 가능성 있음
  int number = 42;
  double pi = 3.14;
  print('정수: $number, 실수: $pi');

  // 2. Strings
  // - 문자열 데이터를 저장하는 타입
  // - 작은따옴표('') 또는 큰따옴표("") 사용 가능
  // - 여러 줄 문자열은 ''' 또는 """ 사용
  // - 문자열 보간($변수명, ${표현식})으로 동적 값 삽입 가능
  // - 불변(immutable) 객체이므로 한번 생성된 문자열은 수정 불가
  String name = '다트';
  String message = "안녕하세요 $name!";
  print(message);

  // 3. Booleans
  // - 조건문과 논리 연산에 사용
  // - null safety 적용시 bool? 사용하여 null 허용 가능
  // - 초기화하지 않으면 null 가능성 있으므로 주의
  bool isTrue = true;
  bool isFalse = false;
  bool? isBoolNull;
  print('불리언 값: $isTrue, $isFalse $isBoolNull');

  // 4. Lists
  // - 순서가 있는 컬렉션으로 동적 크기 조절 가능
  // - 타입 지정 필수(제네릭 사용)
  // - .add(), .remove() 등 다양한 메서드 제공
  // - 인덱스 범위 초과시 예외 발생하므로 범위 체크 필요
  List<int> numbers = [1, 2, 3, 4, 5];
  print('리스트: $numbers');
  print('첫번째 요소: ${numbers[0]}');

  // 5. Maps
  // - 키-값 쌍으로 데이터 저장
  // - 키는 고유해야 하며 중복 불가
  // - 키와 값의 타입을 명확히 지정하는 것이 좋음
  // - 존재하지 않는 키 접근시 null 반환
  Map<String, dynamic> person = {
    'name': '홍길동',
    'age': 20,
    'isStudent': true
  };
  print('맵: $person');
  print('이름: ${person['name']}');

  // 6. Sets
  // - 중복을 허용하지 않는 컬렉션
  // - 순서가 중요하지 않을 때 사용
  // - 데이터 존재 여부 확인에 효율적
  // - .add()로 추가시 중복값은 무시됨
  Set<String> fruits = {'사과', '바나나', '오렌지', '사과'};
  print('세트: $fruits');
  fruits.add('바나나');
  fruits.add('수박');
  print('추가된 세트: $fruits');

  // 7. Runes
  // - 유니코드 문자를 다룰 때 사용
  // - 이모지 등 특수 문자 처리에 유용
  // - UTF-16 인코딩 사용
  // - 문자열 처리시 인코딩 주의 필요
  Runes runes = Runes('안녕 👋');
  print('룬스: ${String.fromCharCodes(runes)}');

  // 8. Symbols
  // - 컴파일 타임 상수로 사용
  // - 리플렉션에서 메타데이터 접근시 활용
  // - 문자열보다 비교 연산이 빠름
  // - 디버깅이 어려울 수 있으므로 필요한 경우에만 사용
  // MirrorSystem은 dart:mirrors 패키지의 일부로 리플렉션 기능을 제공
  // 하지만 dart:mirrors는 웹과 Flutter에서는 지원되지 않아 일반적으로 사용을 피해야한다.
  Symbol sym = #example;
  print('심볼: ${sym.toString().substring(8, sym.toString().length - 1)}'); // "example" 출력
  Symbol al = #alra; 
  print('심볼: ${al.toString().substring(8, al.toString().length - 1)}'); // "alra" 출력
  // MirrorSystem 예시
  // 주의: dart:mirrors는 웹과 Flutter에서 지원되지 않습니다
  // 아래 코드는 명시적으로 dart:mirrors를 import 해야 실행 가능
  /*
  import 'dart:mirrors';

  // 클래스 정의
  class Person {
    String name;
    int age;
    
    Person(this.name, this.age);
    
    void introduce() {
      print('안녕하세요, 저는 $name이고 $age살입니다.');
    }
  }

  // MirrorSystem 사용 예시
  void reflectionExample() {
    Person person = Person('홍길동', 20);
    
    // 인스턴스에 대한 미러 생성
    InstanceMirror im = reflect(person);
    
    // 클래스에 대한 미러 생성
    ClassMirror cm = im.type;
    
    // 클래스 이름 출력
    print('클래스 이름: ${MirrorSystem.getName(cm.simpleName)}');
    
    // 메서드 목록 출력
    print('메서드 목록:');
    cm.declarations.values.whereType<MethodMirror>().forEach((method) {
      print(' - ${MirrorSystem.getName(method.simpleName)}');
    });
    
    // 필드 값 접근
    print('필드 값:');
    cm.declarations.values.whereType<VariableMirror>().forEach((variable) {
      var name = MirrorSystem.getName(variable.simpleName);
      var value = im.getField(variable.simpleName).reflectee;
      print(' - $name: $value');
    });
  }
  */

  // 9. dynamic
  // - 모든 타입을 허용하는 동적 타입
  // - 타입 안정성이 떨어지므로 가능한 구체적 타입 사용 권장
  // - 런타임 에러 발생 가능성 높음
  // - 성능상 불이익이 있을 수 있음
  dynamic dynamicVar = 100;
  print('동적 변수(숫자): $dynamicVar');
  dynamicVar = "문자열로 변경";
  print('동적 변수(문자열): $dynamicVar');

}
