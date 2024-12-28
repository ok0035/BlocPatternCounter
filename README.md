### README.md

```markdown
# 플러터 카운터 앱 (BLoC 패턴 적용)

이 프로젝트는 **플러터(Flutter)**로 개발된 간단한 카운터 앱이며, 상태 관리를 위해 **BLoC (Business Logic Component)** 패턴을 적용했습니다.  
BLoC 패턴을 통해 비즈니스 로직과 UI를 분리하여 깔끔하고 확장 가능한 코드를 구현하는 방법을 보여줍니다.

---

## 주요 기능

- 카운터 값 증가 및 감소.
- **flutter_bloc** 패키지를 사용한 상태 관리.
- 이벤트(Event)와 상태(State)를 통해 명확하게 비즈니스 로직을 관리.

---

## 프로젝트 구조

```
lib/
├── bloc/
│   ├── counter_bloc.dart       # 비즈니스 로직 처리
│   ├── counter_event.dart      # 카운터 관련 이벤트 정의
│   └── counter_state.dart      # 카운터 상태 정의
├── screens/
│   └── counter_screen.dart     # UI 화면
├── main.dart                   # 앱 진입점
```

---

## 시작하기

### 사전 준비
이 프로젝트를 실행하려면 아래 환경이 필요합니다:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- Android Studio 또는 Visual Studio Code (Flutter/Dart 플러그인 설치)

### 설치 및 실행
1. 저장소 클론:
   ```bash
   git clone <저장소-URL>
   cd <프로젝트-폴더>
   ```

2. 의존성 설치:
   ```bash
   flutter pub get
   ```

3. 앱 실행:
   ```bash
   flutter run
   ```

---

## 구현 상세

### 상태 관리: BLoC
이 프로젝트는 **flutter_bloc** 패키지를 사용하여 상태를 관리합니다. BLoC 패턴의 핵심 요소는 다음과 같습니다:

1. **이벤트 (Event)**
    - `IncrementEvent`: "+" 버튼을 눌렀을 때 발생.
    - `DecrementEvent`: "-" 버튼을 눌렀을 때 발생.

2. **상태 (State)**
    - `CounterInitial`: 초기 상태로, 카운터 값이 0으로 설정.
    - `CounterUpdated`: 카운터 값이 변경된 상태를 나타냄.

3. **Bloc**
    - 이벤트를 수신하고, 비즈니스 로직을 처리한 후 새로운 상태를 방출.

### UI
`BlocBuilder` 위젯을 사용해 상태(State)가 변경될 때마다 UI가 업데이트됩니다.

---

## 예제 코드

### 카운터 증가/감소 로직 (`CounterBloc`에서)
```dart
on<IncrementEvent>((event, emit) {
  emit(CounterUpdated(state.counter + 1));
});

on<DecrementEvent>((event, emit) {
  emit(CounterUpdated(state.counter - 1));
});
```

### 동적 UI 업데이트
```dart
BlocBuilder<CounterBloc, CounterState>(
  builder: (context, state) {
    return Text(
      'Counter: ${state.counter}',
      style: TextStyle(fontSize: 24),
    );
  },
)
```

---

## 스크린샷

| 초기 상태 | 증가 상태 | 감소 상태 |
|-----------|-----------|-----------|
| ![초기 상태](assets/screenshots/initial.png) | ![증가 상태](assets/screenshots/increment.png) | ![감소 상태](assets/screenshots/decrement.png) |

---

## 사용된 패키지

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): BLoC 패턴 구현을 위한 패키지.
- [equatable](https://pub.dev/packages/equatable): 상태 비교를 간소화.

---

## 기여

기여는 언제나 환영합니다! Pull Request를 보내주시거나 Issue를 작성해주세요.

---

## 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.
```

---

### **README 작성 팁**
- **스크린샷 추가**: 프로젝트 실행 후 앱 화면을 캡처해 `assets/screenshots` 폴더에 저장하고, 경로를 수정해줘.
- **저장소 URL**: `<저장소-URL>` 부분을 실제 GitHub 저장소 URL로 교체.
