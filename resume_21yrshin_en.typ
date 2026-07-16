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
  lang: "en",
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
    #text(8.35pt, weight: "bold")[Kyungpook National University]
    #linebreak()
    #text(8.25pt, fill: soft)[2019.02 ~ 2023.08]
    #linebreak()
    B.S. in Computer Science and Engineering
    #linebreak()
    B.S. in Forestry Science and Landscape Architecture
    #v(0.3em)
    ISTQB CTFL · 2021-07
    #linebreak()
    SQLD · 2024-06
    #linebreak()
    Engineer Information Processing · 2025-09
  ],
)

#section-title("CAREERS")

#entry-header("ADATA", "2025.01 ~ Present")
#text(9pt, weight: "semibold")[Backend Developer · Technical Service Team]
#linebreak()
#text(8.45pt, fill: soft)[Developed and improved in-house solutions, client-facing projects, external projects, and new solution architecture.]

#v(0.38em)
#project-block[
  #subentry-header("DPG / AI Lab for All", "2025.12 ~ 2026.06")
  #text(8.4pt, fill: soft)[Aligned user authentication, authorization, and external tool access around Keycloak so the portal could operate developer tools and cloud management features in one place. Documented Kubernetes operations for handoff and incident response.]
  #v(0.08em)
  #bullet[Defined provisioning rules that connect Spring application users with Keycloak realm users, so portal signup and login can carry through to developer tool access.]
  #bullet[Configured OAuth/OIDC clients, redirect URIs, and realm/client settings for Keycloak SSO with Superset and RAGFlow, then applied the setup in Kubernetes.]
  #bullet[Debugged a RAGFlow-Keycloak session issue after login and adjusted authentication initialization and user session handling to restore SSO login.]
  #bullet[Documented install paths, configuration files, health-check commands, and incident handling steps for Kubernetes-based developer tools.]
  #bullet[Organized shared Vue3 frontend patterns, including routing, Pinia state, axios interceptors, and validation composables.]
  #bullet[Applied key-based deduplication to reduce duplicate writes in collected cloud resource data.]
  #v(0.3em)
  #meta("Skills", [
    Java, Spring Boot (Spring Security, JJWT, MyBatis)
    #linebreak()
    Keycloak, OAuth2/OIDC, Kubernetes, Docker, MariaDB
    #linebreak()
    JavaScript, Vue3 (Vue Router, Pinia, Axios)
    #linebreak()
    Naver Cloud, NHN Cloud, KT Cloud
  ])
  #v(0.08em)
  #meta("Version Control / CI/CD", [GitLab, Jenkins])
]

#v(0.48em)
#project-block[
  #subentry-header("SCV (Smart Collection Vehicle, Big Data Collection and Integration Solution)", "")
  #v(0.05em)
  #bullet[Redesigned authentication around Spring Security and JWT to support role-based screen branching.]
  #bullet[Implemented server-side branching for available pages and components by role: pending approval, standard user, and admin.]
  #bullet[Stored JWTs in HttpOnly cookies after login and kept authenticated user data in the Spring Security context.]
  #bullet[Implemented client-side authentication and authorization flow with Pinia state and HttpOnly cookie-based sessions.]
  #v(0.3em)
  #meta("Skills", [
    Java, Spring Boot (Spring Security, JJWT, MyBatis)
    #linebreak()
    PostgreSQL, Redis / Caffeine
    #linebreak()
    Vue3 (Vue Router, Pinia, Axios)
  ])
  #v(0.08em)
  #meta("Version Control / CI/CD", [GitLab, Jenkins])
]

#block(breakable: false)[
  #v(0.7em)
  #entry-header("TheCommerce (OneSell)", "2024.06 ~ 2024.12")
  #text(9pt, weight: "semibold")[Backend Developer]
  #linebreak()
  #text(8.45pt, fill: soft)[Maintained and developed an integrated commerce management solution for sellers who manage products and orders across multiple shopping platforms.]

#v(0.38em)
#project-block[
  #bullet[Maintained data transfer and storage modules in Java Spring Boot applications.]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[Product Edit Module Improvement]
  #v(0.05em)
  #bullet[Redesigned the AWS Lambda-based product edit pipeline into state-based branch calls, improving platform update consistency.]
  #bullet[Changed platform API calls into separate strategies for price, stock, and sales status updates, resolving data mismatches across platforms.]
  #bullet[Removed excess calls by comparing before-and-after product state and sending only changed fields.]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[Zigzag Simple Registration Free Pass Management]
  #v(0.05em)
  #bullet[Moved free pass expiration handling into a deployment-linked automation pipeline during an event user spike, automating about 10,000 operational updates.]
  #bullet[Built batch expiration processing that identifies target records by expiration date and runs expiration updates with deployment.]
  #bullet[Replaced manual per-user operations with large batch updates through MongoDB bulkWrite.]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[Smart Store Product Upload Request Handling]
  #v(0.05em)
  #bullet[Improved failures caused by 429 responses from OpenAPI during peak hours, which affected about 40% of product upload requests.]
  #bullet[Implemented dynamic wait time and retry logic based on response headers.]
  #bullet[Raised peak-hour upload success rate to over 90%.]
]

#v(0.18em)
#project-block[
  #text(9.3pt, weight: "semibold", fill: accent)[Smart Store Additional Product Registration]
  #v(0.05em)
  #bullet[Collected and transformed Naver Smart Store additional product data through a Flask server.]
  #bullet[Integrated the Zigzag API and product registration flow in the Java Spring server.]
  #bullet[Converted collected data into platform-specific product formats and expanded registration to Ably and Gmarket.]
  #v(0.3em)
  #meta("Skills", [
    Java, Spring Boot, Python, Flask
    #linebreak()
    MongoDB, Microservice Architecture
    #linebreak()
    AWS (EC2, SQS, ECS, Lambda, VPC, CloudWatch …)
  ])
  #v(0.08em)
  #meta("Version Control / CI/CD", [GitLab, Jenkins])
]
]

#section-title("PROJECTS & CONTRIBUTIONS")

#subentry-header("Open-source Contribution · Spring Security", "")
#bullet[Issue: #link("https://github.com/spring-projects/spring-security/issues/16615")[Replace Hardcoded 403 with HttpStatus.FORBIDDEN.value() \#16615] (Closed)]
#bullet[PR: #link("https://github.com/spring-projects/spring-security/pull/16616")[Refactored Http403ForbiddenEntryPoint \#16616] (Merged)]
#bullet[Found hardcoded HTTP status code 403 and the error message "Access Denied" in the existing code.]
#bullet[Changed the implementation to use HttpStatus.FORBIDDEN.value() and HttpStatus.FORBIDDEN.getReasonPhrase(), reducing maintenance risk.]
#bullet[Addressed maintainer feedback, including an update to the copyright year for 2025.]
