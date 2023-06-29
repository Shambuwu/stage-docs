= Competentierapport
#let date = datetime(
  year: 2023,
  month: 6,
  day: 28
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
  image("bijlagen/logo.png", width: 175pt)
)
#pagebreak()

#set heading(numbering: "1.1")
#show heading: it => {
  set block(below: 10pt)
  set text(weight: "regular")
  align(left, smallcaps(it))
}
#set text(
    font: "Linux Libertine",
)

#outline()
#pagebreak()
#set page(
  numbering: "1 / 1",
  number-align: right,
)

= Voorwoord
Voor u ligt het verantwoordingsrapport dat vormt als weerspiegeling van mijn professionele ontwikkeling en competentiegroei gedurende mijn stageperiode. Graag presenteer ik in dit rapport mijn ervaringen, verworven kennis en vaardigheden.

Graag wil ik van deze gelegenheid gebruik maken om mijn waardering en dankbaarheid uit te spreken naar mijn medestudent Geert Perton. Zijn voortdurende steun, samenwerking en motivatie gedurende dit traject hebben een onschatbare waarde gehad. Samen hebben we uitdagingen overwonnen, kennis gedeeld en elkaar geïnspireerd om het beste uit onszelf te halen. Zonder zijn waardevolle bijdrage zou dit verantwoordingsrapport niet compleet zijn. 

~ Levi Leuwol, #date.display()


#pagebreak()
= Referenties
#align(left,
  table(
    columns: (auto, auto, auto),
    rows: (auto, auto, auto),
    align: left,
    inset: 10pt,
    stroke: none,
    [*Onderdeel*], [*Auteur*], [*Vindplaats*],
    [*Broncode*], [], [],
    [Client], [G. E. Perton, L. J. J. Leuwol], [broncode -> frontend],
    [Server], [G. E. Perton, L. J. J. Leuwol], [broncode -> backend],
    [], [], [],
    [*Documenten*], [], [],
    [Analyseren: Documentanalyse en inzichten], [L. J. J. Leuwol], [documenten -> analyseverslag.pdf],
    [Adviseren: Adviesrapport en aanbevelingen], [L. J. J. Leuwol], [documenten -> adviesrapport.pdf],
    [Ontwerpen: Ontwerpdocument en rationale], [L. J. J. Leuwol], [documenten -> ontwerpdocument.pdf],
    [Realiseren: Implementatieverslag en uitvoering], [L. J. J. Leuwol], [documenten -> implementatieverslag.pdf],
    [Projectmatig werken: Projectplan en -evaluatie], [L. J. J. Leuwol], [documenten -> projectplan.pdf],
    [Onderzoeken: Onderzoeksverslag en resultaten], [L. J. J. Leuwol], [documenten -> onderzoeksverslag.pdf],
    [], [], [],
    [*Bijlagen*], [], [],
    [Hanzehogeschool Groningen logo], [Hanzehogeschool Groningen], [https://freebiesupply.com/logos/hanzehogeschool-groningen-logo/]
  )
)

