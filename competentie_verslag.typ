#align(
  center,
  text[
    *Verkenning van Voedselrecepten en Ingrediënten* \
    Een Verantwoordingsrapport over de Ontwikkeling van een Intuïtieve Datavisualisatietool \
  ]
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
    *Onderwerp:* Verantwoordingsrapport \
    *Opleiding:* HBO-ICT \
    *Studiejaar:* 3 \
  ]
)

#place(
  bottom + right,
  image("bijlagen/logo.png", width: 175pt)
)
#pagebreak()

#set text(
    font: "Linux Libertine",
)

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
#pagebreak()
#set page(
  numbering: "1 / 1",
  number-align: right,
)

= Voorwoord
Voor u ligt het verantwoordingsrapport dat vormt als weerspiegeling van mijn professionele ontwikkeling en competentiegroei gedurende mijn stageperiode. Graag presenteer ik in dit rapport mijn ervaringen, verworven kennis en vaardigheden.

Graag wil ik van deze gelegenheid gebruik maken om mijn waardering en dankbaarheid uit te spreken naar mijn medestudent Geert Perton. De voortdurende ondersteuning, samenwerking en motivatie gedurende dit traject waren van onschatbare waarde voor het behalen van de gestelde doelen. Samen hebben we kennis gedeeld en elkaar geïnspireerd om het beste uit onszelf te halen. Zonder zijn waardevolle bijdrage zou dit verantwoordingsrapport niet compleet zijn. 

~ Levi Leuwol, #date.display()

#pagebreak()
= Samenvatting
Dit verslag presenteert de ontwikkeling en implementatie van een datavisualisatietool voor de voedingsindustrie. Het doel van het project was om een gebruiksvriendelijke webapplicatie te ontwerpen en ontwikkelen waarmee gebruikers recepten en ingrediënten kunnen zoeken, filteren, visualiseren en alternatieve ingrediënten kunnen identificeren.

Het ontwerpproces omvatte een grondige analyse van de vereisten, het opstellen van gedetailleerde functionele specificaties en het ontwikkelen van een passende architectuur.

De tool biedt gebruikers een intuïtieve zoek- en filterfunctionaliteit op basis van verschillende criteria, zoals naam, type en voedingswaarde. Daarnaast kunnen gebruikers de gegevens visualiseren en de relaties tussen de knooppunten identificeren. Een vervangingsfunctie stelt gebruikers in staat om alternatieve ingrediënten te vergelijken op basis van voedingswaarde, smaak en overeenkomende recepten.

Tijdens de uitvoering van het project zijn er enkele uitdagingen opgetreden, met name in de samenwerking en planning tussen projectleden, wat resulteerde in een gebrek aan overzicht en evaluatie. Om dit in de toekomst te verbeteren, worden aanbevelingen gedaan voor een gestructureerdere aanpak en duidelijke doelen en mijlpalen.

Het uiteindelijke resultaat van het project is een functionele datavisualisatietool die waardevolle inzichten biedt aan de voedingsindustrie. De tool kan bijdragen aan het verduurzamen van recepten, het identificeren van alternatieven en het versnellen van productinnovatie.

Het succesvolle ontwikkelingsproces van deze datavisualisatietool benadrukt het belang van een goed inzicht in voedingsingrediënten en het vermogen om recepten aan te passen. Door het gebruik van deze tool kunnen mkb-bedrijven in de voedingsindustrie traditionele recepten transformeren naar plantaardige alternatieven zonder concessies te doen aan smaak en textuur.


#pagebreak()
= Inleiding
== Context en achtergrond
Tijdens de stageperiode is er gewerkt aan een datavisualisatietool. Deze opdracht is gemaakt in dienst van Wynand Alkema, namens zijn bedrijf Tenwise; een bedrijf gespecialiseerd in data-analyse. Op basis van publieke databronnen heeft Tenwise een voedselrecept netwerk gebouwd. Op basis van AI kan er met de relaties voorspelt worden welke recepten vervangen zouden kunnen worden door gezondere en goedkopere alternatieven. Tenwise heeft niet alleen behoefte bij het analyseren van dit netwerk met AI, maar ook bij het interactief verkennen van de data via een webinterface.

