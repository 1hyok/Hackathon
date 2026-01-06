# Hackathon - 음식 조합 공유 앱

해커톤 프로젝트: 음식점 꿀조합 공유 앱 (서브웨이, 하이디라오, 편의점 등)

## 🛠️ 기술 스택

- **Language**: Kotlin
- **UI**: Jetpack Compose (Material 3)
- **Architecture**: MVVM + Clean Architecture
- **DI**: Hilt
- **Network**: Retrofit + OkHttp
- **Image Loading**: Coil 3

## 📋 코드 품질 도구

이 프로젝트는 자동화된 코드 품질 검사를 사용합니다.

### 자동 실행 방법

#### 1. Git Hook (커밋 전 자동 실행)
커밋 시 자동으로 코드 품질 검사가 실행됩니다.

**⚠️ 주의**: Windows에서 Git Hook은 Git Bash를 사용할 때만 자동 실행됩니다.
PowerShell이나 CMD에서는 자동 실행되지 않으므로, 수동으로 검사를 실행하세요.

```bash
# Git Bash에서 커밋 시 자동 실행
git commit -m "your message"
# 자동으로 Ktlint + Detekt 실행

# PowerShell/CMD에서는 수동 실행 필요
.\scripts\check-code-quality.ps1
```

#### 2. Gradle Task (빌드 시 자동 포맷팅)
빌드 시 자동으로 코드 포맷팅이 실행됩니다 (검사는 Git Hook에서 처리).

```bash
./gradlew assembleDebug
# 자동으로 Ktlint 포맷팅 실행 (검사는 Git Hook에서 처리)
```

#### 3. 수동 실행

**Windows (PowerShell)**:
```powershell
.\scripts\check-code-quality.ps1
```

**Git Bash / Linux / Mac**:
```bash
./scripts/check-code-quality.sh
```

**Gradle 직접 실행**:
```bash
# 코드 품질 검사 통합 실행
./gradlew codeQualityCheck

# 개별 실행
./gradlew ktlintFormat    # 코드 포맷팅
./gradlew ktlintCheck     # 코드 스타일 검사
./gradlew detekt          # 코드 품질 검사
```

## 📁 프로젝트 구조

```
com.example.hackathon/
├── data/                    # 데이터 레이어
│   ├── dto/                # Request/Response 모델
│   ├── mapper/              # Entity ↔ DTO 변환
│   ├── repositoryimpl/     # Repository 구현
│   └── service/            # API 인터페이스
├── domain/                  # 도메인 레이어
│   ├── entity/             # 비즈니스 엔티티
│   └── repository/          # Repository 인터페이스
├── presentation/            # 프레젠테이션 레이어
│   ├── navigation/         # 네비게이션
│   ├── route/              # 라우트 정의
│   ├── screen/             # 화면 컴포저블
│   └── viewmodel/          # ViewModel
├── core/                    # 공통
│   └── component/          # 공통 컴포넌트
├── di/                      # 의존성 주입
└── ui/theme/               # 테마 설정
```

## 🚀 시작하기

1. 프로젝트 클론
2. Android Studio에서 열기
3. Gradle 동기화
4. 실행!

## 📝 참고 문서

- [PROJECT_MEMO.md](./PROJECT_MEMO.md) - 프로젝트 메모
- [CONVENTION.md](./CONVENTION.md) - 코딩 컨벤션
- [GIT_STRATEGY.md](./GIT_STRATEGY.md) - Git 전략
- [.cursorrules](./.cursorrules) - Cursor AI 규칙

