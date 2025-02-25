// Dart 언어 기본 사용법 및 유의사항 예시

// 1. 변수 선언과 타입
void variableExample() {
  // var: 타입 추론
  var name = '홍길동';  // String으로 추론됨
  
  // 명시적 타입 선언
  String title = '제목';
  int age = 25;
  double height = 175.5;
  bool isStudent = true;
  
  // const: 컴파일 시 값이 할당되는 상수
  const pi = 3.14;
  
  // final: 런타임 시 값이 할당되는 상수 (한 번만 할당 가능)
  final now = DateTime.now();
}

// 2. 컬렉션
void collectionExample() {
  // List
  List<String> fruits = ['사과', '바나나', '오렌지'];
  fruits.add('포도');
  
  // Set (중복 불허)
  Set<int> numbers = {1, 2, 3, 3}; // {1, 2, 3}
  
  // Map
  Map<String, int> ages = {
    '홍길동': 20,
    '김철수': 25
  };
}

// 3. 함수
int add(int a, int b) {
  return a + b;
}

// 화살표 함수
int multiply(int a, int b) => a * b;

// 선택적 매개변수
void printInfo(String name, {int? age, String? city}) {
  print('이름: $name, 나이: $age, 도시: $city');
}

// 4. 클래스
class Person {
  String name;
  int age;
  
  // 생성자
  Person(this.name, this.age);
  
  // 메서드
  void introduce() {
    print('안녕하세요, 저는 $name이고 $age살입니다.');
  }
}

// 5. 비동기 프로그래밍
Future<void> asyncExample() async {
  try {
    // await 키워드로 비동기 작업 대기
    String result = await Future.delayed(
      Duration(seconds: 2),
      () => '작업 완료',
    );
    print(result);
  } catch (e) {
    print('에러 발생: $e');
  }
}

// 6. 예외 처리
void exceptionExample() {
  try {
    int result = 12 ~/ 0; // 0으로 나누기 시도
  } on IntegerDivisionByZeroException {
    print('0으로 나눌 수 없습니다.');
  } catch (e) {
    print('기타 에러: $e');
  } finally {
    print('항상 실행되는 코드');
  }
}

// 7. 믹스인 예시
mixin Logger {
  void log(String message) {
    print('로그: $message');
  }
}

class BusinessLogic with Logger {
  void doSomething() {
    log('작업 수행 중...');
  }
}

// 8. 제네릭 사용 예시
class Stack<T> {
  final List<T> _items = [];
  
  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
}

// 9. 열거형(enum) 예시
enum Color { red, green, blue }

// 10. 확장 메서드
extension StringExtension on String {
  String addExclamation() => this + '!';
}


//Null Safty 
String name = null // 에러
String? name = null // 정상(nullable)
late String name;   // 나중에 초기화할 변수