== Aanleiding
Bedrijven in de voedingsindustrie staan voor de uitdaging om recepten, processen en producten voortdurend aan te passen om tegemoet te komen aan de veranderende markt en nieuwe wetgeving. Inzicht in de eigenschappen van voedingsingrediënten is essentieel om deze aanpassingen succesvol te kunnen maken. Het ontwikkelen van recepten met uitsluitend plantaardige ingrediënten, terwijl traditioneel dierlijke ingrediënten worden gebruikt, vormt een specifieke uitdaging. 

Om dit probleem aan te pakken, hebben voedingsontwikkelaars Exter en Euroma samengewerkt met het Kenniscentrum Biobased Economy van de Hanzehogeschool Groningen, onder leiding van lector Wynand Alkema en docent-onderzoeker Fenna Feenstra. Met de steun van een KIEM-subsidie hebben zij zich gericht op data science voor de voedingsindustrie. Door gebruik te maken van tekst-mining en algoritmen hebben ze meer dan één miljoen recepten, bijna net zoveel ingrediënten, 1668 moleculen en 35 miljoen wetenschappelijke papers geïndexeerd. Hierdoor ontstond een netwerkstructuur waarin de relaties tussen ingrediënten, moleculen, recepten en beschrijvingen zichtbaar werden. Dit biedt voedingsontwikkelaars snel inzicht in de samenstelling, bereidingswijze, smaak en textuur van recepten, waardoor ze kunnen zoeken naar goedkopere en duurzame alternatieven.

== Opdracht en doelstellingen
De opdracht die is toevertrouwd door de opdrachtgever is het ontwikkelen van een intuïtieve webapplicatie die gebruikers helpt bij het verkennen van voedselrecepten en ingrediënten. De focus ligt hierbij op het oplossen van de volgende problemen: beperkte kennis over queries, gebrek aan overzichtelijke informatie en het ontbreken van contextuele informatie.

De doelstellingen van de opdracht zijn tweedelig. Ten eerste wordt er gestreven naar een gebruiksvriendelijke en intuïtieve zoekfunctionaliteit. Dit omvat het implementeren van zoektechnieken en -functies, zodat gebruikers zonder verstand van de Cypher query-taal toch zoekopdrachten kunnen uitvoeren. Daarnaast horen gebruikers voorzien te worden van overzichtelijke informatie over recepten en ingrediënten, zodat ze snel en gemakkelijk relevante informatie kunnen vinden. Ook is de prestatie van de webapplicatie een belangrijk aandachtspunt. De webapplicatie moet snel en responsief zijn, zodat gebruikers snel en efficiënt kunnen werken.

Ten tweede moet er contextuele informatie geleverd worden, die gebruikers helpt om de data beter te begrijpen. Dit omvat het presenteren van aanvullende informatie over de ingrediënten, zoals vervangingsmogelijkheden, voedingswaarde en smaak. Met deze contextuele informatie kunnen gebruikers betere beslissing nemen, de juiste conclusies trekken en hun recepten aanpassen op basis van hun behoeften en voorkeuren.

== Probleemstelling
Het verkennen van een dataset kan lastig zijn voor gebruikers zonder verstand van de achterliggende technologieën. Zonder een intuïtieve en gebruiksvriendelijke tool kunnen zij moeite hebben met het vinden van specifieke recepten en het identificeren van alternatieve ingrediënten. Uitdagingen die hierbij kunnen ontstaan, zijn bijvoorbeeld:

- *Beperkte zoekmogelijkheden:* Gebruikers zonder kennis van de Cypher querytaal kunnen het moeilijk vinden om gerichte zoekopdrachten uit te voeren. Ze missen mogelijk de kennis van de juiste zoektermen, filteropties of syntax van de querytaal. Dit kan resulteren in een overweldigend aantal ongerelateerde resultaten.

- *Gebrek aan overzichtelijke informatie:* Een intuïtieve tool kan gebruikers helpen om de juiste informatie te vinden. Het kan bijvoorbeeld een overzicht geven van de meest voorkomende ingrediënten in een recept, of een lijst van alternatieve ingrediënten die gebruikers kunnen gebruiken om een recept aan te passen.

