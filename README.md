## 실행 방법
    - flutter 버전  3.41.7 / Dart버전 3.11.5에서 개발되었으며, 해당 버전이하에서는 오류가 발생할 수 있습니다.
    - main.dart 파일에서 디버그 실행 하면 사용 하거나, 안드로이드의 경우 터미널 명령 flutter build apk --debug을 실행하면 apk를 생성하여 설치 가능 합니다.
## 사용한 패키지
    - cupertino_icons
    - flutter_riverpod
    - riverpod_annotation
    - go_router
    - dio
    - retrofit
    - json_annotation
    - freezed
    - freezed_annotation
    - share_plus
    - flutter_native_splash
    - flutter_svg
    - flutter_lints
    - build_runner
    - riverpod_generator
    - retrofit_generator
    - json_serializable

## 프로젝트 구조설명
### 프로젝트 아키텍처 및 폴더 구조

본 프로젝트는 **Clean Architecture**와 **Domain-Centric Feature** 구조를 기반으로 설계되었습니다. 각 기능은 도메인 단위로 그룹화되어 독립성과 유지보수성을 극대화합니다.

### 아키텍처 원칙
    - Domain-Centric: 모든 기능은 features/ 아래 도메인(예: product, cart)별로 폴더를 생성하여 관리하며, 각 도메인은 독립적으로 동작합니다.
    - 의존성 역전 및 분리:
        - 데이터 소스 분리: 모든 데이터 소스는 가급적 해당 Feature 내부에 위치시킵니다. 단, 앱 전역에서 사용되는 범용 데이터(User, Config 등)는 core/data/에 배치합니다.
        - 인터페이스 의존: Feature 간 연동 시, 직접 구현체를 참조하지 않고 **도메인 계층의 인터페이스(Repository)**를 통해 의존성을 주입받습니다.
    - Layer Separation:
        - Data Layer: dio와 retrofit을 사용하여 데이터를 가져오고 DTO(Data Transfer Object)를 정의합니다.
        - Domain Layer: 앱의 핵심 비즈니스 로직과 데이터 모델(Entity)을 정의합니다.
        - Presentation Layer: Riverpod를 사용하여 상태를 관리하고 go_router로 화면을 제어합니다.

### 폴더 구조 개요
```text
lib/
├── src/
│   ├── core/              # 전역 공통 모듈 (네트워크 설정, 테마, 에러 핸들링 등)
│   ├── features/          # 기능별 도메인 그룹
│   │   ├── [feature_name]/
│   │   │   ├── data/      # API Clients(Retrofit), Repository 구현체, DTOs
│   │   │   ├── domain/    # Entities, Repository 인터페이스, UseCases
│   │   │   └── presentation/ # Controllers(Riverpod), Screens, Widgets
│   │   └── ...
│   └── common_widgets/    # 전역 재사용 공용 위젯
└── main.dart
```

## 구현 기능 목록
    - 비디오 피드 화면
        - 비디오 플레이어
            - 더블탭 시 좋아요 add (한번 더 진행 시 좋아요 delete는 안됨)
            - 탭 시 비디오 플레이/일시정지
            - 롱탭 시 비디오 공유
        - 좋아요 (오버레이 버튼)
        - 댓글 (오버레이 버튼) : 바텀시트만 구성하였으며, CRUD 기능은 구현하지 않음.
        - 공유 (오버레이 버튼) 

### AI 사용 내역 및 대화 기록

#### AI 사용여부 : 
    - 사용 (antigravity & gemini)
#### AI를 사용한 작업 범위 : 
    - 위젯 개발
#### 본인이 직접 작성한 부분 : 
    - Domain, Data(repository 목업 부분은 제외), 각 ## 화면에서 사용하는 provider ( video controllers provider는 일부 ai로 수정 진행 하였습니다.)
