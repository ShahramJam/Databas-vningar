--Uppgifter/Frågor:
--1. Lägg in ytterligare två bilar för Bo Karlsson i tabellen.
--2. Varje gång vi lägger in en ny bil för Bo måste vi skriva hans uppgifter igen.
--a. Ange minst två skäl till varför detta inte är bra. 
--3. För att lösa problemet behöver vi primärnyckel och sekundärnyckel. Beskriv dessa och 
--ange vad skillnaden är. 
--4. Är personnummer ett bra val för en primärnyckel? Motivera. 
--5. Ska sekundärnyckeln vara unik? Motivera. 
--6. Vad är skillnaden på data och information? 
--7. Ge exempel på de minst två av relationerna en till en, en till många och många till många.
--8. Gör om tabellen så att vi endast behöver mata in bilägarens uppgifter en gång.
 
1. Lägg in ytterligare två bilar för Bo Karlsson i tabellen

Här är tabellen från sida 15 kompletterad med två nya rader för Bo Karlsson (med påhittade bilmodeller):

Fnamn	Enamn	Adress	Postnr	Stad	Telefon	Email	Modell	Märke
Lars	Persson	Skolg. 2	23456	Hässleholm	07212344	lars@live.se	Ferrari	F40
Anna	Nilsson	Borgv. 4	14577	Stockholm	07012345	anna@live.se	Bugatti	Veyron
Anna	Nilsson	Borgv. 4	14577	Stockholm	07012345	anna@live.se	Mercedes	C112
Lars	Persson	Skolg. 2	23456	Hässleholm	07212344	lars@live.se	Toyota	Corolla
Bo	Karlsson	Furuv. 8	12388	Göteborg	01055223	bo@live.se	Nissan	Pulsar
Lars	Persson	Skolg. 2	23456	Hässleholm	07212344	lars@live.se	Ford	Mustang
Bo	Karlsson	Furuv. 8	12388	Göteborg	01055223	bo@live.se	Volvo	V70
Bo	Karlsson	Furuv. 8	12388	Göteborg	01055223	bo@live.se	Saab	9-5
 

2. Varför det inte är bra att upprepa uppgifterna

Att behöva fylla i ägarens uppgifter på nytt för varje bil medför följande problem:

• Ökad risk för fel: Varje manuell inmatning ökar risken att man stavar fel eller råkar skriva olika uppgifter på olika rader.
• Onödigt lagringsutrymme: Upprepad (redundant) data tar upp mer plats på hårddisken än nödvändigt.
 

3. Primärnyckel och sekundärnyckel

• Primärnyckel (Primary Key): Ett unikt ID som finns på "en-sidan" av en relation (t.ex. i tabellen för bilägare). Den används för att säkert identifiera varje enskild post (person) och får inte förekomma mer än en gång i den tabellen.
• Sekundärnyckel (Secondary Key / Främmande nyckel): Samma ID som läggs in på "många-sidan" av relationen (t.ex. i tabellen för bilar).
•   Primärnyckeln identifierar en unik post i sin egen tabell, medan sekundärnyckeln fungerar som en referens (koppling) för att visa vilken post i den första tabellen som datan tillhör.

4. Är personnummer ett bra val för en primärnyckel?

Ja, tekniskt sett är det ett bra val, men det finns praktiska undantag.
• Fördel (Motivering enligt kursmaterialet): Ett personnummer är unikt och kan bara tillhöra en enda person, vilket uppfyller grundkravet för en primärnyckel.
• Nackdel (Praktisk motivering): I verkliga databaser undviker man det ofta eftersom personer utan svenskt personnummer inte kan registreras, ett personnummer kan ändras (t.ex. vid korrigering eller könsbyte) och det är en känslig personuppgift (GDPR). Därför föredras oftast ett auto-genererat ID-nummer (1, 2, 3...).

5. Ska sekundärnyckeln vara unik?

Nej, den får inte vara unik.
• Om sekundärnyckeln vore unik skulle varje bilägare endast kunna kopplas till en enda bil. Då hade relationen blivit en-till-en istället för en-till-många, vilket gör att en person inte kan äga flera bilar.

6. Vad är skillnaden på data och information?

• Data: Råa värden som ensamma saknar sammanhang, till exempel enbart siffran 10 eller ett lösryckt ord.
• Information: Data som har strukturerats och fått en mening eller ett sammanhang, till exempel 10 kr eller Skolgatan 10.

7. Exempel på relationer mellan tabeller

• En-till-en (1:1): En person har ett personnummer, och ett personnummer tillhör bara en person.
• En-till-många (1:M): En bilägare kan äga många bilar, men varje bil är registrerad på en enda ägare. (Alternativt: En författare skriver många böcker).
• Många-till-många (N:M): En skådespelare kan vara med i många filmer, och en film har många skådespelare. (Detta löses i databasen med en kopplingstabell).

8. Normaliserad tabell (Uppdelad i två tabeller)

Genom att dela upp tabellen i två – en för Bilägare och en för Bilar – behöver vi bara skriva in ägarens uppgifter en gång.
Tabell 1: Bilägare (Här är ÄgarID primärnyckel)

ÄgarID	Fnamn	Enamn	Adress	Postnr	Stad	Telefon	Email
1	Lars	Persson	Skolg. 2	23456	Hässleholm	07212344	lars@live.se
2	Anna	Nilsson	Borgv. 4	14577	Stockholm	07012345	anna@live.se
3	Bo	Karlsson	Furuv. 8	12388	Göteborg	01055223	bo@live.se

Tabell 2: Bilar (Här är ÄgarID sekundärnyckel som kopplar bilen till rätt ägare)

ÄgarID	Modell	Märke
1	Ferrari	F40
2	Bugatti	Veyron
2	Mercedes	C112
1	Toyota	Corolla
3	Nissan	Pulsar
1	Ford	Mustang
3	Volvo	V70
3	Saab	9-5
 