- *Gebrek aan contextuele informatie:* Gebruikers kunnen moeite hebben om de context van een recept te begrijpen. Ze kunnen bijvoorbeeld niet weten welke ingrediënten het meest voorkomen in een bepaald recept, of welke ingrediënten het beste kunnen worden vervangen door een alternatief.

Gezien de complexiteit en uitdagingen die gebruikers zonder query-ervaring mogelijk ondervinden bij het verkennen van voedselrecepten en het identificeren van alternatieve ingrediënten, lopen gebruikers het risico om foutieve informatie te vinden of de verkeerde conclusies te trekken. Dit kan leiden tot misvattingen over de data en het nemen van verkeerde beslissingen.

// == Doel van het verantwoordingsrapport
// Het doel van dit verantwoordingsrapport is om een gedetailleerd overzicht te geven van de competenties die zijn ontwikkeld en toegepast tijdens de stageperiode. Het rapport dient als bewijs van de professionele ontwikkeling en vermogen van de student om de opgedane kennis en vaardigheden, van de opleiding HBO-ICT, toe te passen in de praktijk. 

// Daarnaast dient het rapport inzicht te geven in hoe de stage bijdraagt aan de persoonlijke groei en vaardigheden van de student. De verschillende technieken en methoden die zijn toegepast tijdens de stageperiode worden beschreven en er wordt uitgelegd hoe deze bijdragen aan de professionele ontwikkeling van de student.

// Dit rapport dient als een belangrijk document om de professionele ontwikkeling en groei van de student binnen de opleiding HBO-ICT te documenteren en als reflectie op de stage-ervaringen.

== Overzicht van de structuur
In het verantwoordingsrapport wordt de volgende structuur gehanteerd om de verschillende aspecten van de stage toe te lichten:

#box(height: 225pt, 
  columns(2)[
    #set par(justify: true)

    + *Inleiding:* In de inleiding wordt de context en achtergrond van de stage beschreven. Daarnaast wordt de probleemstelling van het stageproject toegelicht.

    + *Projectaanpak en risico's:* In dit hoofdstuk wordt de projectaanpak en de risico's van het project beschreven. Er wordt toegelicht hoe de doelstellingen van het project zijn geoperationaliseerd.

    + *HBO-i competenties:* In dit hoofdstuk wordt toegelicht hoe de verschillende HBO-i competenties zijn toegepast tijdens de stageperiode.

    + *Conclusie en aanbevelingen:* In dit hoofdstuk zal wordt een conclusie gegeven over de stage-ervaringen en de verschillende competenties.

    + *Reflectie:* Hier zal een reflectie worden gegeven op de stage-ervaringen en de verschillende competenties die zijn ontwikkeld tijdens de stageperiode.

    + *Referenties:* In dit hoofdstuk worden de referenties en bronnen vermeld die zijn gebruikt tijdens het schrijven van het rapport.

    + *Begrippenlijst:* In dit hoofdstuk worden de belangrijkste begrippen gedefinieerd die worden gebruikt in het rapport.
  ]
)

#pagebreak()
= Projectaanpak en risico's
== Operationalisering van de doelstellingen
De volgende eisen zijn opgesteld om de doelstellingen van de opdracht te operationaliseren:
- Het implementeren van een zoekfunctionaliteit die gebruikers in staat stelt om recepten en ingrediënten te zoeken op basis van verschillende criteria, zoals naam, type en voedingswaarde.

- Het implementeren van een filterfunctionaliteit die gebruikers in staat stelt om recepten en ingrediënten te filteren op basis van verschillende criteria, zoals naam, type en voedingswaarde.

- Het implementeren van een visualisatiefunctie die gebruikers in staat stelt om de data te visualiseren en de relaties tussen de knooppunten te identificeren.

- Het implementeren van een vervangingsfunctie die gebruikers in staat stelt om alternatieve ingrediënten te identificeren en te vergelijken. Vergelijkbare ingrediënten worden getoond op basis van de voedingswaarde, smaak en aantal overeenkomende recepten.

- Om de prestatie van de webapplicatie te waarborgen, moet de webapplicatie snel en responsief zijn. Dit betekent dat de webapplicatie binnen een acceptabele tijd moet reageren op gebruikersinteractie. De webapplicatie hoort te voldoen aan de Google PageSpeed Insights#footnote[https://developers.google.com/speed/docs/insights/v5/about] richtlijnen voor een goede gebruikerservaring.


