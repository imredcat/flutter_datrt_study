void main()
{
    var isRainy = false;
    List<int> items = [1,2,3,if (isRainy) 4];
    print(items.length);
}


// Dart 연산자 정리 및 사용 예시

void operatorExamples() 
{
  // 1. 산술 연산자
  int a = 10;
  int b = 3;
  print('덧셈: ${a + b}');      // 13
  print('뺄셈: ${a - b}');      // 7
  print('곱셈: ${a * b}');      // 30
  print('나눗셈: ${a / b}');    // 3.3333...
  print('몫: ${a ~/ b}');       // 3
  print('나머지: ${a % b}');    // 1

  // 2. 증감 연산자
  int x = 5;
  print(x++);    // 5 출력 후 6으로 증가
  print(++x);    // 7로 증가 후 출력
  print(x--);    // 7 출력 후 6으로 감소
  print(--x);    // 5로 감소 후 출력

  // 3. 비교 연산자
  print(a > b);    // true
  print(a < b);    // false
  print(a >= b);   // true
  print(a <= b);   // false
  print(a == b);   // false
  print(a != b);   // true

  // 4. 논리 연산자
  bool t = true;
  bool f = false;
  print(t && f);   // false (AND)
  print(t || f);   // true (OR)
  print(!t);       // false (NOT)

  // 5. 할당 연산자
  int n = 10;
  n += 5;    // n = n + 5
  n -= 3;    // n = n - 3
  n *= 2;    // n = n * 2
  n ~/= 4;   // n = n ~/ 4

  // 6. 조건 연산자 (삼항 연산자)
  int age = 20;
  String status = age >= 18 ? '성인' : '미성년자';

  // 7. null 관련 연산자
  String? nullableStr;
  String result = nullableStr ?? '기본값';    // null이면 기본값 사용
  nullableStr ??= '새값';                     // null일 때만 값 할당

  // 8. 타입 검사 연산자
  var value = 42;
  print(value is int);      // true
  print(value is! String);  // true
}

// 주의사항:
// 1. 나눗셈 연산자(/)는 항상 double을 반환
// 2. 정수 나눗셈은 ~/를 사용
// 3. null 안전성을 위해 ??, ?.과 같은 null 관련 연산자 활용
// 4. 증감 연산자(++, --)의 전위/후위 차이 주의
// 5. 비교 연산에서 ==는 값의 동등성 비교
// 6. 논리 연산자는 단락 평가(short-circuit evaluation) 수행
// 7. is 연산자는 런타임 타입 체크에 사용
// 9. 캐스케이드 연산자 (..)
// 동일한 객체에 대해 연속적인 작업을 수행할 때 유용
class Person {
  String name = '';
  int age = 0;
  
  void setName(String n) { name = n; }
  void setAge(int a) { age = a; }
  void introduce() { print('이름: $name, 나이: $age'); }
}

void cascadeExample() {
  // 캐스케이드 연산자 미사용
  var person1 = Person();
  person1.setName('홍길동');
  person1.setAge(20);
  person1.introduce();

  // 캐스케이드 연산자 사용
  var person2 = Person()
    ..setName('김철수')
    ..setAge(25)
    ..introduce();

  // 캐스케이드 연산자는 메서드 체이닝과 다름
  // 각 작업이 원본 객체를 반환하지 않아도 됨
}

// 주의사항:
// 1. 캐스케이드 연산자는 null이 아닌 객체에만 사용 가능
// 2. null 가능성이 있는 객체는 ?.. 연산자 사용
// 3. 메서드 체이닝과 혼동하지 말 것
