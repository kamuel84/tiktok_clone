## 프로젝트 아키텍처 및 폴더 구조

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
└── main.dart# tictok_clone
