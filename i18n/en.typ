// English copy. Schema keys stay in English for both languages.
#let t = (
  profile: (
    heading: "Profile",
    body: [Software developer with a strong focus on software architecture and scalable systems. Passionate about building high-performance applications using modern design patterns and clean, maintainable code. Experienced in developing backend systems and full-stack solutions that solve real-world problems efficiently.],
  ),

  education: (
    heading: "Education",
    items: (
      uct: (
        institution: "Universidad Católica de Temuco",
        degree: "B.Eng. in Computer Science",
        dates: "2022 – 2026",
        bullets: (
          [Specialization in software architecture, design, and software development.],
        ),
      ),
    ),
  ),

  experience: (
    heading: "Experience",
    items: (
      teaching: (
        role: "Teaching Assistant",
        org: "Universidad Católica de Temuco",
        dates: "Jun. 2023 – Present",
        bullets: (
          [Delivered classes on backend development, software design, and architecture in undergraduate courses.],
          [Implemented SonarQube for code analysis and quality metrics in academic projects. Configured CI pipelines to automate code analysis and generate quality reports.],
        ),
      ),
      uct: (
        role: "Software Engineer",
        org: "Universidad Católica de Temuco",
        dates: "Jun. 2026 – Present",
        bullets: (
          [Designed and developed SIGMA, a platform that analyzes and visualizes academic publication metrics for professors of the Faculty of Engineering at UCT. It extracts and classifies academics via public APIs using a taxonomy based on OpenAlex and the Faculty's research lines, and generates collaboration suggestions from a graph of publications and research areas. It provides scientific-academic metrics and statistics that support the Faculty's decision-making.],
          [Responsible for content management of the UCT Faculty of Engineering website.],
        ),
      ),
      cidla: (
        role: "Full-Stack Developer",
        org: "CIDLA",
        dates: "Dec. 2025 – Mar. 2026",
        bullets: (
          [Planned and designed systems with microservices architecture and distributed systems using Rust.],
        ),
      ),
      intern: (
        role: "Full-Stack Developer",
        org: "Municipality of Temuco (University Internship)",
        dates: "Jan. 2024 – Feb. 2024",
        bullets: (
          [Developed a web and mobile scheduling system for elderly users, improving access to municipal services, along with an administrative dashboard integrated with the Google Calendar API for real-time appointment management and traceability using Socket.IO. Also implemented role-based access control (RBAC) for system actors.],
        ),
      ),
    ),
  ),

  projects: (
    heading: "Projects",
    items: (
      ramtun: (
        name: "Ramtun",
        subtitle: "Certainty Test Platform",
        url: "https://github.com/open-source-uct/ramtun",
        label: "github.com/open-source-uct/ramtun",
        bullets: (
          [Platform for creating and running certainty tests in academic environments. Developed in response to the need for a technological solution for grading and reviewing certainty tests that were previously performed manually on paper.],
          [User authentication via institutional LDAP, real-time result updates in the administration panel, detection of possible cheating through browser events, and user role management.],
          [It opened the system to other students in the program, who contributed improvements and new features while developing code review skills through Pull Requests on GitHub.],
        ),
      ),
      sword: (
        name: "Sword",
        subtitle: "Web Framework for Rust",
        url: "https://github.com/sword-web/sword",
        label: "github.com/sword-web/sword",
        bullets: (
          [Server application framework inspired by Spring Boot and NestJS, designed to simplify large-scale backend development in Rust.],
          [Implements dependency injection, metaprogramming, interceptors, and a module system.],
        ),
      ),
    ),
  ),

  technologies: (
    heading: "Technologies & Tools",
    groups: (
      languages: (
        label: "Languages & Runtimes:",
        items: ([Rust], [TypeScript], [Python], [Node.js], [Bun]),
      ),
      frameworks: (
        label: "Frameworks & Libraries:",
        items: (
          [React, Svelte/Kit],
          [Axum, NestJS, Express, FastAPI],
          [React Native, Expo],
        ),
      ),
      devops: (
        label: "DevOps & Development Tools:",
        items: (
          [gRPC, NATS, Docker, CI/CD, SonarQube, Git, Linux],
        ),
      ),
      databases: (
        label: "Databases & Data Access:",
        items: (
          [PostgreSQL, MySQL, SQLite, MongoDB, Redis, Prisma, SQLAlchemy, SQLx],
        ),
      ),
    ),
  ),
)
