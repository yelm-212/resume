#let ink = rgb("#18212b")
#let accent = rgb("#0f4c5c")
#let line-color = rgb("#d7dde3")
#let soft = rgb("#6b7280")

#set page(
  paper: "a4",
  margin: (top: 1.1cm, bottom: 1.15cm, left: 1.2cm, right: 1.2cm),
)

#set text(
  font: ("Apple SD Gothic Neo", "Helvetica Neue"),
  size: 9pt,
  fill: ink,
  lang: "ko",
)

#set par(justify: false, leading: 0.62em)
#set list(marker: [•], indent: 1.2em, body-indent: 0.55em, spacing: 0.22em)

#let section-title(title) = [
  #v(0.9em)
  #text(8.1pt, weight: "bold", fill: accent, tracking: 0.16em)[#title]
  #v(0.12em)
  #line(length: 100%, stroke: 0.8pt + line-color)
  #v(0.4em)
]

#let pane-title(title) = [
  #text(7.8pt, weight: "bold", fill: accent, tracking: 0.12em)[#title]
  #v(0.08em)
  #line(length: 100%, stroke: 0.7pt + line-color)
  #v(0.22em)
]

#let entry-header(title, date) = grid(
  columns: (1fr, auto),
  column-gutter: 0.7em,
  [
    #text(11pt, weight: "bold")[#title]
  ],
  [
    #align(right)[#text(8.4pt, fill: soft)[#date]]
  ],
)

#let subentry-header(title, date) = grid(
  columns: (1fr, auto),
  column-gutter: 0.7em,
  [
    #text(9.5pt, weight: "semibold", fill: accent)[#title]
  ],
  [
    #align(right)[#text(8.2pt, fill: soft)[#date]]
  ],
)

#let meta(label, value) = [
  #grid(
    columns: (2.45cm, 1fr),
    column-gutter: 0.35em,
    [
      #text(8.15pt, weight: "bold", fill: soft)[#label]
    ],
    [
      #text(8.45pt, fill: soft)[#value]
    ],
  )
]

#let bullet(body) = grid(
  columns: (0.42cm, 1fr),
  column-gutter: 0.16cm,
  align: (left, top),
  [
    #text(8.8pt, fill: soft)[•]
  ],
  [
    #body
  ],
)

#let project-block(body) = block(
  breakable: false,
)[
  #body
]

#text(23pt, weight: "bold")[Yerim Shin]
#linebreak()
#text(10.2pt, fill: accent, tracking: 0.06em)[SOFTWARE ENGINEER]
#v(0.26em)
#line(length: 100%, stroke: 1.1pt + accent)
#v(0.55em)

#grid(
  columns: (1.45fr, 0.95fr),
  column-gutter: 0.95cm,
  [
    #grid(
      columns: (0.9fr, 1.1fr),
      column-gutter: 0.6cm,
      [
        #pane-title("CONTACTS")
        #link("mailto:21yrshin@naver.com")[21yrshin\@naver.com]
        #linebreak()
        #link("https://github.com/yelm-212")[github.com/yelm-212]
        #linebreak()
        #link("https://yelm-212.github.io/")[yelm-212.github.io]
      ],
      [
        #pane-title("CAPABILITIES")
        #text(8.35pt, weight: "bold")[Backend]
        #linebreak()
        Java, Spring Framework
        #v(0.22em)
        #text(8.35pt, weight: "bold")[Infra]
        #linebreak()
        MongoDB, PostgreSQL, AWS, Jenkins, Docker
      ],
    )
  ],
  [
    #pane-title("EDUCATION & CERTIFICATIONS")
    #text(8.35pt, weight: "bold")[경북대학교]
    #linebreak()
    #text(8.25pt, fill: soft)[2019.02 ~ 2023.08]
    #linebreak()
    컴퓨터공학과 | 산림과학.조경학부 학사
    #v(0.3em)
    ISTQB CTFL · 2021-07
    #linebreak()
    SQLD · 2024-06
    #linebreak()
    정보처리기사 · 2025-09
  ],
)