#pagebreak()
= Begrippenlijst
#align(left,
  table(
    columns: (auto, auto),
    rows: (auto, auto),
    align: left,
    inset: 10pt,
    stroke: none,
    [*Begrip*], [*Definitie*],
    [Client-server database model], [Een architectuurmodel waarbij de database zich op een centrale server bevindt, terwijl de client via een netwerkverbinding toegang heeft tot de database.],
    [Client], [Een client verwijst naar een computer of apparaat dat verbonden is met een netwerk en diensten of bronnen aanvraagt bij een andere computer, bekend als de server.],
    [Server], [Een computer of apparaat dat verantwoordelijk is voor het ontvangen, verwerken en leveren van diensten of bronnen aan clients in een client-server model. Het dient als een centrale bron waar clients verbinding mee maken om toegang te krijgen tot de gewenste gegevens of functionaliteiten.],
    [Database], [Een gestructureerde verzameling gegevens die op georganiseerde wijze wordt opgeslagen en beheerd],
    [Graph database], [Een type database dat is geoptimaliseerd voor het opslaan, beheren en vragen van grafendata.],
    [Neo4j], [Een open-source graph database management systeem dat gebaseerd is op het property graph model.],
    [Symfony], [Een open-source PHP-framework voor de ontwikkeling van webapplicaties.],
    [PHP], [Een populaire programmeertaal die veel wordt gebruikt voor de ontwikkeling van webapplicaties.],
    [Framework], [Een softwareontwikkelingsplatform dat een set van tools, bibliotheken en standaardpraktijken biedt om de ontwikkeling van applicaties te vergemakkelijken en versnellen.],
    [OGM (Object Graph Mapping)], [Een techniek die de mapping en interactie tussen objectgeoriënteerde applicaties en een graph database mogelijk maakt],
    [Webapplicatie], [Een applicatie die via een webbrowser kan worden gebruikt en toegankelijk is via het internet of een intranet],
    [Gebruikersinterface (GUI)], [Het visuele en interactieve deel van een softwareapplicatie waarmee gebruikers kunnen communiceren en taken kunnen uitvoeren],
    [Datavisualisatie], [Het visueel weergeven en presenteren van gegevens om patronen, trends en inzichten gemakkelijker te begrijpen en communiceren],
    [Backend], [Het gedeelte van een softwareapplicatie dat verantwoordelijk is voor de verwerking van gegevens, logica en database-interactie, vaak op de server],
    [Frontend], [Het gedeelte van een softwareapplicatie dat de gebruikersinterface presenteert en gebruikersinteractie mogelijk maakt, vaak in de webbrowser],
    [Frontend framework], [Een softwareframework dat specifiek is ontworpen voor de ontwikkeling van de gebruikersinterface en de interactie met een webapplicatie],
    [Backend framework], [Een softwareframework dat specifiek is ontworpen voor de ontwikkeling van de serverzijde van een webapplicatie, inclusief de gegevensverwerking en logica],
    [API (Application Programming Interface)], [Een set regels en protocollen die de communicatie en interactie tussen verschillende softwareapplicaties mogelijk maakt],
    [MVC (Model-View-Controller)], [Een ontwerppatroon voor de structurering van een softwareapplicatie, waarbij de functionaliteit wordt opgesplitst in drie componenten: het model, de view en de controller],
    [Git], [Een gedistribueerd versiebeheersysteem dat wordt gebruikt voor het bijhouden van wijzigingen in de broncode van softwareprojecten],
    [Continuous Integration (CI)], [Een ontwikkelingspraktijk waarbij ontwikkelaars regelmatig hun code integreren in een gedeelde repository, wat automatische build- en testprocessen triggert],
    [INP], [Interaction to Next Paint, een metriek dat de tijd meet tussen de interactie van een gebruiker en de daaropvolgende visuele update van de pagina],
    [LCP], [Largest Contentful Paint, een metriek dat de laadtijd van het grootste zichtbare element op een webpagina meet],
  )
)

#pagebreak()
= Samenvatting


#pagebreak()
= Inleiding
== Context en achtergrond
Tijdens de stageperiode is er gewerkt aan een datavisualisatietool. Deze opdracht is gemaakt in dienst van Wynand Alkema, namens zijn bedrijf Tenwise; een bedrijf gespecialiseerd in data-analyse. Op basis van publieke databronnen heeft Tenwise een voedselrecept netwerk gebouwd. Op basis van AI kan er met de relaties voorspelt worden welke recepten vervangen zouden kunnen worden door gezondere en goedkopere alternatieven. Tenwise heeft niet alleen behoefte bij het analyseren van dit netwerk met AI, maar ook bij het interactief verkennen van de data via een webinterface.

De tool moet gebruikers zonder query-ervaring de mogelijkheid geven om de data te verkennen en de informatie te vinden die ze nodig hebben. Daarnaast moet de tool gebruikers de mogelijkheid geven om de data te visualiseren en de relaties tussen de knooppunten te identificeren.

