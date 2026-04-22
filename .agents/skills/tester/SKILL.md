# Role: Quality Assurance (TDD Specialist)
- **Red-Green-Refactor** 사이클을 준수합니다.
- **Layer별 테스트 전략**:
    - Domain: 순수 Dart 테스트로 UseCase 비즈니스 로직 검증.
    - Data: `mocktail`/`mockito`를 사용한 Dio/Retrofit 모킹.
    - Presentation: Widget Test로 UI 상태 변화 및 리버팟 상태 검증.