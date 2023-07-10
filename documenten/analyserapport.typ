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
Volgens de stichting HBO-i is de competentie analyseren gedefinieerd als:

"Het analyseren van processen, producten en informatiestromen
in hun onderlinge samenhang en de context van de omgeving." #cite("hbo-i")

Dit is een brede definitie van de competentie analyseren. In dit document wordt de competentie analyseren toegelicht aan de hand van de stageopdracht en de bijbehorende verrichte analyses.

== Doel van het systeem
Het doel van het systeem is om een gebruiksvriendelijke webapplicatie te ontwerpen en ontwikkelen voor de voedingsindustrie. Deze applicatie stelt gebruikers in staat om recepten en ingrediënten te zoeken, filteren, visualiseren en alternatieve ingrediënten te identificeren. De focus ligt op het bieden van waardevolle inzichten, het verduurzamen van recepten en het versnellen van productinnovatie voor bedrijven in de voedingsindustrie.

== Omvang van het systeem
De omvang van het systeem omvat de ontwikkeling en implementatie van een datavisualisatietool voor de voedingsindustrie. De tool omvat een gebruiksvriendelijke en intuïtieve webapplicatie die gebruikers in staat stelt om recepten en ingrediënten te zoeken, filteren, visualiseren en alternatieve ingrediënten te identificeren. De tool biedt functionaliteiten zoals zoek- en filterfunctionaliteiten, gegevensvisualisatie en het vergelijken van alternatieve ingrediënten op basis van voedingswaarde, smaak en vergelijkbare recepten.

== Doelstellingen en succescriteria van het project
De volgende doelstelligen en succescriteria zijn opgesteld voor het project:
- *Doelstellingen:*
    - Het ontwerpen en ontwikkelen van een datavisualisatietool voor de voedingsindustrie.

    - Het creëren van een gebruiksvriendelijke en intuïtieve webapplicatie die gebruikers in staat stelt om recepten en ingrediënten te zoeken, filteren, visualiseren en alternatieve ingrediënten te identificeren.

    - Het bieden van waardevolle inzichten aan gebruikers om recepten te verduurzamen, alternatieven te identificeren en productinnovatie te versnellen.
- *Succescriteria:*
    - De webapplicatie is ontworpen en ontwikkeld.
    - Gebruikers kunnen recepten en ingrediënten zoeken, filteren en visualiseren,
    - Gebruikers kunnen alternatieve ingrediënten identificeren op basis van voedingswaarde, smaak en vergelijkbare recepten.
    - Het project wordt binnen de stageperiode afgerond.

== Overzicht
De volgende structuur wordt gehanteerd voor het document:
#box(height: 125pt, 
  columns(2)[
    #set par(justify: true)

    + *Inleiding:* In de inleiding wordt de context en achtergrond van de stage beschreven. Daarnaast wordt de probleemstelling van het stageproject toegelicht.

    + *Voorgesteld systeem:* In dit hoofdstuk wordt het voorgestelde systeem beschreven. De functionele en nonfunctionele eisen worden beschreven en toegelicht.

    + *Systeemmodellen:* In dit hoofdstuk worden de systeemmodellen beschreven. De scenario's en het use case model worden beschreven en toegelicht.

    + *Reflectie:* In dit hoofdstuk wordt de reflectie beschreven. De reflectie bevat een terugblik op de stageperiode en de stageopdracht.
  ]
)

#pagebreak()

= Huidig systeem
== Overzicht
Het huidige systeem voor het verkennen van de data vereist dat gebruikers handmatig Cypher queries uitvoeren om de gewenste informatie te verkrijgen. Dit kan een uitdaging zijn voor gebruikers zonder ervaring met de querytaal, omdat ze mogelijk niet bekend zijn met de juiste syntax en zoektermen. Bovendien kan het opstellen van complexe queries tijdrovend zijn en de kans op fouten vergroten.

Dit gebrek aan een intuïtieve en gebruiksvriendelijke interface voor het verkennen van de data kan leiden tot beperkte mogelijkheden voor gebruikers om gerichte zoekopdrachten uit te voeren en relevante informatie te vinden. Het kan ook leiden tot een gebrek aan overzichtelijke informatie en contextuele inzichten, waardoor gebruikers moeite kunnen hebben om de juiste conclusies te trekken en weloverwogen beslissingen te nemen.

