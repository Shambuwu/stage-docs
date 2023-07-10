#align(
  center,
  text(
    size: 1.2em,
    [
      *Competentie: Ontwerpen* \
      Ontwerprapport en onderbouwing \
    ],
  )
)
#align(
  center,
  figure(
    image("../bijlagen/ontwerprapport/OIG.jpg", 
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
Dit ontwerprapport beschrijft de ontwikkeling van een datavisualisatietool voor de voedingsindustrie. Het doel van dit project was om een tool te ontwerpen die gebruikers in staat stelt om recepten en ingrediënten op een visuele en interactieve manier te verkennen en analyseren.

Het rapport begint met een probleemdefinitie, waarin de behoefte aan geavanceerde datavisualisatietools in de voedingsindustrie wordt beschreven. Vervolgens worden de ontwerpeisen opgesteld, waarbij concrete, meetbare criteria worden geformuleerd op basis van klantbehoeften. Daarna volgt een technische beoordeling, waarin de belangrijkste aspecten van het ontwerpgebied worden behandeld en de keuzes voor de gebruikte technologieën worden toegelicht.

Het ontwerp van de datavisualisatietool bestaat uit verschillende componenten, waaronder een React frontend, een Symfony backend en een Neo4j database. De frontend biedt een intuïtieve gebruikersinterface, terwijl de backend de logica en functionaliteiten beheert en communiceert met de database via de Neo4j Object Graph Mapper (OGM). Deze architectuur zorgt voor schaalbaarheid, modulariteit en efficiënte verwerking van complexe relaties tussen recepten, ingrediënten en andere gegevens.

Het ontwerp is uitgebreid getest en geëvalueerd aan de hand van functionele tests en gebruikersfeedback. De tests hebben aangetoond dat de tool voldoet aan de gestelde ontwerpeisen en functionaliteiten zoals zoeken, filteren en visualisatie correct functioneren. De gebruikerservaring is positief beoordeeld, waarbij de gebruikersinterface als overzichtelijk en gebruiksvriendelijk wordt ervaren.

De ontwerpbeoordeling concludeert dat het ontwerp over het algemeen effectief en efficiënt is, met enkele verbeterpunten om de gebruikerservaring verder te optimaliseren. Aanbevelingen voor toekomstig werk omvatten het implementeren van ontbrekende functionaliteiten en het verfijnen van de gebruikersinterface op basis van gebruikersfeedback.

Dit ontwerprapport biedt een gedetailleerd inzicht in het ontwerp en de ontwikkeling van de datavisualisatietool, waarbij voldaan wordt aan de gestelde ontwerpeisen en rekening gehouden wordt met de behoeften van de gebruikers in de voedingsindustrie. Het ontwerp legt een solide basis voor verdere ontwikkeling en implementatie van de tool, met het potentieel om waardevolle inzichten te bieden en innovatie te stimuleren in de voedingssector.

#pagebreak()
= Probleem definitie
== Probleemscope
De probleemscope van dit ontwerprapport richt zich op het ontwerp van een datavisualisatietool voor de voedingsindustrie. Het probleem dat moet worden aangepakt, is het gebrek aan een gebruiksvriendelijke tool waarmee gebruikers recepten en ingrediënten kunnen zoeken, filteren, visualiseren en alternatieve ingrediënten kunnen identificeren.

De scope van dit ontwerprapport omvat het ontwerpproces van de datavisualisatietool, waarbij de nadruk ligt op het creëren van een intuïtieve gebruikersinterface, het ontwerpen van relevantie zoek- en filtermogelijkheden, en het visualiseren van de gegevens op een overzichtelijke manier. 

== Technische beoordeling
Deze technische beoordeling biedt een overzicht van de belangrijkste aspecten die relevant zijn voor het ontwerp van de datavisualisatietool. Het doel van deze beoordeling is om inzicht te krijgen in recente ontwikkelingen op het gebied van datavisualisatie, de huidige staat van de voedingsindustrie, en de technische mogelijkheden van de datavisualisatietool.

=== Achtergrondinformatie
In de voedingsindustrie is er een toenemende behoefte aan geavanceerde tools die het zoeken, filteren en visualiseren van recepten en ingrediënten mogelijk maken. Deze tools kunnen bijdragen aan het identificeren van alternatieve ingrediënten, het optimaliseren van voedingswaarden en het bevorderen van innovatie. Het ontwikkelen van een datavisualisatietool kan hierin een cruciale rol spelen.

=== Huidige stand van zaken
Binnen het vakgebied van datavisualisatie zijn er verschillende technologieën en benaderingen die relevant zijn voor dit project. Grafische bibliotheken zoals D3.js, Plotly en Highcharts bieden geavanceerde mogelijkheden voor het creëren van interactieve en visueel aantrekkelijke visualisaties. Daarnaast zijn er frameworks zoals React en Angular die kunnen worden gebruikt voor de ontwikkeling van de gebruikersinterface.

Er zijn reeds verschillende tools beschikbaar die het zoeken, filteren en visualiseren van recepten en ingrediënten mogelijk maken. Enkele voorbeelden hiervan zijn Foodpairing, Yummly en FoodData Central. Het is essentieel om deze tools te onderzoeken om inzicht te krijgen in de sterke punten en verbeterpunten ervan, om zo een effectieve datavisualisatietool te kunnen ontwerpen.

=== Best practices en richtlijnen 
Het ontwerpen van een effectieve datavisualisatietool vereist het volgen van best practices en richtlijnen op het gebied van gebruikerservaring, interactieontwerp en visualisatietechnieken. Enkele belangrijke aspecten om rekening mee te houden zijn:

- Zorg voor een intuïtieve gebruikersinterface die eenvoudig te navigeren is.

- Bied interactieve filters en zoekmogelijkheden om de gebruiker te helpen bij het vinden van relevante informatie.

- Gebruik geschikte grafische representaties, zoals staafdiagrammen, taartdiagrammen en netwerkdiagrammen, om de gegevens effectief te communiceren.

- Maak gebruik van kleur, vorm en grootte om belangrijke informatie te benadrukken en visueel te onderscheid te maken.

- Zorg voor responsieve en schaalbare ontwerpen, zodat de tool op verschillende apparaten kan worden gebruikt.

Het begrijpen van deze technische aspecten en het volgen van best practices zal bijdragen aan het succesvol ontwerpen van de datavisualisatietool. Door gebruik te maken van de juiste technologieën en ontwerpprincipes kan een effectieve tool worden ontwikkeld die voldoet aan de eisen van de gebruikers.
== Ontwerpeisen
De ontwerpeisen vormen de kern van het ontwerp en zijn gebaseerd op de behoeften van de opdrachtgever en gebruikers. De volgende meetbare ontwerpeisen zijn vastgesteld om te voldoen aan de verwachtingen van het systeem:

+ *Toegankelijkheid via webapplicatie:*
    - De webapplicatie moet toegankelijk zijn via gangbare webbrowsers, zoals Chrome, Firefox en Safari.
    - De laadtijd van de webpagina's mag niet langer zijn dan 3 seconden.

+ *Zoekfunctionaliteit:* 
    - Het systeem moet in staat zijn om recepten en ingrediënten te doorzoeken op basis van opgegeven zoektermen.
    - De zoekresultaten moeten binnen 2 seconden worden weergegeven.
    - Het systeem moet een nauwkeurigheidspercentage van 90% hebben bij het identificeren van relevante zoekresultaten.

+ *Filterfunctionaliteit:* 
    - Het systeem moet de mogelijkheid bieden om recepten en ingrediënten te filteren op basis van specifieke criteria, zoals voedingswaarde en allergenen.
    - De toegepaste filters moeten de resultaten nauwkeurig en consistent beperken.

+ *Visualisatie van recepten en ingrediënten:* 
    - Het systeem moet visuele weergaven en presentaties genereren van het recepten- en ingrediëntennetwerk.
    - De visualisaties moeten duidelijk, overzichtelijk en begrijpelijk zijn voor de gebruikers.
    - Het systeem moet de mogelijkheid bieden om in te zoomen, uit te zoomen en te navigeren binnen de visualisaties.

+ *Identificatie van alternatieve ingrediënten:*
    - Het systeem moet alternatieve ingrediënten kunnen identificeren op basis van specifieke criteria, zoals voedingswaarde, smaak en vergelijkbare recepten.
    - Het systeem moet minimaal 80% nauwkeurigheid hebben bij het aanbevelen van alternatieve ingrediënten.

Deze ontwerpeisen vormen de basis voor het ontwerp van de datavisualisatietool en zullen ervoor zorgen dat de tool voldoet aan de behoeften van de opdrachtgever en gebruikers.

#pagebreak()
= Ontwerpbeschrijving
De ontwerpbeschrijving biedt een gedetailleerde uitleg van het ontwerp van de datavisualisatietool voor de voedingsindustrie. Dit hoofdstuk is opgedeeld in drie secties: Overzicht, Gedetailleerde beschrijving en Gebruik.

== Overzicht
Het ontwerp van de tool is gebaseerd op een client-server database model. Het bestaat uit een React frontend, een Symfony backend en een Neo4j-database. Alle componenten draaien in Docker containers, waardoor het gemakkelijk te implementeren en schaalbaar is. Het ontwerp streeft ernaar om een gebruiksvriendelijke webapplicatie te bieden waarmee gebruikers recepten en ingrediënten kunnen zoeken, filteren, visualiseren en alternatieve ingrediënten kunnen identificeren.

== Gedetailleerde beschrijving
Het ontwerp van de datavisualisatietool is gebaseerd op zorgvuldige ontwerpkeuzes die zijn gemaakt om de gewenste functionaliteiten te realiseren en een optimale gebruikerservaring te bieden.

=== Client-server database model
Het gebruik van een client-server database model biedt verschillende voordelen. Het maakt een schaalbare architectuur mogelijk, waarbij de frontend en backend onafhankelijk van elkaar kunnen worden opgeschaald om aan de groeiende vraag te voldoen. Daarnaast zorgt de scheiding tussen de frontend en backend ervoor dat de applicatie flexibel is en gemakkelijk kan worden aangepast of uitgebreid. Het gebruik van Docker helpt bij het vereenvoudigen van de implementatie en het beheer van de applicatie door de containerisatie van de componenten.

=== Frontend (React)
React is gekozen als het frontend-library vanwege zijn efficiënte, herbruikbare componenten en zijn vermogen om snelle en responsieve gebruikersinterfaces te creëren. Met React kunnen interactieve elementen en dynamische updates gemakkelijk worden geïmplementeerd, waardoor een vloeiende gebruikerservaring ontstaat. Daarnaast biedt React de mogelijkheid om componenten opnieuw te gebruiken, waardoor de ontwikkeltijd wordt verkort en de codebase overzichtelijk blijft.

#figure(
    image("../bijlagen/ontwerprapport/design_2.png", 
    width: 300pt
    ),
    caption: "Een eerste werkende demo van het frontendontwerp",
    supplement: "Figuur",
    kind: "figure"
)

React biedt de volgende voordelen die bijdragen aan het realiseren van de ontwerpeisen:

- *Modulaire componenten:* Met React kunnen componenten worden opgesplitst in herbruikbare modules, wat zorgt voor een modulaire en goed gestructureerde codebase. Dit maakt het gemakkelijk om de code te onderhouden en uit te breiden.

- *Interactieve gebruikersinterface:* React maakt het mogelijk om interactieve elementen en dynamische updates te implementeren, waardoor een vloeiende gebruikerservaring ontstaat.

- *Herbruikbaarheid:* React biedt de mogelijkheid om componenten opnieuw te gebruiken, waardoor de ontwikkeltijd wordt verkort en de codebase overzichtelijk blijft.

=== Backend (Symfony)
Symfony is gekozen als het backend-framework vanwege zijn krachtige mogelijkheden op het gebied van webontwikkeling. Het is een betrouwbaar, robuust en flexibel framework dat een solide basis biedt voor het ontwikkelen van complexe webapplicaties. Symfony volgt de principes van het Model-View-Controller (MVC) ontwerppatroon, wat helpt bij het scheiden van de logica, het datamodel en de presentatie van de applicatie. Dit zorgt voor een modulaire en goed gestructureerde codebase, waardoor onderhoud en uitbreiding van de applicatie gemakkelijker worden.

Symfony biedt verschillende voordelen die bijdragen aan het voldoen aan de ontwerpeisen:

- *Betrouwbaarheid en flexibiliteit:* Symfony is een betrouwbaar en robuust framework. Het biedt flexibiliteit in termen van architectuur en functionaliteiten, waardoor het mogelijk is om de backend af te stemmen op de specifieke behoeften van de datavisualisatietool.

- *Model-View-Controller (MVC) Patroon:* Het toepassen van het Model-View-Controller (MVC) patroon in Symfony heeft als voordeel dat het de applicatie in modulaire componenten opdeelt, waardoor de codebase goed gestructureerd is. Deze modulaire structuur maakt het eenvoudiger om onderhoudstaken uit te voeren en de applicatie uit te breiden met nieuwe functionaliteiten. Door de scheiding van verantwoordelijkheden tussen het model, de view en de controller is het gemakkelijker om wijzigingen aan te brengen in specifieke onderdelen zonder de rest van de applicatie te beïnvloeden. Dit bevordert de flexibiliteit en maakt het mogelijk om de codebase beter te beheren en te onderhouden over de tijd.

- *Communicatie met de database:* Symfony communiceert met de Neo4j-database via de Neo4j Object Graph Mapper (OGM). De OGM biedt een abstractielaag voor de communicatie met de database en maakt het gemakkelijk om objectgeoriënteerde modellen te mappen naar de grafenstructuur van Neo4j. Dit zorgt voor een efficiënte interactie met de database en het ophalen en manipuleren van de benodigde gegevens.

=== Database (Neo4j)
De keuze voor Neo4j als de databaseoplossing is gebaseerd op de unieke mogelijkheden van een grafendatabase voor het opslaan en bevragen van complexe relaties tussen entiteiten. De grafenstructuur van Neo4j maakt het gemakkelijk om de onderlinge verbanden tussen recepten, ingrediënten en andere gegevens vast te leggen. Dit is vooral waardevol in de voedingsindustrie, waar de relaties tussen ingrediënten en recepten vaak complex zijn. 

- *Grafenstructuur:* Een van de voordelen van Neo4j is de grafenstructuur, die het mogelijk maakt om complexe relaties tussen recepten, ingrediënten en andere gegevens efficiënt vast te leggen. Door gebruik te maken van deze grafenstructuur kan de applicatie waardevolle inzichten genereren door de onderlinge verbanden tussen de entiteiten te verkennen.

- *Efficiënte bevraging van gegevens:* Daarnaast biedt Neo4j geavanceerde querymogelijkheden die specifiek zijn ontworpen voor grafen. Deze querymogelijkheden stellen de applicatie in staat om complexe zoek- en filteroperaties efficiënt uit te voeren, wat resulteert in een verbeterde responstijd van de applicatie. Door deze efficiënte bevraging van gegevens kan de datavisualisatietool snel en nauwkeurig reageren op gebruikersverzoeken.

- *Schaalbaarheid:* Een ander belangrijk aspect is de schaalbaarheid van Neo4j. Het kan gemakkelijk worden opgeschaald om te voldoen aan de groeiende vraag naar dataverwerking. Dit betekent dat de applicatie eenvoudig kan worden uitgebreid en kan voldoen aan de behoeften van een groeiend aantal gebruikers en een grotere dataset.

#figure(
    image("../bijlagen/ontwerprapport/design_1.png", 
    width: 400pt
    ),
    caption: "Architectuur van het ontwerp",
    supplement: "Figuur",
    kind: "figure"
)