#section-title("CAREERS")

#entry-header("에이데이타", "2025.01 ~ 현재")
#text(9pt, weight: "semibold")[백엔드 개발자 · 기술서비스팀]
#linebreak()
#text(8.45pt, fill: soft)[자사 솔루션 고도화 및 고객사/대외 프로젝트 개발, 신규 솔루션 설계·구현]

#v(0.38em)
#project-block[
  #subentry-header("DPG / 모두의 AI실험실", "2025.12 ~ 2026.06")
  #text(8.4pt, fill: soft)[개발지원도구와 클라우드 관리 기능을 통합 포털에서 운영하기 위해, 사용자 인증·권한·외부 도구 접근 구조를 Keycloak 중심으로 정리하고 Kubernetes 기반 운영 절차를 문서화]
  #v(0.08em)
  #bullet[포털 회원 가입 및 로그인 이후 개발지원도구 접근 권한까지 이어질 수 있도록 Spring 애플리케이션 사용자와 Keycloak realm 사용자를 연동하는 프로비저닝 기준 정리]
  #bullet[Superset·RAGFlow를 Keycloak 기반 SSO로 연동하기 위해 OAuth/OIDC client, redirect URI, realm/client 설정 기준을 정리하고 Kubernetes 환경에 반영]
  #bullet[RAGFlow–Keycloak 연동 시 로그인 후 세션이 정상 유지되지 않는 문제를 분석하고, 인증 초기화 및 사용자 세션 처리 흐름을 조정해 SSO 로그인 동작 정상화]
  #bullet[Kubernetes 기반 개발지원도구의 설치 경로, 설정 위치, 점검 명령어, 장애 유형별 조치 절차를 문서화해 담당자 부재 시에도 기본 운영 대응이 가능하도록 정리]
  #bullet[Vue3 기반 포털 화면의 라우팅, Pinia 상태 관리, axios interceptor, validation composable 등 프론트엔드 공통 구조를 정리해 화면 단위 기능 개발 기준 마련]
  #bullet[클라우드 자원 수집 데이터의 중복 저장 가능성을 줄이기 위해 key 기반 중복 제거 로직을 적용]
  #v(0.3em)
  #meta("기술 스택", [
    Java, Spring Boot (Spring Security, JJWT, MyBatis)
    #linebreak()
    Keycloak, OAuth2/OIDC, Kubernetes, Docker, MariaDB
    #linebreak()
    JavaScript, Vue3 (Vue Router, Pinia, Axios)
    #linebreak()
    Naver Cloud, NHN Cloud, KT Cloud
  ])
  #v(0.08em)
  #meta("버전 관리 및 CI / CD", [GitLab, Jenkins])
]

#v(0.48em)
#project-block[
  #subentry-header("SCV (Smart Collection Vehicle, 빅데이터 수집, 연계 솔루션)", "")
  #v(0.05em)
  #bullet[사용자 권한별 화면 분기 요구사항을 충족하기 위해 Spring Security + JWT 기반으로 인증 구조 재설계]
  #bullet[가입 승인 전 사용자 / 일반 사용자 / 관리자 사용자 권한에 따라 역할과 사용 가능한 기능이 구분되어야 했고, 이 권한(Role)에 따라 접근 가능한 페이지 및 컴포넌트 구성을 서버에서 분기해 제공하도록 구현]
  #bullet[서버 측에서는 사용자 인증 후 JWT를 HttpOnly 쿠키에 저장하고, Spring Security 인증 컨텍스트에 사용자 정보를 유지]
  #bullet[클라이언트에서 상태 관리(Pinia) 및 HttpOnly 쿠키 기반 인증/인가 로직 구현]
  #v(0.3em)
  #meta("기술 스택", [
    Java, Spring Boot (Spring Security, JJWT, MyBatis)
    #linebreak()
    PostgreSQL, Redis / Caffeine
    #linebreak()
    Vue3 (Vue Router, Pinia, Axios)
  ])
  #v(0.08em)
  #meta("버전 관리 및 CI / CD", [GitLab, Jenkins])
]

