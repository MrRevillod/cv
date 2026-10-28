#import "components.typ": *
#import "../i18n/en.typ" as en
#import "../i18n/es.typ" as es

#let lang = sys.inputs.at("lang", default: "en")
#let t = if lang == "es" { es.t } else { en.t }

#validate-i18n(en.t, es.t)

#let email = sys.inputs.at("email", default: "")
#let phone = sys.inputs.at("phone", default: "")

#let person = (
  name: "Luciano Revillod Jeréz",
  location: "Temuco, Araucanía, Chile",
  linkedin: (
    handle: "luciano-revillod",
    url: "https://www.linkedin.com/in/luciano-revillod",
  ),
  github: (handle: "MrRevillod", url: "https://github.com/MrRevillod"),
)

#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.9cm, left: 1.9cm, right: 1.9cm),
  footer: none,
  header: none,
)

#set text(
  font: "P052",
  size: 10pt,
  lang: lang,
  region: if lang == "es" { "CL" } else { "US" },
  fill: black,
)

#set par(
  justify: false,
  first-line-indent: 0pt,
  leading: 4.7pt,
  spacing: 0pt,
)

#set list(
  marker: [•],
  indent: 10pt,
  body-indent: 4pt,
  spacing: 0.8em,
)

#cv-header(
  name: person.name,
  location: person.location,
  email: email,
  phone: phone,
  linkedin: person.linkedin,
  github: person.github,
)

#v(0.06cm)

#section(t.profile.heading)
#t.profile.body

#section(t.education.heading)
#stack(t.education.items, 0.2cm, education-entry)

#section(t.experience.heading)
#stack(t.experience.items, 0.5cm, experience-entry)

#section(t.projects.heading)
#stack(t.projects.items, 0.3cm, project-entry)

#section(t.technologies.heading)
#stack(t.technologies.groups, 0.3cm, tech-group)