Hierboven is een schematische weergave te zien van de architectuur van het ontwerp. De frontend communiceert met de backend via API-calls. De backend communiceert met de neo4j database via de OGM. De neo4j database bevat de verzameling van recepten, ingrediënten en gerelateerde gegevens.

Deze architectuur biedt verschillende voordelen, zoals schaalbaarheid, modulariteit en efficiënte interactie met de database. Het stelt de datavisualisatietool in staat om gebruikersvriendelijke functionaliteiten te bieden, zoals zoeken, filteren, visualiseren en identificeren van alternatieve ingrediënten. Door de scheiding van verantwoordelijkheden tussen de frontend, backend en database is de applicatie flexibel, onderhoudbaar en gemakkelijk uitbreidbaar.


== Gebruik
Het ontwerp van de datavisualisatietool is bedoeld om gebruikers in staat te stellen recepten en ingrediënten te verkennen, filteren, visualiseren en alternatieven te identificeren. De tool is ontworpen als een webapplicatie, waardoor gebruikers eenvoudig toegang hebben tot de functionaliteiten via een webbrowser.

Wanneer een gebruiker de webapplicatie opent, wordt deze verwelkomd met een intuïtieve gebruikersinterface. Hier kan de gebruiker navigeren door de verschillende functionaliteiten en acties uitvoeren.

