
#let section(title) = block(above: 0.47cm, below: 0.35cm, {
  text(size: 12pt, weight: "bold")[#title]
  v(4pt)
  line(length: 100%, stroke: 0.5pt + black)
})

#let entry-row(left, right) = grid(
  columns: (1fr, auto),
  column-gutter: 8pt,
  align: (start, end),
  left, right,
)

#let bullets(items) = list(
  marker: [•],
  indent: 10pt,
  body-indent: 4pt,
  spacing: 0.8em,
  tight: false,
  ..items.map(item => [#item]),
)

#let inline-list(items) = items.join([, ])

// Recorre un diccionario de entradas en su orden de inserción,
// sin dejar separación después del último.
#let stack(items, gap, render) = {
  let ids = items.keys()
  for (i, id) in ids.enumerate() {
    render(items.at(id))
    if i < ids.len() - 1 { v(gap) }
  }
}


#let education-entry(e) = {
  entry-row(
    [*#e.institution* ⸱ #e.degree],
    [#e.dates],
  )
  v(0.26cm)
  bullets(e.bullets)
}

#let experience-entry(e) = {
  entry-row(
    [*#e.role*, #e.org],
    [#e.dates],
  )
  v(0.26cm)
  bullets(e.bullets)
}

#let project-entry(e) = {
  entry-row(
    [*#e.name* — #e.subtitle],
    [#link(e.url)[#e.label]],
  )
  v(0.26cm)
  bullets(e.bullets)
}

#let tech-group(g) = [
  *#g.label* #inline-list(g.items)
]


#let fa-solid = "Font Awesome 6 Free"
#let fa-brands = "Font Awesome 6 Brands"
#let icon(font, code) = text(font: font, code)
#let contact-item(glyph, label) = box[#glyph#h(3pt)#label]
#let cgap = h(8pt)

#let cv-header(
  name: "",
  location: "",
  email: "",
  phone: "",
  linkedin: none,
  github: none,
) = align(center)[
  #set par(leading: 0.65em)
  #text(size: 25pt, weight: "regular")[#name]
  #v(1.5em)
  #text(size: 9pt)[
    #contact-item(icon(fa-solid, "\u{f3c5}"), location)
    #cgap
    #if email != "" [
      #contact-item(icon(fa-solid, "\u{f0e0}"), link("mailto:" + email)[#email])
      #cgap
    ]
    #if phone != "" [
      #contact-item(icon(fa-solid, "\u{f095}"), link("tel:" + phone.replace(" ", "-"))[#phone])
      #cgap
    ]
    #if linkedin != none [
      #contact-item(icon(fa-brands, "\u{f0e1}"), link(linkedin.url)[#linkedin.handle])
      #cgap
    ]
    #if github != none [
      #contact-item(icon(fa-brands, "\u{f09b}"), link(github.url)[#github.handle])
    ]
  ]
]

#let validate-i18n(a, b, path: "t") = {
  assert(type(a) == type(b), message: "i18n: tipo distinto en " + path)
  if type(a) == dictionary {
    assert(
      a.keys() == b.keys(),
      message: "i18n: claves distintas en " + path + ": " + repr(a.keys()) + " vs " + repr(b.keys()),
    )
    for key in a.keys() {
      validate-i18n(a.at(key), b.at(key), path: path + "." + key)
    }
  }
}