== Probleemstelling
Het verkennen van een dataset kan lastig zijn voor gebruikers zonder query-ervaring. Zonder een intuïtieve en gebruiksvriendelijke tool kunnen zij moeite hebben met het vinden van specifieke recepten en het identificeren van alternatieve ingrediënten. Uitdagingen die hierbij kunnen ontstaan, zijn bijvoorbeeld:

- *Beperkte zoekmogelijkheden:* Gebruikers zonder query-ervaring kunnen het moeilijk vinden om gerichte zoekopdrachten uit te voeren. Ze missen mogelijk de kennis van de juiste zoektermen, filteropties of syntax van de querytaal. Dit kan resulteren in een overweldigend aantal ongerelateerde resultaten.

- *Gebrek aan overzichtelijke informatie:* Een intuïtieve tool kan gebruikers helpen om de juiste informatie te vinden. Het kan bijvoorbeeld een overzicht geven van de meest voorkomende ingrediënten in een recept, of een lijst van alternatieve ingrediënten die gebruikers kunnen gebruiken om een recept aan te passen.

- *Gebrek aan contextuele informatie:* Gebruikers kunnen moeite hebben om de context van een recept te begrijpen. Ze kunnen bijvoorbeeld niet weten welke ingrediënten het meest voorkomen in een bepaald recept, of welke ingrediënten het beste kunnen worden vervangen door een alternatief.

Gezien de complexiteit en uitdagingen die gebruikers zonder query-ervaring mogelijk ondervinden bij het verkennen van voedselrecepten en het identificeren van alternatieve ingrediënten, lopen gebruikers het risico om foutieve informatie te vinden of de verkeerde conclusies te trekken. Dit kan leiden tot misvattingen over de data en het nemen van verkeerde beslissingen.

// == Doel van het competentierapport
// Het doel van dit competentierapport is om een gedetailleerd overzicht te geven van de competenties die zijn ontwikkeld en toegepast tijdens de stageperiode. Het rapport dient als bewijs van de professionele ontwikkeling en vermogen van de student om de opgedane kennis en vaardigheden, van de opleiding HBO-ICT, toe te passen in de praktijk. 

// Daarnaast dient het rapport inzicht te geven in hoe de stage bijdraagt aan de persoonlijke groei en vaardigheden van de student. De verschillende technieken en methoden die zijn toegepast tijdens de stageperiode worden beschreven en er wordt uitgelegd hoe deze bijdragen aan de professionele ontwikkeling van de student.

// Dit rapport dient als een belangrijk document om de professionele ontwikkeling en groei van de student binnen de opleiding HBO-ICT te documenteren en als reflectie op de stage-ervaringen.

== Opdracht en doelstellingen
De opdracht die is toevertrouwd door de opdrachtgever is het ontwikkelen van een intuïtieve webapplicatie die gebruikers helpt bij het verkennen van voedselrecepten en ingrediënten. De focus ligt hierbij op het oplossen van de hiervoor genoemde problemen, namelijk beperkte kennis over queries, gebrek aan overzichtelijke informatie en het ontbreken van contextuele informatie.

De doelstellingen van de opdracht zijn tweedelig. Ten eerste wordt er gestreven naar een gebruiksvriendelijke en intuïtieve zoekfunctionaliteit. Dit omvat het implementeren van zoektechnieken en -functies, zodat gebruikers zonder verstand van de Cypher query-taal toch zoekopdrachten kunnen uitvoeren. Daarnaast horen gebruikers voorzien te worden van overzichtelijke informatie over recepten en ingrediënten, zodat ze snel en gemakkelijk relevante informatie kunnen vinden. Ook is de prestatie van de webapplicatie een belangrijk aandachtspunt. De webapplicatie moet snel en responsief zijn, zodat gebruikers snel en efficiënt kunnen werken.

Ten tweede willen we contextuele informatie leveren die gebruikers helpt om de data beter te begrijpen. Dit omvat het presenteren van aanvullende informatie over de ingrediënten, zoals vervangingsmogelijkheden, voedingswaarde en smaak. Met deze contextuele informatie kunnen gebruikers betere beslissing nemen, de juiste conclusies trekken en hun recepten aanpassen op basis van hun behoeften en voorkeuren.