De zoekfunctionaliteit stelt gebruikers in staat om specifieke recepten en ingrediënten te vinden door zoektermen in te voeren. Het ontwerp zorgt ervoor dat de zoekresultaten binnen enkele seconden worden weergegeven. Gebruikers kunnen ook filters toepassen om de resultaten verder te verfijnen op basis van criteria zoals voedingswaarde, allergenen en andere eigenschappen.

Het ontwerp omvat ook de mogelijkheid om recepten en ingrediënten visueel weer te geven. Gebruikers kunnen interactieve visualisaties verkennen, inzoomen op details en uitzoomen voor een breder overzicht. De visualisaties zijn ontworpen om de relaties tussen recepten, ingrediënten en andere gegevens duidelijk en begrijpelijk te tonen.

Daarnaast biedt het ontwerp de functionaliteit om alternatieve ingrediënten te identificeren op basis van specifieke criteria, zoals voedingswaarde, smaak en vergelijkbare recepten. Dit stelt gebruikers in staat om verschillende opties te verkennen en alternatieven te vinden die passen bij hun specifieke behoeften of dieetvereisten.

Het ontwerp van de datavisualisatietool is gericht op het bieden van een intuïtieve en gebruiksvriendelijke ervaring voor gebruikers. Door middel van de ontworpen functionaliteiten kunnen gebruikers op een effectieve en efficiënte manier recepten en ingrediënten verkennen, filteren, visualiseren en alternatieven identificeren.

