#align(
  center,
  text(
    size: 1.2em,
    [
      *Competentie: Adviseren* \
      Adviesrapport en aanbevelingen \
    ],
  )
)
#align(
  center,
  figure(
    image("../bijlagen/adviesrapport/OIG.jpg", 
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
= Samenvatting
Test

#pagebreak()
= Inleiding

#pagebreak()
= Onderzoek

#pagebreak()
= Alternatieven

#pagebreak()
= Conclusie


