= Competentierapport
#let date = datetime(
  year: 2023,
  month: 6,
  day: 19
)

#place(
  bottom + left,
  text[
    *Datum:* #date.display() \
    *Onderwerp:* Competentierapport \
    *Opleiding:* HBO-ICT \
  ]
)

#place(
  bottom + right,
  image("logo.png", width: 175pt)
)
#pagebreak()

#set heading(numbering: "I.a")
#show heading: it => {
  set block(below: 10pt)
  set text(weight: "regular")
  align(center, smallcaps(it))
}
#set text(
    font: "Noto Music"
)

#outline()
#pagebreak()

= Introductie
== Context en achtergrond
Ik heb tijdens mijn stageperiode gewerkt aan een datavisualisatietool. Ik heb deze opdracht gemaakt in dienst van Wynand Alkema, namens zijn bedrijf Tenwise; een bedrijf gespecialiseerd in data-analyse. De tool is ontworpen om gebruikers zonder query-ervaring de mogelijkheid te geven om voedselrecepten en ingrediënten te verkennen en alternatieve ingrediënten makkelijk uit te wisselen. De tool maakt gebruik van een grafendatabase waarin voedselrecepten en ingrediënten worden opgeslagen als knooppunten, met relaties die de connecties tussen deze knooppunten weergeven.

 Ik heb tijdens de stageperiode gebruikgemaakt van backend frameworks zoals Symfony en NestJS. Het backend framework is verantwoordelijk voor optimalisatie strategieën, zoals caching en load balancing, en dient als een API voor de frontend. Door het gebruik van een OGM (Object Graph Mapper) kon ik het MVC-model toepassen op de backend.

 Deze stage bood mij de mogelijkheid om mijn kennis en vaardigheden verder te ontwikkelen. Het heeft bijgedragen aan mijn professionele groei en heeft mij waardevolle eraring opgedaan.

== Probleemstelling
Het verkennen van een dataset kan lastig zijn voor gebruikers zonder query-ervaring. Zonder een intuïtieve en gebruiksvriendelijke tool kunnen zij moeite hebben met het vinden van specifieke recepten en het identificeren van alternatieve ingrediënten. Uitdagingen die hierbij kunnen ontstaan, zijn bijvoorbeeld:

- *Beperke zoekmogelijkheden:* Gebruikers zonder query-ervaring kunnen het moeilijk vinden om gerichte zoekopdrachten uit te voeren. Ze missen mogelijk de kennis van de juiste zoektermen, filteropties of syntax van de querytaal. Dit kan resulteren in een overweldigend aantal ongerelateerde resultaten.

- *Gebrek aan overzichtelijke informatie:* Een intuïtieve tool kan gebruikers helpen om de juiste informatie te vinden. Het kan bijvoorbeeld een overzicht geven van de meest voorkomende ingrediënten in een recept, of een lijst van alternatieve ingrediënten die gebruikers kunnen gebruiken om een recept aan te passen.

- *Gebrek aan contextuele informatie:* Gebruikers kunnen moeite hebben om de context van een recept te begrijpen. Ze kunnen bijvoorbeeld niet weten welke ingrediënten het meest voorkomen in een bepaald recept, of welke ingrediënten het beste kunnen worden vervangen door een alternatief.

Gezien de complexiteit en uitdagingen die gebruikers zonder query-ervaring mogelijk ondervinden bij het verkennen van voedselrecepten en het identificeren van alternatieve ingrediënten, is het belangrijk om een intuïtieve en gebruiksvriendelijke tool te ontwerpen die deze uitdagingen kan oplossen. Het doel van dit stageproject is dan ook het ontwikkelen van deze applicatie dat de hiervoor genoemde problemen adresseert.

== Doel van het competentierapport
Het doel van dit competentierapport is om een gedetailleerd overzicht te geven van de competenties die ik heb ontwikkeld en toegepast tijdens mij stageperiode. Het rapport dient als bewijs van mijn professionele ontwikkeling en mijn vermogen om de opgedane kennis en vaardigheden, van mijn opleiding HBO-ICT, toe te passen in de praktijk. 

Daarnaast dient het rapport inzicht te geven in hoe de stage bijdraagt aan mijn persoonlijke groei en vaardigheden voor mijn toekomstige carrière. Ik zal de verschillende technieken en methoden die ik heb toegepast tijdens mijn stageperiode beschrijven en uitleggen hoe deze bijdragen aan mijn professionele ontwikkeling.