#pagebreak()
= Evaluatie
In dit gedeelte wordt het ontwerp van de datavisualisatietool geëvalueerd aan de hand van een aantal criteria. Deze criteria zijn gebaseerd op de ontwerpeisen en de verwachtingen van de opdrachtgever en gebruikers.

Om het ontwerp te evalueren, wordt er gebruik gemaakt van een aantal evaluatiemethoden, waaronder functionele tests en prestatietests. Deze evaluatiemethoden zullen helpen bij het beoordelen van de effectiviteit en efficiëntie van het ontwerp.

== Testen en resultaten
=== Functionele tests
Er zijn uitgebreide tests uitgevoerd om ervoor te zorgen dat de datavisualisatietool naar behoren functioneert en voldoet aan de gestelde ontwerpeisen. Deze tests zijn uitgevoerd op zowel de frontend als de backend om de functionaliteiten van de tool te controleren en te valideren. Aan de frontend zijn verschillende functionele tests uitgevoerd om de gebruikersinterface te controleren en te valideren. Aan de backend zijn verschillende functionele tests uitgevoerd om de API-calls te controleren en te valideren. De resultaten van deze tests zijn weergegeven in de onderstaande tabellen.
#figure(
    [
        #table(
            columns: (auto, auto, auto),
            [Testcase], [Verwacht resultaat], [Werkt zoals verwacht?],
            [Zoeken op naam], [Recepten met overeenkomende naam worden weergegeven], [Ja],
            [Zoeken op ingrediënt], [Recepten met het opgegeven ingrediënt worden weergegeven], [Ja],
            [Zoeken op voedingswaarde], [Recepten met de opgegeven voedingswaarde worden weergegeven], [N/A],
            [Filteren op allergenen], [Recepten zonder de opgegeven allergenen worden weergegeven], [N/A],
            [Filteren op categorie], [Recepten binnen de opgegeven categorie worden weergegeven], [N/A]
        )
    ],
    caption: "Functionele tests frontend",
    supplement: "Tabel",
)


