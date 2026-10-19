---
theme: default
layout: default
---

# Lab 3.4: Nutzungstelemetrie & Copilot Dashboard

**Leitfragen:**

1. Welche Nutzungsdaten stehen überhaupt zur Verfügung und wo findet man sie?
2. Was sagt eine hohe Nutzungszahl über den tatsächlichen Nutzen aus?
3. Wie granular darf ausgewertet werden, ohne in personenbezogene Leistungskontrolle zu geraten?
4. Welche Kennzahl würde bei Nordwind eine Maßnahme auslösen?

**Antworten:**

<details>
<summary>1. Welche Nutzungsdaten und wo?</summary>

Zugewiesene vs. aktive Lizenzen, aktive Nutzende je App, Wiederkehrrate, Nutzung nach Abteilung — verfügbar im Copilot Dashboard (Viva Insights) und den Copilot-Nutzungsberichten im Microsoft 365 Admin Center (siehe Lab 1.1). _Quelle: Microsoft Learn Copilot-Dashboard-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Was sagt eine hohe Nutzungszahl aus?</summary>

Nutzung ist nicht gleich Nutzen — eine hohe Zahl kann auch häufige, aber wenig wertschöpfende Nutzung bedeuten (die Wiederkehrrate ist das aussagekräftigere Signal). _Quelle: eigene Ableitung, konsistent mit gängiger Adoptionspraxis._

</details>

<details>
<summary>3. Wie granular ohne Leistungskontrolle?</summary>

Auswertungen sollten aggregiert (z. B. je Abteilung), nicht personenbezogen erfolgen — Datenschutz- und ggf. Betriebsratsaspekte sind vor jeder granulareren Auswertung zu prüfen. _Quelle: Microsoft Learn Viva-Insights-Datenschutzprinzipien, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>4. Welche Kennzahl löst bei Nordwind eine Maßnahme aus?</summary>

Konsistent mit gängiger Adoptionspraxis: eine Wiederkehrrate unter einem festgelegten Schwellenwert löst zusätzliches Onboarding aus. _Individuelle, auf den Dashboard-Auszug bezogene Antwort._

</details>

**Grenze:** Detaillierte Betriebsratsvereinbarungen zu Nutzungsauswertungen im Detail → Parkplatz bzw. internes Compliance-/HR-Team.

- Copilot-Nutzungsdaten liegen im Copilot Dashboard (Viva Insights) und den Admin-Center-Nutzungsberichten.
- Auswertungen müssen aggregiert bleiben, um nicht in personenbezogene Leistungskontrolle zu geraten.

## Adoptionskennzahlen im Überblick

| Kennzahl                        | Aussage                                                 |
| ------------------------------- | ------------------------------------------------------- |
| Zugewiesene vs. aktive Lizenzen | wie viele lizenzierte Personen tatsächlich nutzen       |
| Aktive Nutzende je App          | Verteilung der Nutzung über Word, Excel, Teams, Chat    |
| Wiederkehrrate                  | wie viele Nutzende nach der ersten Nutzung wiederkommen |
| Nutzung nach Abteilung          | Vergleich zwischen Teams/Abteilungen                    |

## Datenschutz bei Nutzungsauswertungen

Auswertungen müssen aggregiert bleiben (z. B. je Abteilung, nicht je Person), um nicht in eine unzulässige personenbezogene Leistungskontrolle zu geraten — dies ist auch bei Nordwind vor jeder Auswertung mit Betriebsrat/Datenschutzbeauftragter abzustimmen.

> **Merksatz:** Eine Nutzungszahl ist ein Hinweis, kein Nutzenbeweis — und sie gehört nie auf Einzelpersonenebene ausgewertet.

## Grenzen

- Konkrete Betriebsratsvereinbarungen sind unternehmensspezifisch und hier nicht Teil des Kursumfangs.
- Ein Dashboard-Auszug zeigt Verhalten, aber keine Gründe dafür.

## Fazit

- Alle Adoptionskennzahlen liegen konkret im Copilot Dashboard bzw. den Admin-Center-Nutzungsberichten.
- Eine hohe Nutzungszahl ist kein Nutzenbeweis, die Wiederkehrrate ist aussagekräftiger.
- Auswertungen bleiben aggregiert, nie personenbezogen.

Die Übung interpretiert einen vorbereiteten Dashboard-Auszug für Nordwind und leitet drei Adoptions-Erkenntnisse mit Maßnahme ab.