== Risico's
De volgende risico's kunnen zich voordoen bij het huidige systeem. De ernst van de risico's is op een schaal van 1 tot 5, waarbij 1 staat voor een laag risico en 5 voor een hoog risico. De volgende risico's zijn geïdentificeerd:
#table(
  columns: (auto, 1fr, auto),
  [*Risico*], [*Beschrijving*], [*Ernst*],
  [Tijdrovende queries], [Het handmatig schrijven van complexe queries kan veel tijd in beslag nemen en de efficiëntie van het werk belemmeren.	
	Bovendien is er een hoger risico op typfouten en andere	
	fouten bij het formuleren van de queries.], [4],
  [Beperkte flexibiliteit], [Het huidige systeem biedt beperkte flexibiliteit bij het verkennen van de data. Gebruikers zijn beperkt tot het	
	handmatig uitvoeren van cypher queries.], [3],
  [Technische afhankelijkheid], [	Het huidige systeem is afhankelijk van de technische vaardigheden van gebruikers om queries correct uit te	
	voeren. Dit kan leiden tot een gebrek aan consistentie en	
	betrouwbaarheid in de verkregen resultaten.], [3],
  [Gebrek aan gebruiksvriendelijkheid], [Het ontbreken van een intuïtieve en gebruiksvriendelijke	interface maakt het moeilijk voor gebruikers om efficiënt	
	met het systeem te werken en de gewenste informatie te	
	verkrijgen.], [2]
)
#pagebreak()

= Voorgesteld systeem
== Overzicht
Op basis van de requirements die zijn vastgesteld tijdens vergaderingen met de opdrachtgever is het volgende voorgestelde systeem ontworpen en ontwikkeld.

Het voorgestelde systeem is een webapplicatie die gebruikers in staat stelt om recepten en ingrediënten te zoeken, filteren, visualiseren en alternatieve ingrediënten te identificeren. De webapplicatie bestaat uit drie componenten: de frontend, backend en database. De frontend is de gebruikersinterface van de webapplicatie. De backend is de server die de frontend bedient en de database is de opslagplaats van de gegevens. De frontend en backend communiceren met elkaar via een API. De frontend en backend communiceren met de database via een database driver.

Enkele voordelen van dit ontwerp zijn:

- *Verbeterde efficiëntie:* Het voorgestelde systeem stelt gebruikers in staat om snel en gemakkelijk recepten en ingrediënten te zoeken en filteren. Dit bespaart tijd en moeite in vergelijking met handmatig queries uitvoeren in een grafendatabase.

- *Gebruiksvriendelijkheid:* De webapplicatie is ontworpen met een intuïtieve en gebruiksvriendelijke interface, waardoor gebruikers zonder technische kennis er gemakkelijk mee kunnen werken.

- *Gegevensgestuurde inzichten:* De webapplicatie verzamelt gegevens over recepten en ingrediënten. Deze gegevens kunnen geanalyseerd worden om waardevolle inzichten te bieden aan gebruikers. Dit stelt gebruikers in staat om geïnformeerde beslissingen te nemen en hun recepten te verduurzamen.

== Functionele eisen
De volgende functionele eisen zijn vastgesteld tijdens vergaderingen met de opdrachtgever:

+ Gebruikers moeten via een webapplicatie gebruik kunnen maken van de functionaliteiten van het systeem.
  - Dit betekent dat het systeem toegankelijk moet zijn via een webbrowser en dat gebruikers alle beschikbare functionaliteiten kunnen gebruiken zonder de noodzaak van andere software of platformen.

+ Gebruikers moeten recepten en ingrediënten kunnen zoeken.
  - Het systeem moet voorzien in een zoekfunctionaliteit waarmee gebruikers naar specifieke recepten en ingrediënten kunnen zoeke op basis van bijvoorbeeld naam, ingrediënten, voedingswaarde, allergenen, etc.

+ Gebruikers moeten recepten en ingrediënten kunnen filteren.
  - Het systeem moet de mogelijkheid bieden om recepten en ingrediënten te filteren op basis van verschillende parameters, zoals voedingswaarde, allergenen, etc.