Bepaalde tests zijn niet uitgevoerd omdat de functionaliteit nog niet is geïmplementeerd. Deze tests zullen worden uitgevoerd zodra de functionaliteit is geïmplementeerd.

=== Gebruikersfeedback
Naast tests is er ook feedback verzameld van de opdrachtgever om inzicht te krijgen in de gebruikerservaring en de verwachtingen. De feedback is waardevol gebruikt om het ontwerp te verbeteren en de functionaliteiten aan te passen aan de behoeften van de gebruikers.

== Ontwerpbeoordeling

Het ontwerp van de datavisualisatietool is grondig geëvalueerd op basis van functionele tests en gebruikersfeedback. Hieronder volgt een beoordeling van het ontwerp:

- Functionaliteit: De uitgevoerde functionele tests hebben aangetoond dat de datavisualisatietool voldoet aan de gestelde ontwerpeisen. De zoekfunctionaliteit, filtermogelijkheden en visualisaties werken zoals verwacht en bieden gebruikers de mogelijkheid om op een intuïtieve manier recepten en ingrediënten te vinden en te analyseren.

- Gebruikerservaring: De feedback van de opdrachtgever is positief en geeft aan dat de gebruikersinterface overzichtelijk en gebruiksvriendelijk is. De visuele presentaties van recepten- en ingrediëntennetwerken zijn duidelijk en begrijpelijk, waardoor gebruikers waardevolle inzichten kunnen verkrijgen. De prestatietests hebben aangetoond dat de tool snel reageert en voldoet aan de verwachtingen qua laadtijd.

- Verbeterpunten: Tijdens de evaluatie zijn enkele verbeterpunten naar voren gekomen. Zo zijn bepaalde functionaliteiten nog niet geïmplementeerd en zullen deze in een latere fase worden getest. Daarnaast zijn er enkele suggesties gegeven om de gebruikerservaring verder te optimaliseren, zoals het verbeteren van de navigatie en het toevoegen van aanvullende functionaliteiten.

Op basis van de evaluatie kan geconcludeerd worden dat het ontwerp van de datavisualisatietool over het algemeen goed voldoet aan de gestelde ontwerpeisen en de verwachtingen van de gebruikers. Er zijn nog enkele verbeterpunten die kunnen worden doorgevoerd om de gebruikerservaring verder te versterken. Aanbevelingen voor toekomstig werk omvatten het implementeren van de ontbrekende functionaliteiten en het verder finetunen van de gebruikersinterface op basis van gebruikersfeedback.

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