== Ondersteunend onderzoek
Google PageSpeed Insights#footnote[https://developers.google.com/speed/docs/insights/v5/about#categories] geeft inzicht over de prestatiecriteria die belangrijk zijn voor een goede gebruikerservaring. In dit geval is de Largest Contentful Paint (LCP) het meest van toepassing. Dit metriek meet de laadtijd van het grootste zichtbare element op een webpagina. In het geval van de datavisualisatietool verwijst LCP naar de laadtijd van de grafiek die op de webpagina wordt weergegeven. De LCP moet binnen 2.5 seconden worden geladen om een goede gebruikerservaring te garanderen.

Ook de Interaction to Next Paint (INP) is een belangrijk metriek voor de webapplicatie. Het is een metriek dat de tijd meet tussen de interactie van een gebruiker en de daaropvolgende visuele update van de pagina. In het geval van de datavisualisatietool geeft de INP aan hoe snel de pagina reageert op gebruikersinteracties, zoals het wijzigen van de weergave van de grafiek, het filteren van gegevens en het uitvoeren van zoekopdrachten. De INP moet minder dan 0.2 seconden zijn om een goede gebruikerservaring te garanderen.

Op basis van deze metrieken kan de prestatie van de webapplicatie geoperationaliseerd worden. De prestatie van de webapplicatie moet voldoen aan de volgende eisen: 

- De LCP (de laadtijd van de grafiek) moet binnen 2.5 seconden geladen zijn.

- De INP (de reactietijd van de pagina) moet minder dan 0.2 seconden zijn.

Op basis van deze eisen wordt de prestatie van de webapplicatie gewaarborgd.

== Risico's
Bij het uitvoeren van dit project kunnen zich enkele risico's voordoen. Het is belangrijk om deze risico's te identificeren en maatregelen te ondernemen om deze te beheersen. Hiervoor is een lijst gemaakt met mogelijk risico's. De ernst van de risico's is op een schaal van 1 tot 5, waarbij 1 staat voor een laag risico en 5 voor een hoog risico. De volgende risico's zijn geïdentificeerd:

#table(
  columns: (auto, 1fr, auto),
  [*Risico*], [*Beschrijving*], [*Ernst*],
  [Technische complexiteit], [Het ontwikkelen van de functionaliteiten kan technisch complex zijn. Het kan uitdagend zijn om alle gewenste functionaliteiten te implementeren in de gestelde tijd.], [4],
  [Prestatieproblemen], [Prestatieproblemen kunnen een significante impact hebben op de gebruikerservaring. Het is belangrijk om de gestelde prestatiecriteria in de gaten te houden.], [4],
  [Onvoldoende samenwerking en communicatie], [Het gebrek aan samenwerking en communicatie kan leiden tot enkele negatieve gevolgen.], [3],
  [Onbedoelde toegang tot de applicatie], [Het project bevat geen gebruikersaccounts of inlogfunctionaliteit, wat betekent dat de applicatie voor iedereen toegankelijk is. Dit kan leiden tot onbedoelde toegang tot de applicatie.], [2]
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
= HBO-i competenties
== Analyseren
In het kader van het project is de competentie Analyseren toegepast. Er is gewerkt aan het identificeren van kernelementen, klant- en gebruikersbehoeften en het analyseren van gebruikerservaringen. 

Een belangrijk aspect van de analytische aanpak was het identificeren van de kernelementen van de opdracht, waarbij er is samengewerkt met de opdrachtgever om een duidelijk beeld te krijgen van de doelstellingen en vereisten. Vervolgens zijn deze kernelementen vertaald naar een concrete technische oplossing, waarbij functionaliteit en gebruiksvriendelijkheid centraal stonden.

Er is iteratief gewerkt met de opdrachtgever. Doormiddel van regelmatige feedbacksessies zijn de kernwaarden en vereisten van de opdrachtgever continu geëvalueerd en geanalyseerd. Door dit iteratief proces is ervoor gezorgd dat het ontwerp optimaal aansluit op de wensen en behoeften van de opdrachtgever. 