Al met al dient dit rapport als een belangrijk docuemnt om mijn professionele ontwikkeling en groei binnen de opleiding HBO-ICT te documenteren en als reflectie op mijn stage-ervaringen.

== Overzicht van de structuur
In het competentierapport wordt de volgende structuur gehanteerd om de verschillende aspecten van de stage toe te lichten:

#box(height: 325pt, 
  columns(2)[
    #set par(justify: true)

    + *Introductie:* In de introductie wordt de context en achtergrond van de stage beschreven. Daarnaast wordt de probleemstelling van het stageproject toegelicht en wordt het doel van het competentierapport beschreven.

    + *Beschrijving van het product:* Hier wordt het product beschreven dat ik heb ontwikkeld tijdens mijn stageperiode. Ik zal de verschillende functionaliteiten van het product toelichten en uitleggen hoe deze bijdragen aan het oplossen van de probleemstelling.

    + *Analyseren:* In dit hoofdstuk zal ik de verschillende analysemethoden en technieken beschrijven die ik heb toegepast tijdens mijn stageperiode. 

    + *Ontwerpen:* Hier zal ik de verschillende ontwerpmethoden en technieken beschrijven die ik heb toegepast tijdens mijn stageperiode.

    + *Realiseren*: In dit hoofdstuk zal ik het ontwikkelingsproces van het product bespreken, inclusief de stappen die ik heb genomen om het te realiseren. Eventuele problemen die ik ben tegengekomen tijdens het ontwikkelingsproces zullen ook worden besproken.

    + *Onderzoeken:* Dit hoofdstuk richt zich op de verschillende onderzoeksmethoden en technieken beschrijven die ik heb toegepast tijdens mijn stageperiode. 

    + *Reflectie:* Hier zal ik reflecteren op mijn stage-ervaringen en de verschillende competenties die ik heb ontwikkeld tijdens mijn stageperiode.

    + *Conclusie:* In dit hoofdstuk zal ik een conclusie geven over mijn stage-ervaringen en de verschillende competenties.

    + *Referenties en woordenlijst:* Hier zal ik de referenties en woordenlijst beschrijven die ik heb gebruikt tijdens mijn stageperiode.
  ]
)

Ik neem je graag mee op mijn ontwikkelingsreis tijdens mijn stageperiode. Met trots presenteer ik de competenties, reflecties en ervaringen die mijn groei en toewijding aan het vakgebied van softwareontwikkeling weerspiegelen.

#pagebreak()
= Productomschrijving
Deze sectie beschrijft de webapplicatie die ik heb ontwikkeld tijdens de stageperiode. Het product is een intuïtieve en gebruiksvriendelijke visualisatietool die gebruikers zonder query-ervaring ondersteunt bij het verkennen van grafendata. 

== Interactieve visualisaties
Één van de kenmerken van het product is de mogelijkheid om interactieve visualisaties te genereren. Gebruikers kunnen via de webapplicatie verschillende instellingen kiezen, zoals de grootte van de visualisatie, de kleuren van de knooppunten en de relaties, en de layout van de visualisatie. De visualisatie wordt vervolgens gegenereerd op basis van de geselecteerde instellingen. Deze visuele representatie van de data kan gebruikers helpen om de data beter te begrijpen en de relaties tussen de knooppunten te identificeren.

== Zoeken en filteren
De webapplicatie biedt krachtige zoek- en filtermogelijkheden waarmee gebruikers specifieke informatie op kunnen zoeken en relevante resultaten kunnen filteren. Bijvoorbeeld het type ingredient, de naam van een recept of de naam van een ingredient. Dit geeft gebruikers de mogelijkheid om snel specifieke resultaten te vinden, verbonden knooppunten te identificeren en de relaties tussen de knooppunten te analyseren. Door deze zoek- en filtermogelijkheden kunnen gebruikers de data verkennen en de informatie vinden die ze nodig hebben.

== Intuïtieve gebruikersinterface


#pagebreak()
= Analyseren
#lorem(50)
#pagebreak()

= Ontwerpen
#lorem(50)
#pagebreak()

= Realiseren
#lorem(50)
#pagebreak()

= Onderzoeken
#lorem(50)
#pagebreak()

= Reflectie
#lorem(50)
#pagebreak()

= Conclusie
#lorem(50)
#pagebreak()

= Referenties en wooordenlijst
#lorem(50)