#### 구현 중 가장 어려웠던 문제와 해결 방식: 
    - 구현 중 가장 어려웠던 문제
        - 비디오 캐싱 부분을 안드로이드의 페이징 컨트롤러 어뎁터에서 착안하여 현재 페이지에서 이전 페이지와 다음 페이지를 미리 init 하는 방식으로 진행하도록 개발을 진행하였으나 페이지 넘어갈 때 PlatformException (PlatformException(VideoError, Video player had error androidx.media3.exoplayer.ExoPlaybackException: Source error, null, null)) 해당 오류 및 지속적으로 로딩이 걸리는 현상이 발생
    - 해결 방식
        - ai를 통해 빠르게 문제 해결을 진행하였으며, 문제는 초기화 과정에서 순차적 대기 상태가 걸려 로딩이 지속적으로 발생하여,
            1. 현재 페이지 우선순위를 먼지 진행되도록 처리
            2. 비동기 프리로딩되도록 awit 대신 then을 사용하여 처리되도록 변경
            3. dispose 된 컨트롤과 새로 인스턴스가 교체 시 비동기로 진행

### [AI코드 에이전트와의 대화 기록](https://github.com/kamuel84/tiktok_clone/blob/main/Building%20TikTok%20Clone%20UI.md)


## Q1. (앱 구조 설계) 현재 프로젝트의 구조를 어떻게 설계했는지 설명해 주세요.
### 폴더 구조 설계 이유
    - 클린아키텍처를 근간으로 폴더 구조를 Domain, Data, Presentaion으로 구성을 하였으며, 예전에 폴더 구성을 domain > feature_name처럼 구성했었는데 이 부분이 운영을 하거나 했을 때 직관적이지 않아 현재의 폴더 구조를 설계하게 되었습니다.
### 상태 관리 방식을 선택한 이유
    - 이전 직장인 중고나라에서는 Getx를 이용을 하였으나 Getx의 지원이 늦어지는 것이 있어 프로젝트를 운영하는데 이슈가 발생하였었습니다. 그래서 이번의 경우는 Getx는 제외하였고, Bloc의 경우 대규모 개발에 뛰어난 것으로 알고 있고, 러닝커브가 발생하여 riverpod를 선택하게 되었습니다.
### Video Player lifecycle처리 방식
    - controller init -> play -> (페이지 이탈 시(currentPageIndex-1 / +1 )) pause -> (currentPageIndex-2 /+2) dispoase

## Q2.(확장성 설계) 이 앱을 실제 TikTok 규모 서비스로 확장해야 한다면 어떤 부분을 변경하거나 개선해야 할까요?
    - 동영상 스트림으로 진행하면 좋을 것 같으며, 네트워크가 불안할 수 있어 이것에 대한 것도 고려해야 할 것으로 보여집니다. 또한 스트림 진행과 함께 캐시 정책도 추가 하여 단시간 네트워크가 끊어졌을 때 일정 부분이 플레이 될 수 있게 고려 해야 하며, 용량이슈가 있을 수 있어 캐시 된 동영상을 삭제하는 정책 또한 함께 진행해야 할 것 같습니다.


## Q3.(가장 어려웠던 문제) 구현 과정에서 가장 어려웠던 문제 하나를 설명해 주세요.
(위에서 설명한 AI로 해결한 문제 외에 다른 문제는 조금 간단 하지만 공유드립니다.)

### 문제상황 : 
    - 댓글 바텀시트를 ai를 활용하여 개발 진행을 하였으나 댓글 바텀시트가 열렸는지 닫혔는지에 대한 값을 메모리상에 관리되도록 만들어져서 이 부분을 provider로 변경하고 widget을 리팩토링 하는 과정에서 댓글바텀시트가 오픈이 안 되는 이슈와 동영상이 플레이되지 않는 현상이 발생
### 시도한 해결 방법 : 
    - 우선 리팩토링 진행한 부분에서 BottomSheet를 주석 처리 하여 시도했을 때 동영상이 정상 플레이 되는 것을 다시 확인, widget 리팩토링 한 부분이 이슈가 있다는 것을 확인
    - bottomSheet의 부모 widget을 Stack, Column 등으로 변경을 시도
### 최종 해결 방법 : 
    - bottomSheet가 오픈되지 않는 문제는 간단한 문제였습니다. provider를 선언할 때. notifier로 선언이 되어 있어서 값 변경이 확인 안 되는 상황이었습니다.
    - 동영상이 플레이되지 않았던 이슈 : bottomSheet의 높이를 측정할 수 없어서 동영상 화면과 함께 오류가 발생 한 상황이었으며, bottomSheet를 class분리하여 CousumerWidget으로 선언하고 높이 계산 값을 함께 넣어서 수정을 진행하였습니다.