Bovendien is er tijdens het traject voortdurend geëvalueerd vanuit het perspectief van de gebruiker. Er zijn gebruikerstesten en gebruikersfeedbacksessies georganiseerd om de projectvoortgang te evalueren. Tijdens de gebruikerstesten zijn gebruikers gevraagd om de webapplicatie te gebruiken en feedback te geven over de functionaliteit en gebruiksvriendelijkheid. De input van de gebruikers is gebruikt om aanpassingen en optimalisaties door te voeren in het ontwerp en functionaliteit van de webapplicatie.

Tenslotte is er ook uitgebreid onderzoek gedaan naar verschillende technologieën op het gebied van database-integratie. Eén van de belangrijke aspecten van de applicatie was het effectief en efficiënt kunnen werken met grafendata. Er zijn verschillende frameworks geanalyseerd om de integratie van een grafendatabase te realiseren. Eén van de technologieën die grondig is geanalyseerd, is de Neo4j-OGM. Deze library biedt een abstractielaag bovenop de Neo4j database, waardoor objectgeoriënteerde interacties met de database mogelijk zijn.

Tijdens de analyse van de Neo4j-OGM is er gekeken naar de functionaliteit, prestaties en ondersteuning van de library. Er is ook gekeken naar vergelijkebare libraries en technologieën om de voordelen en nadelen beter te begrijpen. Op basis van deze analyse is er een keuze gemaakt om de Neo4j-OGM te gebruiken voor de integratie van de Neo4j database.

== Adviseren
In het kader van het project is de competentie Adviseren toegepast door effectief advies te verstrekken op het gebied van interactieontwerp en het realiseren van de gewenste functionaliteit.

- *Adviseren over het ontwerp:* Tijdens het traject is er advies verstrekt over het ontwerp van de webapplicatie. Er is actief geadviseerd over de doelstellingen van elke iteratie van het project, waarbij er rekening is gehouden met de wensen en behoeften van de opdrachtgever. Het advies had betrekking op het ontwerp van specifieke functionaliteiten die elke iteratie aangepakt moesten worden om zo een gestructureerde en succesvolle ontwikkeling te waarborgen.

- *Adviseren over de user experience:* Er is advies verstrekt over de user experience van de webapplicatie. Er is gekeken naar de verschillende interacties die gebruikers kunnen uitvoeren en hoe deze interacties de gebruikerservaring kunnen beïnvloeden. Er is advies verstrekt over de verschillende interacties en hoe deze kunnen worden geoptimaliseerd om de gebruikerservaring te verbeteren. 

- *Adviseren over technologische trends:* Op basis van uitgebreid onderzoek dat is gedaan naar technologische trends en ontwikkelingen, is er advies verstrekt over de technologieën die het beste kunnen worden gebruikt voor de ontwikkeling van de webapplicatie. Er is gekeken naar de voordelen en nadelen van verschillende technologieën en hoe deze kunnen worden toegepast om de gewenste functionaliteit te realiseren.

- *Adviseren over de architectuur:* Er is gekeken naar verschillende componenten van de architectuur, zoals de frontend, backend en database. Er is advies verstrekt over de architectuur van de applicatie en hoe deze kan worden geoptimaliseerd om de gewenste functionaliteit te realiseren.

Door actief te adviseren over het ontwerp, de user experience, technologische trends en de architectuur van de applicatie, is er een belangrijke bijdrage geleverd aan de ontwikkeling van de webapplicatie. Het advies heeft bijgedragen aan het realiseren van de gewenste functionaliteit en het waarborgen van de gebruiksvriendelijkheid van de webapplicatie.

== Ontwerpen
In het kader van het project is de competentie Ontwerpen toegepast door het creëren van een gebruiksvriendelijk en intuïtief ontwerp voor de webapplicatie. Er is gewerkt aan de volgende aspecten bij het ontwerpen van de applicatie:

- *Client-server database architectuur:* Op basis van de hiervoor genoemde adviezen, is ervoor gekozen om een client-server database architectuur te gebruiken. Dit betekent dat de database zich op een centrale server bevindt. De client heeft via de server toegang tot de database. De client-server architectuur is gekozen om de prestatie van de webapplicatie te waarborgen. De server kan efficiënter omgaan met de database doormiddel van extra abstractielagen. Dit zorgt ervoor dat de client minder belast wordt en de webapplicatie sneller en responsiever is.