+ Gebruikers moeten recepten en ingrediënten kunnen visualiseren.
  - Het systeem moet visuele weergaven en presentaties van een recepten- en ingrediëntennetwerk kunnen genereren op basis van gebruikersvoorkeuren.

+ Gebruikers moeten alternatieve ingrediënten kunnen identificeren op basis van voedingswaarde, smaak en vergelijkbare recepten.
  - Het systeem moet een functie hebben waarmee gebruikers alternatieve ingrediënten kunnen vinden die voldoen aan specifieke criteria, zoals vergelijkbare voedingswaarde, smaakprofiel of geschiktheid voor vergelijkbare recepten.

== Niet-functionele eisen

De volgende niet-functionele eisen zijn vastgesteld tijdens vergaderingen met de opdrachtgever:

+ De webapplicatie moet gebruiksvriendelijk en intuïtief zijn.
  - De webapplicatie moet eenvoudig en intuïtief te gebruiken zijn voor verschillende gebruikers, ongeacht hun technische achtergrond of ervaring met gelijkaardige systemen, Gebruikers moeten gemakkelijk navigeren, de gewenste functionaliteiten vinden en de gewenste resultaten verkrijgen.

+ De webapplicatie moet snel reageren.
  - De webapplicatie moet snel reageren op gebruikersinteracties, zoals het invoeren van zoekopdrachten, het selecteren van filters en het genereren van visualisaties. Vertragingen moeten tot een minimum worden beperkt om een vlotte en responsieve gebruikerservaring te garanderen.

+ Het systeem moet schaalbaar zijn.
  - Het systeem moet schaalbaar zijn om te voldoen aan de behoeften toenemende datahoeveelheden.

+ Het systeem moet een beschikbaarheid van 99% hebben, met maximaal 1 uur downtime per maand.
  - Het systeem moet een hoge beschikbaarheid hebben om te garanderen dat gebruikers ten alle tijde toegang hebben tot de applicatie.

#pagebreak()

= Systeemmodellen
== Scenario's
De volgende gebruiksscenario's beschrijven het gedrag en de interactie van het systeem met de gebruikers en andere systemen. De scenario's helpen met het begrijpen van functionele en niet-functionele requirements van het systeem. Enkele scenario's zijn geïdentificeerd tijdens vergaderingen met de opdrachtgever en het ontwerpproces:

+ *Scenario 1:* Visualiseren van receptrelaties
  - De gebruiker bevindt zich op de startpagina van de webapplicatie.
  - De gebruiker voert specifieke zoektermen in, zoals "pasta" en "pesto".
  - Het systeem kan de zoekresultaten verfijnen door filteropties toe te passen, als "vegetarisch" en "glutenvrij".
  - Het systeem genereert een visuele weergave van de recepten en ingrediënten die voldoen aan de zoekcriteria.
  - De gebruiker klikt op een specifiek recept om gedetailleerde informatie te bekijken.
  - De gebruiker kan doorklikken naar de ingrediënten van het recept.

+ *Scenario 2:* Identificeren van alternatieve ingrediënten
  - De gebruiker bevindt zich op de startpagina van de webapplicatie.
  - De gebruiker voert specifieke zoektermen in, zoals "pasta" en "pesto".
  - Het systeem kan de zoekresultaten verfijnen door filteropties toe te passen, als "vegetarisch" en "glutenvrij".
  - Het systeem genereert een visuele weergave van de recepten en ingrediënten die voldoen aan de zoekcriteria.
  - De gebruiker klikt op een specifiek recept om gedetailleerde informatie te bekijken.
  - De gebruiker klikt op een specifiek ingrediënt om gedetailleerde informatie te bekijken.
  - Het systeem genereert een lijst met alternatieve ingrediënten op basis van voedingswaarde, smaak en vergelijkbare recepten.
== Use case model en dynamisch model
De volgende use cases beschrijven de functionaliteiten van het systeem. De use cases zijn geïdentificeerd tijdens vergaderingen met de opdrachtgever en het ontwerpproces. De use cases zijn voorzien van een sequentiediagram om de interactie tussen de actoren en het systeem te visualiseren. De volgende use cases zijn geïdentificeerd:

*Use case 1:* Zoeken naar recepten
  - Doel: Gebruikers kunnen recepten zoeken op basis van specifieke zoektermen.
  - Hoofdactoren: Gebruiker
  - Voorwaarden: De gebruiker bevindt zich op de startpagina van de webapplicatie.
  - Beschrijving:
    + De gebruiker bevindt zich op de startpagina van de webapplicatie.
    + De gebruiker voert specifieke zoektermen in, zoals "pasta" en "pesto".
    + De gebruiker klikt op de zoekknop.
    + Het systeem genereert een visuele weergave van de recepten en ingrediënten die voldoen aan de zoekcriteria.
    + De gebruiker kan doorklikken naar de ingrediënten van het recept.

#figure(
  image("../bijlagen/analyserapport/use_case_1.png", 
  width: 325pt
  ),
  caption: [Zoeken naar recepten],
  kind: "diagram",
  supplement: [*Use case*]
)

*Use case 2:* Identificeren van alternatieve ingrediënten
  - Doel: Gebruikers kunnen alternatieve ingrediënten identificeren op basis van voedingswaarde, smaak en vergelijkbare recepten.
  - Hoofdactoren: Gebruiker, Systeem
  - Voorwaarden: De gebruiker bevindt zich op de startpagina van de webapplicatie.
  - Beschrijving:
    + De gebruiker bevindt zich op de startpagina van de webapplicatie.
    + De gebruiker voert specifieke zoektermen in, zoals "pasta" en "pesto".
    + De gebruiker klikt op de zoekknop.
    + Het systeem genereert een visuele weergave van de recepten en ingrediënten die voldoen aan de zoekcriteria.
    + De gebruiker klikt op een specifiek recept om gedetailleerde informatie te bekijken.
    + De gebruiker klikt op een specifiek ingrediënt om gedetailleerde informatie te bekijken.
    + Het systeem genereert een lijst met alternatieve ingrediënten op basis van voedingswaarde, smaak en vergelijkbare recepten.

#figure(
  image("../bijlagen/analyserapport/use_case_2.png", 
  width: 325pt
  ),
  caption: [Vinden van alternatieve ingrediënten],
  kind: "diagram",
  supplement: [*Use case*]
)

*Use case 3:* Filteren van recepten
  - Doel: Gebruikers kunnen recepten filteren op basis van specifieke criteria.
  - Hoofdactoren: Gebruiker, Systeem
  - Voorwaarden: De gebruiker bevindt zich op de startpagina van de webapplicatie.
  - Beschrijving:
    + De gebruiker bevindt zich op de startpagina van de webapplicatie.
    + De gebruiker kan filteropties toepassen, zoals "vegetarisch" en "glutenvrij".
    + De gebruiker klikt op de zoekknop.
    + Het systeem genereert een visuele weergave van de recepten en ingrediënten die voldoen aan de filtercriteria.

#figure(
  image("../bijlagen/analyserapport/use_case_3.png", 
  width: 325pt
  ),
  caption: [Filteren van recepten],
  kind: "diagram",
  supplement: [*Use case*]
)


#pagebreak()

= Conclusie
De huidige systeemvereisten voor het verkennen van de data, waarbij gebruikers handmatig Cypher queries moeten uitvoeren, brengen uitdagingen met zich mee. Het gebrek aan een intuïtieve en gebruiksvriendelijke interface beperkt de mogelijkheden van gebruikers om gerichte zoekopdrachten uit te voeren en relevante informatie te verkrijgen. Dit kan leiden tot inefficiëntie, fouten en een gebrek aan overzichtelijke informatie. Om deze beperkingen aan te pakken, is het essentieel om een nieuwe datavisualisatietool te ontwikkelen die gebruikers in staat stelt om op een intuïtieve en gebruiksvriendelijke manier toegang te krijgen tot de benodigde informatie. Het voorgestelde systeem biedt een verbeterde efficiëntie, gebruiksvriendelijkheid en gegevensgestuurde inzichten, waardoor gebruikers in staat worden gesteld om geïnformeerde beslissingen te nemen en recepten te verduurzamen.

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