== Operationalisering van de doelstellingen
De volgende eisen zijn opgesteld om de doelstellingen van de opdracht te operationaliseren:
- Het implementeren van een zoekfunctionaliteit die gebruikers in staat stelt om recepten en ingrediënten te zoeken op basis van verschillende criteria, zoals naam, type en voedingswaarde.

- Het implementeren van een filterfunctionaliteit die gebruikers in staat stelt om recepten en ingrediënten te filteren op basis van verschillende criteria, zoals naam, type en voedingswaarde.

- Het implementeren van een visualisatiefunctie die gebruikers in staat stelt om de data te visualiseren en de relaties tussen de knooppunten te identificeren.

- Het implementeren van een vervangingsfunctie die gebruikers in staat stelt om alternatieve ingrediënten te identificeren en te vergelijken. Vergelijkbare ingrediënten worden getoond op basis van de voedingswaarde, smaak en aantal overeenkomende recepten.

- Om de prestatie van de webapplicatie te waarborgen, moet de webapplicatie snel en responsief zijn. Dit betekent dat de webapplicatie binnen een acceptabele tijd moet reageren op gebruikersinteractie. De webapplicatie hoort te voldoen aan de Google PageSpeed Insights#footnote[https://developers.google.com/speed/docs/insights/v5/about] richtlijnen voor een goede gebruikerservaring.


== Ondersteunend onderzoek
Google PageSpeed Insights#footnote[https://developers.google.com/speed/docs/insights/v5/about#categories] geeft inzicht over de prestatiecriteria die belangrijk zijn voor een goede gebruikerservaring. In dit geval is de Largest Contentful Paint (LCP) het meest van toepassing. Dit metriek meet de laadtijd van het grootste zichtbare element op een webpagina. In het geval va nde datavisualisatietool verwijst LCP naar de laadtijd van de grafiek die op de webpagina wordt weergegeven. De LCP moet binnen 2.5 seconden worden geladen om een goede gebruikerservaring te garanderen.

Ook de Interaction to Next Paint (INP) is een belangrijk metriek voor de webapplicatie. Het is een metriek dat de tijd meet tussen de interactie van een gebruiker en de daaropvolgende visuele update van de pagina. In het geval van de datavisualisatietool geeft de INP aan hoe snel de pagina reageert op gebruikersinteracties, zoals het wijzigen van de weergave van de grafiek, het filteren van gegevens en het uitvoeren van zoekopdrachten. De INP moet minder dan 0.2 seconden zijn om een goede gebruikerservaring te garanderen.

Op basis van deze metrieken kan de prestatie van de webapplicatie geoperationaliseerd worden. De prestatie van de webapplicatie moet voldoen aan de volgende eisen: 

- De LCP (de laadtijd van de grafiek) moet binnen 2.5 seconden geladen zijn.

- De INP (de reactietijd van de pagina) moet minder dan 0.2 seconden zijn.

Op basis van deze eisen wordt de prestatie van de webapplicatie gewaarborgd.

== Overzicht van de structuur
In het competentierapport wordt de volgende structuur gehanteerd om de verschillende aspecten van de stage toe te lichten:

#box(height: 325pt, 
  columns(2)[
    #set par(justify: true)

    + *Inleiding:* In de inleiding wordt de context en achtergrond van de stage beschreven. Daarnaast wordt de probleemstelling van het stageproject toegelicht en wordt het doel van het competentierapport beschreven.

    + *Analyseren:* In dit hoofdstuk worden de verschillende analysemethoden en technieken beschreven die zijn heb toegepast tijdens de stageperiode. 

    + *Adviseren:* In dit hoofdstuk wordt het adviesproces beschreven, inclusief de verschillende adviesmethoden en technieken.

    + *Ontwerpen:* Hier wroden de verschillende ontwerpmethoden en technieken beschreven die zijn toegepast tijdens de stageperiode.

    + *Realiseren*: In dit hoofdstuk wordt het ontwikkelingsproces van het product besproken, inclusief de stappen die zijn heb genomen om het te realiseren. Eventuele problemen die tijdens het ontwikkelingsproces zijn voortgekomen worden ook besproken.

    + *Projectmatig werken:* In dit hoofdstuk wordt het projectplan en de projectevaluatie besproken. Daarnaast wordt er een reflectie gegeven op het projectmatig werken.

    + *Onderzoeken:* Dit hoofdstuk richt zich op de verschillende onderzoeksmethoden en technieken beschrijven die zijn heb toegepast tijdens de stageperiode. 

    + *Conclusie en aanbevelingen:* In dit hoofdstuk zal wordt een conclusie gegeven over de stage-ervaringen en de verschillende competenties.

    + *Reflectie:* Hier zal een reflectie worden gegeven op de stage-ervaringen en de verschillende competenties die zijn ontwikkeld tijdens de stageperiode.
  ]
)

// #pagebreak()
// = Productomschrijving
// Deze sectie beschrijft de webapplicatie die ik heb ontwikkeld tijdens de stageperiode. Het product is een intuïtieve en gebruiksvriendelijke visualisatietool die gebruikers zonder query-ervaring ondersteunt bij het verkennen van grafendata. 

// == Interactieve visualisaties
// Één van de kenmerken van het product is de mogelijkheid om interactieve visualisaties te genereren. Gebruikers kunnen via de webapplicatie verschillende instellingen kiezen, zoals de grootte van de visualisatie, de kleuren van de knooppunten en de relaties, en de layout van de visualisatie. De visualisatie wordt vervolgens gegenereerd op basis van de geselecteerde instellingen. Deze visuele representatie van de data kan gebruikers helpen om de data beter te begrijpen en de relaties tussen de knooppunten te identificeren.

// == Zoeken en filteren
// De webapplicatie biedt krachtige zoek- en filtermogelijkheden waarmee gebruikers specifieke informatie op kunnen zoeken en relevante resultaten kunnen filteren. Bijvoorbeeld het type ingredient, de naam van een recept of de naam van een ingredient. Dit geeft gebruikers de mogelijkheid om snel specifieke resultaten te vinden, verbonden knooppunten te identificeren en de relaties tussen de knooppunten te analyseren. Door deze zoek- en filtermogelijkheden kunnen gebruikers de data verkennen en de informatie vinden die ze nodig hebben.

// == Intuïtieve gebruikersinterface


#pagebreak()
= Analyseren
== Beschrijving
Situaties waarin het belangrijk is om complexe problemen te begrijpen, trends en patronen te identificeren, risico's te evalueren en processen te optimaliseren komen vaak voor binnen de softwareontwikkeling. Het is daarom belangrijk om de verschillende analysemethoden en -technieken te begrijpen en toe te passen om deze problemen op te lossen. Analysevaardigheden helpen bij het aanpakken van deze problemen, want ze stellen je in staat om de situatie te begrijpen en de juiste oplossing te vinden.

Het nemen van besluiten op basis van feitelijke gegevens resulteert in beter resultaten en efficiëntie. Door het analyseren van gebruikersinteractie, zoals klikgedrag en zoekopdrachten, kun je het gedrag van de gebruiker beter begrijpen. Er kan ontdekt worden welke functionaliteiten en zoekopdrachten het meest gebruikt worden. Op basis van deze informatie kan de gebruikerservaring geoptimaliseerd worden.

== Analysemethoden en -technieken
#lorem(50)
== Toepassing
#lorem(50)
== Resultaten en bevindingen
#lorem(50)
== Reflectie
#lorem(50)
#pagebreak()

= Adivseren
#lorem(50)
#pagebreak()

= Ontwerpen
#lorem(50)
#pagebreak()

= Realiseren
#lorem(50)
#pagebreak()
 
= Projectmatig werken
#lorem(50)
#pagebreak()

= Onderzoeken
#lorem(50)
#pagebreak()

= Conclusie en aanbevelingen
#lorem(50)
#pagebreak()

= Reflectie
#lorem(50)