- *Neo4j-OGM:* Er is gekozen om de Neo4j-OGM te gebruiken. Deze dient als abstractielaag bovenop de Neo4j database, waardoor objectgeoriënteerde interacties met de database mogelijk zijn. De Neo4j-OGM is gekozen om de complexiteit van de database-interacties te verminderen en de prestatie van de webapplicatie te verbeteren.

// - *Docker:* Docker is gebruikt om de webapplicatie te containeriseren. Dit betekent dat de webapplicatie in een geïsoleerde omgeving wordt uitgevoerd. Omdat de webapplicatie in een geïsoleerde omgeving wordt uitgevoerd, is het gemakkelijker om de webapplicatie te implementeren en te distribueren. Dit zorgt ervoor dat de webapplicatie gemakkelijk kan worden geïnstalleerd en geïmplementeerd op verschillende systemen.

- *Schaalbaarheid:* De webapplicatie is ontworpen met schaalbaarheid in gedachten. Dit betekent dat de webapplicatie flexibel is in termen van schaalbaarheid en uitbreidbaarheid. Het is ontworpen om gemakkelijk nieuwe functionaliteiten en componenten te kunnen integreren, en tegelijkertijd in staat te zijn om grote hoeveelheden data efficiënt te verwerken.


- *UX-ontwerp:* Een gebruiksvriendelijk en intuïtief ontwerp is gecreëerd voor de webapplicatie. Er is gekeken naar de verschillende interacties die gebruikers kunnen uitvoeren en hoe deze interacties de gebruikerservaring kunnen beïnvloeden. Tijdens het ontwerpproces is er nauw samengewerkt met de opdrachtgever om de gewenste functionaliteit en gebruiksvriendelijkheid te waarborgen.

De hiervoor genoemde aspecten zijn belangrijke onderdelen van het ontwerp van de webapplicatie. Door deze aspecten te implementeren, is er een gebruiksvriendelijk en intuïtief ontwerp gecreëerd voor de webapplicatie.

== Realiseren
In het kader van het project is de competentie Realiseren toegepast door het ontwikkelen van de webapplicatie. Er is gewerkt aan het implementeren van de gewenste functionaliteit en het waarborgen van de gebruiksvriendelijkheid van de webapplicatie.

Tijdens het project is er actief gewerkt aan de implementatie van de gewenste functionaliteit in de webapplicatie. Er zijn programmeer- en ontwikkelvaardigheden toegepast om de benodigde functionaliteiten te implementeren. Dit omvat onder andere het realiseren, configureren en integreren van verschillende componenten.

Ook is er gedurende het project veel aandacht besteed aan het optimaliseren van de webapplicatie en het oplossen van eventuele bugs en technische problemen. Doormiddel van systematische testen en debugging is er gestreefd naar een stabiele en goed functionerende applicatie. 

== Projectmatig werken
Voor de competentie Projectmatig werken is er gestreefd naar een gestructureerde en georganiseerde aanpak gedurende het hele project. Dit omvatte het stellen van duidelijke doelen, het plannen van taken en het samenwerken met het team en de opdrachtgever. Enkele voorbeelden van de projectmatige aanpak zijn:

- *Doelstellingen:* Er zijn heldere doelstellingen geformuleerd aan het begin van het project, die als hulpmiddel dienden om de voortgang van het project te evalueren. Deze doelstellingen waren gericht op het realiseren van de gewenste functionaliteit en het voldoen aan de eisen van de opdrachtgever.

- *Agile aanpak:* Er is gekozen om Agile te werken, hierbij is de Scrum methode gebruikt. Dit betekent dat er in korte iteraties is gewerkt, waarbij er elke iteratie een werkend product is opgeleverd. De Scrummethode is gekozen om de voortgang van het project te waarborgen en de gewenste functionaliteit te realiseren. Door Agile te werken, kon er flexibel worden omgegaan met veranderende eisen en toenemende inzchten. Dit zorgde ervoor dat het project zich kon aanpassen aan de veranderende behoeften van de opdrachtgever en hierdoor konden aanpassingen snel en effectief worden doorgevoerd Tenslotte is een belangrijk aspect van de Scrummethode de transparantie en samenwerking. Er is nauw samengewerkt met het team en de opdrachtgever om eventuele uitdagingen te identificeren en gezamenlijk beslissingen te nemen. Dit heeft bijgedragen aan een positieve en effectieve samenwerking.

