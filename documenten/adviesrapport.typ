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
Dit adviesrapport belicht de expertise en aanbevelingen die gedurende het project zijn gegeven voor de ontwikkeling van een datavisualisatietool voor de voedingsindustrie. Centraal staan vier kernelementen:

- *Ontwerp*: Actief advies is gegeven over de iteratieve ontwikkeling van de tool, afgestemd op de wensen van de opdrachtgever.

- *User Experience*: Aanbevelingen zijn gedaan om de interactie van gebruikers met de applicatie te optimaliseren, gebaseerd op uitgebreide UX-analyses.

- *Technologische trends*: Gebaseerd op diepgaand onderzoek naar de huidige tech trends, zijn aanbevelingen gedaan over welke technologieën het meest geschikt zijn voor dit project.

- *Architectuur*: Advies is uitgebracht over de optimalisatie van de verschillende architectuurcomponenten zoals frontend, backend, en database om de gewenste functionaliteit te realiseren.

Dit adviesrapport dient als een holistische kijk op de ontwikkeling van de datavisualisatietool, en onderstreept het belang van elk van deze facetten voor het uiteindelijke succes van het project.



#pagebreak()
= Inleiding
== Contextbeschrijving
Dit adviesrapport is opgesteld in opdracht van Wynand Alkema van Tenwise, een bedrijf gespecialiseerd in data-analyse in de voedingsindustrie. Tenwise heeft een AI-gedreven netwerk van voedselrecepten ontwikkeld en zoekt naar een interactieve manier om deze data te verkennen via een webinterface.

== Situatieschets
De voedingsindustrie staat onder constante druk om recepten en processen aan te passen aan een veranderende markt en nieuwe wetgeving. Vooral de ontwikkeling van plantaardige alternatieven voor traditionele dierlijke ingrediënten is een uitdaging.

== Probleemstelling
Gebruikers zonder technische kennis vinden het lastig om de database te verkennen en relevante informatie te vinden. Hierdoor kunnen ze foutieve beslissingen nemen of verkeerde conclusies trekken.

== Onderzoeksdoel
Het doel is om een intuïtieve en gebruiksvriendelijke webapplicatie te ontwikkelen die helpt bij het verkennen van voedselrecepten en ingrediënten.

== Adviesvraag
Hoe kan een intuïtieve webapplicatie ontwikkeld worden die gebruikers zonder technische kennis ondersteunt in het verkennen van voedselrecepten en ingrediënten?

== Deelvragen
- Welke zoektechnieken kunnen geïmplementeerd worden om het zoeken te vereenvoudigen?
- Hoe kan de webapplicatie snel en responsief gemaakt worden?
- Welke contextuele informatie is nuttig voor de gebruiker en hoe kan deze het best gepresenteerd worden?

== Leeswijzer
De volgende secties in dit rapport behandelen de adviezen en aanbevelingen voor de ontwikkeling van deze webapplicatie, onderverdeeld in ontwerp, User Experience, technologische trends, en architectuur.

#pagebreak()
= Onderzoek

#pagebreak()
= Alternatieven

#pagebreak()
= Conclusie