#block(breakable: false)[
  #v(0.7em)
  #entry-header("더커머스(원셀)", "2024.06 ~ 2024.12")
  #text(9pt, weight: "semibold")[백엔드 개발자]
  #linebreak()
  #text(8.45pt, fill: soft)[셀러가 다양한 쇼핑 플랫폼에서 상품과 주문을 관리할 수 있는 통합 관리 솔루션 운영 및 개발]

#v(0.38em)
#project-block[
  #bullet[Java Spring Boot 애플리케이션의 데이터 전송 및 저장 모듈 유지보수]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[상품 수정 모듈 개선]
  #v(0.05em)
  #bullet[서버리스 환경(AWS Lambda) 기반 상품 수정 파이프라인을 상태별 분기 호출 구조로 재설계, 플랫폼별 반영 정합성 확보]
  #bullet[상품 라이프사이클 단계(가격·재고·판매상태)별 세분화된 API 호출 전략으로 전환해 각 플랫폼별 데이터 비정합성 해소]
  #bullet[수정 전·후 상태 비교를 통해 실제 변경된 항목만 호출하도록 개선해 과호출 제거]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[지그재그 간편 등록 솔루션 무료이용권 관리 시스템 구현]
  #v(0.05em)
  #bullet[이벤트 유저 급증에 따른 무료이용권 만료 처리를 배포 시점 자동화 파이프라인으로 전환해 약 10,000건 규모 운영 업무 자동화]
  #bullet[만료일 기준 대상 데이터 자동 식별 및 배포 연동 일괄 만료 처리 시스템 구축]
  #bullet[MongoDB bulkWrite 기반 대용량 일괄 업데이트로 운영자 수동 개별 처리 완전 대체]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[상품 스마트스토어 업로드 요청 처리 개선]
  #v(0.05em)
  #bullet[OpenAPI 호출 시 피크 시간대 429 응답 코드로 인한 상품 등록 요청 건의 실패 문제 (약 전체의 40%) 개선]
  #bullet[응답 헤더 분석을 통한 동적 대기 시간 설정 및 자동 재시도 로직 구현]
  #bullet[피크 시간대 업로드 성공률 90% 이상 달성]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[스마트스토어 추가상품 등록]
  #v(0.05em)
  #bullet[Flask 서버 기반 네이버 스마트스토어 API 추가상품 데이터 수집 및 변환]
  #bullet[Java Spring 서버에서 지그재그 API 연동 및 상품 등록 구현]
  #bullet[수집 데이터를 플랫폼별 상품 형식으로 변환, 에이블리·G마켓 등록까지 확장해 플랫폼 간 등록 일관성 확보]
  #v(0.3em)
  #meta("기술 스택", [
    Java, Spring Boot, Python, Flask
    #linebreak()
    MongoDB, Microservice Architecture
    #linebreak()
    AWS (EC2, SQS, ECS, Lambda, VPC, CloudWatch …)
  ])
  #v(0.08em)
  #meta("버전 관리 및 CI / CD", [BitBucket, Jenkins])
]
]

#section-title("PROJECTS & CONTRIBUTIONS")

#subentry-header("Open-source Contribution · Spring Security", "")
#bullet[Issue: #link("https://github.com/spring-projects/spring-security/issues/16615")[Replace Hardcoded 403 with HttpStatus.FORBIDDEN.value() \#16615] (Closed)]
#bullet[PR: #link("https://github.com/spring-projects/spring-security/pull/16616")[Refactored Http403ForbiddenEntryPoint \#16616] (Merged)]
#bullet[기존 코드에서 HTTP 상태 코드 403과 오류 메시지 "Access Denied"가 하드코딩되어 있는 문제를 발견]
#bullet[이를 HttpStatus.FORBIDDEN.value() 및 HttpStatus.FORBIDDEN.getReasonPhrase()를 사용하도록 변경하여 유지보수성을 개선]
#bullet[Maintainer의 피드백을 반영하여 copyright 연도를 2025로 업데이트하는 등 추가 개선을 수행]