In conclusie is er een gestructureerde en georganiseerde aanpak gehanteerd gedurende het project. Dit heeft bijgedragen aan een succesvolle en effectieve ontwikkeling van de webapplicatie.

== Onderzoek
Voor de competentie Onderzoek is er een grondige en systematische aanpak toegepast om relevante informatie te verzamelen en te analyseren met betrekking tot de prestaties van de webapplicatie. Het onderzoek was gericht op het verkrijgen van inzicht in de prestaties van de webapplicatie, het identificeren van optimalisatiemogelijkheden en het implementeren van passende technologieën. Enkele voorbeelden van het onderzoek zijn:

- *Performance-analyse:* Er is uitgebreid onderzoek gedaan naar de prestaties van de applicatie, waarbij verschillende aspecten zijn geëvalueerd, zoals responstijden, laadtijden en schaalbaarheid. Dit omvatte het uitvoeren van tests en metingen om de prestaties van de applicaties in verschillende scenario's te analyseren. Op basis van deze analyse zijn er knelpunten en optimalisatiemogelijkheden geïdentificeerd.

- *Caching-technieken:* Er is onderzoek gedaan naar caching-technieken om de prestaties van de applicatie te verbeteren. Verschillende caching-methoden zijn onderzocht en geïmplementeerd om veelgebruikte gegevens en queryresultaten efficiënt op te slaan en op te halen.

- *Database-optimalisatie:* Er is onderzoek gedaan naar optimalisatiemogelijkheden met betrekking tot de grafendatabase. Verschillende technieken en configuraties zijn geëvalueerd en toegepast om de databaseprestaties te verbeteren. Dit omvatte het optimaliseren van queries en het implementeren van indexen. Het onderzoek resulteerde in een betere responsiviteit van de database.

De toegepaste onderzoeksmethoden hebben bijgedragen aan een beter begrip van de prestatie-aspecten van de applicatie en hebben geleid tot de succesvolle optimalisatie van de applicatie.

= Conclusie en aanbevelingen
== Conclusie
Tijdens de stageperiode is er gewerkt aan een datavisualisatietool, waarmee gebruikers recepten en ingrediënten kunnen zoeken, filteren en visualiseren. De implementatie van zoekfunctionaliteit, filterfunctionaliteit en visualisatiefunctionaliteit heeft bijgedragen aan een intuïtieve en gebruiksvriendelijke webapplicatie. De webapplicatie biedt gebruikers de mogelijkheid om de data te verkennen en de informatie te vinden die ze nodig hebben.

Door het volgen van een gestructureerde projectaanpak en het nauw samenwerken met de opdrachtgever, is er een succesvolle en effectieve ontwikkeling van de webapplicatie gewaarborgd. De datavisualisatietool biedt gebruikers de mogelijkheid om recepten en ingrediënten te vinden op basis van verschillende criteria, zoals naam en type. Daarnaast kan deze data gevisualiseerd worden, zodat gebruikers de relaties tussen de knooppunten kunnen identificeren.

== Aanbevelingen
Op basis van het uitgevoerde project en de verkregen resultaten, worden de volgende aanbevelingen gedaan voor verdere verbeteringen en de toekomstige ontwikkeling van de datavisualisatietool:

- *Verbetering van de gebruikerservaring:* Hoewel de applicatie responsief en snel is, kunnen er nog steeds verbeteringen worden gedaan om de gebruikerservaring verder te optimaliseren. Er kunnen verschillende technieken worden toegepast, zoals het implementeren van een lazy loading mechanisme. Dit betekent dat de visualisatie wordt geladen op basis van de zichtbare knooppunten. Dit kan de prestaties van de applicatie aanzienlijk verbeteren.

- *Gebruik van Neo4j-PHP-OGM package:* Vanwege het gebruik van een fork van de Neo4j-PHP-OGM package is het belangrijk om bewust te zijn van de risico's. Aangezien de fork wordt onderhouden door een kleiner aantal gebruikers, kunnen er beperkingen zijn op het gebied van actieve ontwikkeling, bugfixes en beveiligingsupdates. Het is daarom belangrijk om de ontwikkeling van de Neo4j-PHP-OGM package in de gaten te houden en te evalueren of het gebruik van de fork nog steeds de beste optie is.

