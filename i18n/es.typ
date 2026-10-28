#let t = (
  profile: (
    heading: "Sobre mí",
    body: [Desarrollador de software y entusiasta de la arquitectura, enfocado en construir sistemas escalables y de alto rendimiento. Apasionado por los patrones arquitectónicos modernos, el código limpio y la resolución de problemas del mundo real mediante soluciones eficientes y mantenibles.],
  ),

  education: (
    heading: "Educación",
    items: (
      uct: (
        institution: "Universidad Católica de Temuco",
        degree: "Ingeniería Civil en Informática",
        dates: "2022 – 2026",
        bullets: (
          [Mención en arquitectura, diseño y desarrollo de software.],
        ),
      ),
    ),
  ),

  experience: (
    heading: "Experiencia",
    items: (
      teaching: (
        role: "Ayudante Académico",
        org: "Universidad Católica de Temuco",
        dates: "Jun. 2023 – Actualidad",
        bullets: (
          [Impartiendo clases sobre desarrollo backend, diseño y arquitectura de software en cursos de la carrera.],
          [Implementación de Sonarqube para análisis de código y métricas de calidad en proyectos académicos. Configuración de pipelines CI para automatizar el análisis de código y generar reportes de calidad.],
        ),
      ),
      uct: (
        role: "Ingeniero de Software",
        org: "Universidad Católica de Temuco",
        dates: "Jun. 2026 – Actualidad",
        bullets: (
          [Diseño y desarrollo de SIGMA, plataforma que analiza y visualiza las métricas de publicaciones académicas de los docentes de la Facultad de Ingeniería de la UCT. Extrae y clasifica académicos vía APIs públicas con una taxonomía basada en OpenAlex y las líneas de investigación de la Facultad, y genera sugerencias de colaboración a partir de un grafo de publicaciones y áreas de investigación. Entrega métricas y estadísticas del ámbito científico-académico que apoyan la toma de decisiones de la Facultad.
          ],
          [
            Encargado de la gestión de contenido del sitio web de la Facultad de Ingeniería de la UCT.
          ],
        ),
      ),
      cidla: (
        role: "Desarrollador Full-Stack",
        org: "CIDLA",
        dates: "Dic. 2025 – Mar. 2026",
        bullets: (
          [Planificación y diseño de sistemas con arquitectura de microservicios y sistemas distribuidos con el lenguaje Rust.],
        ),
      ),
      intern: (
        role: "Desarrollador Full-Stack",
        org: "Municipalidad de Temuco (Práctica Universitaria)",
        dates: "Ene. 2024 – Feb. 2024",
        bullets: (
          [Desarrollé sistema web y móvil de agendamiento para adultos mayores, facilitando el acceso a servicios municipales. Junto con un dashboard administrativo con integración a Google Calendar API para gestión y trazabilidad de citas en tiempo real con Socket.IO. Además de gestionar roles (RBAC) para los actores del sistema.],
        ),
      ),
    ),
  ),

  projects: (
    heading: "Proyectos",
    items: (
      ramtun: (
        name: "Ramtun",
        subtitle: "Plataforma de Tests de Certeza",
        url: "https://github.com/open-source-uct/ramtun",
        label: "github.com/open-source-uct/ramtun",
        bullets: (
          [Plataforma que permite crear y ejecutar tests de certeza en entornos académicos. Desarrollada a partir de la necesidad de una solución tecnológica para la evaluación y revisión de los tests de certeza que anteriormente se realizaban de manera manual en papel.],
          [Autenticación de usuarios vía LDAP institucional, actualización de resultados en administración en tiempo real, detección de posibles trampas con eventos del navegador y gestión de roles de usuario.],
          [Permitió abrir el sistema a otros estudiantes de la carrera que contribuyeron con mejoras y nuevas funcionalidades desarrollando habilidades de revisión de código en Pull Requests en Github.],
        ),
      ),
      sword: (
        name: "Sword",
        subtitle: "Rust Framework Web",
        url: "https://github.com/sword-web/sword",
        label: "github.com/sword-web/sword",
        bullets: (
          [Framework de aplicaciones de servidor inspirado en Spring Boot y NestJS, diseñado para simplificar el desarrollo backend a gran escala en Rust.],
          [Implementa inyección de dependencias, metaprogramación, interceptores y un sistema de módulos.],
        ),
      ),
    ),
  ),

  technologies: (
    heading: "Tecnologías y Herramientas",
    groups: (
      languages: (
        label: "Lenguajes de programación:",
        items: ([Rust], [TypeScript], [Python]),
      ),
      frameworks: (
        label: "Frameworks y Librerías:",
        items: (
          [React, Svelte/Kit],
          [Axum, NestJS, Express, FastAPI],
          [React Native, Expo],
        ),
      ),
      devops: (
        label: "DevOps y Herramientas de desarrollo:",
        items: (
          [gRPC, NATS, Docker, CI/CD, SonarQube, Git, Linux],
        ),
      ),
      databases: (
        label: "Bases de datos y acceso a datos:",
        items: (
          [PostgreSQL, MySQL, SQLite, MongoDB, Redis, Prisma, SQLAlchemy, SQLx],
        ),
      ),
    ),
  ),
)
