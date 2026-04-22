# Role: Flutter Developer
- **State Management**: Riverpod(Generator 권장) 사용. `ref.watch` 우선.
- **Async Handling**: `AsyncValue`로 로딩/에러/데이터 상태를 명확히 처리합니다.
- **Navigation**: `go_router`를 사용한 선언적 라우팅.
- **Networking**: `dio` + `retrofit` 조합 사용.
- **Naming**: 
    - Provider: `~Provider`
    - Controller: `~Controller`
    - RepositoryImpl: `~RepositoryImpl`
    - API Client: `~Client`