#pagebreak()
= Reflectie
In dit hoofdstuk wil ik graag terugblikken op de uitvoering van de opdracht en mijn reflectie geven op het ontwikkelde product. Met de kennis die ik heb opgedaan, wil ik benadrukken hoe deze ervaring mij heeft gevormd.

Tijdens de uitvoering van de opdracht heb ik het product grondig geëvalueerd. Ik ben tevreden met de functionaliteit en het gebruikersvriendelijke ontwerp van de webapplicatie. De zoek- en filterfunctionaliteit biedt gebruikers de mogelijkheid om specifieke informatie op te zoeken en relevante resultaten te filteren. Ook de visualisatiefunctie is erg krachtig en intuïtief.

Echter zijn er ook verbeterpunten, voornamelijk bij het projectmatig werken. Ik heb gemerkt dat het soms moeilijk was om de voortgang van het project te evalueren en de juiste prioriteiten te stellen. Dit heeft geleid tot enkele uitdagingen, zoals het niet halen van de deadline voor de implementatie van de vervangingsfunctionaliteit.

De uitdaging ontstond door de mate van samenwerking tussen mijn projectgenoot en mij. Hoewel we nauw hebben samengewerkt om de gewenste functionaliteit te realiseren, resulteerde dit ook in een gebrek aan overzicht en evaluatie. Het continue bewustzijn van de projectvoortgang leidde tot gebrekkige planning en beperkte documentatie, aangezien we al op de hoogte waren van elkaars ontwikkelingen.

Om dit in de toekomst te verbeteren, wil ik meer aandacht besteden aan het creëren van een duidelijk projectplan en het vroeger stellen van heldere doelen en mijlpalen. Hierdoor zullen we beter in staat zijn om de voortgang te bewaken en eventuele knelpunten tijdig te identificeren. Daarnaast wil ik streven naar een gestructureerdere aanpak bij het documenteren van ons werk, zodat er een completer overzicht is van het projectverloop en de genomen beslissingen.

Al met al kijk ik terug op een waardevolle ervaring. De uitvoering van deze opdracht heeft me veel technische kennis en vaardigheden bijgebracht. Ik ben vastbesloten om deze kennis en vaardigheden te blijven ontwikkelen en te streven naar het leveren van hoogwaardige producten.

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
    [Analyseren: Documentanalyse en inzichten], [L. J. J. Leuwol], [documenten -> analyserapport.pdf],
    [Adviseren: Adviesrapport en aanbevelingen], [L. J. J. Leuwol], [documenten -> adviesrapport.pdf],
    [Ontwerpen: Ontwerpdocument en onderbouwing], [L. J. J. Leuwol], [documenten -> ontwerprapport.pdf],
    [Realiseren: Implementatierapport en uitvoering], [L. J. J. Leuwol], [documenten -> implementatierapport.pdf],
    [Projectmatig werken: Projectplan en -evaluatie], [L. J. J. Leuwol], [documenten -> projectrapport.pdf],
    [Onderzoeken: Onderzoeksrapport en resultaten], [L. J. J. Leuwol], [documenten -> onderzoeksrapport.pdf],
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
    gutter: 3pt,
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
    [Library], [Een verzameling van vooraf geschreven code die ontwikkelaars kunnen gebruiken om specifieke functionaliteit toe te voegen aan hun eigen softwareprojecten.],
    [Package], [Een georganiseerde verzameling van codebestanden en functionaliteiten die kunnen worden hergebruikt om de ontwikkeling van softwaretoepassingen te vergemakkelijken.],
    [Agile], [Een flexibele aanpak in softwareontwikkeling waarbij teams samenwerken, zich aanpassen aan veranderingen en zich richten op het leveren van continue waarde aan de klant.],
    [Scrum], [Scrum is een Agile projectmanagementframework waarbij het ontwikkelproces is opgedeeld in korte iteratieve perioden, genaamd sprints, waarin het team zich richt op het opleveren van werkende en waardevolle software.],
  )
)
