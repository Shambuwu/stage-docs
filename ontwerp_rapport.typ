#align(
  center,
  text(
    size: 1.2em,
    [
      *Competentie: Analyseren* \
      Analyse en inzichten \
    ],
  )
)
#align(
  center,
  figure(
    image("../bijlagen/analyserapport/OIG.jpg", 
    width: 400pt
    )
  )
)

#let date = datetime(
  year: 2023,
  month: 6,
  day: 30
)

#place(
  bottom + left,
  text[
    *Student:* Levi Leuwol \
    *Studentnummer:* 405538 \
    *Datum:* #date.display() \
    *Onderwerp:* Competentie: Analyseren \
    *Opleiding:* HBO-ICT \
    *Studiejaar:* 3 \
  ]
)

#place(
  bottom + right,
  image("../bijlagen/logo.png", width: 175pt)
)
#pagebreak()

#set heading(numbering: "1.1")
#show heading: it => {
  set block(below: 10pt)
  set text(weight: "bold")
  align(left, it)
}

#outline(
  title: [
    *Inhoudsopgave*
  ],
)
#set page(
  numbering: "1 / 1",
  number-align: right,
)

#pagebreak()
= Inleiding

#pagebreak()
= Literatuurlijst
#bibliography(
  title: "",
  "../bibliografie/hayagriva.yml"
)

#pagebreak()
= Bronnen
#align(left,
  table(
    columns: (auto, auto, auto),
    rows: (auto, auto, auto),
    align: left,
    inset: 10pt,
    stroke: none,
    [*Bijlagen*], [], [],
    [Hanzehogeschool Groningen logo], [Hanzehogeschool Groningen], [https://freebiesupply.com/logos/hanzehogeschool-groningen-logo/],
    [Titelpagina figuur], [DALL-E-2, OpenAI], [bijlagen -> analyserapport -> OIG.jpg],
    [Sequentiediagram 1], [L. J. J. Leuwol], [bijlagen -> analyserapport -> use_case_1.png],
    [Sequentiediagram 2], [L. J. J. Leuwol], [bijlagen -> analyserapport -> use_case_2.png],
    [Sequentiediagram 3], [L. J. J. Leuwol], [bijlagen -> analyserapport -> use_case_3.png],
  )
)