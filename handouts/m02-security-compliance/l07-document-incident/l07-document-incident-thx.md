---
theme: default
layout: default
---

# Lab 2.7: Vorfall dokumentieren

**Leitfragen:**

1. Was gehört zwingend in eine Vorfalldokumentation, damit sie später belastbar ist?
2. Wie kennzeichnet man KI-generierte Anteile einer Dokumentation?
3. Wer ist Adressat dieser Dokumentation?

**Antworten:**

<details>
<summary>1. Was gehört zwingend hinein?</summary>

Zeitpunkt, beteiligte Konten/Systeme, verwendete Signalquellen, die getroffene Entscheidung und deren Begründung sowie die verantwortliche Person. _Quelle: Microsoft Learn Incident-Response-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Wie kennzeichnet man KI-generierte Anteile?</summary>

Durch eine klare Kennzeichnung, welcher Abschnitt aus einer Security-Copilot-Zusammenfassung stammt und welcher die menschliche Bewertung/Entscheidung darstellt — analog zum Human-in-the-Loop-Prinzip (der Mensch prüft und entscheidet). _Quelle: eigene Ableitung aus der HITL-Methodik._

</details>

<details>
<summary>3. Wer ist Adressat?</summary>

Je nach Vorfallschwere: internes Sicherheitsteam, Compliance, ggf. Geschäftsführung — bei meldepflichtigen Vorfällen auch externe Stellen (unternehmensspezifisch, nicht Teil dieses Kurses). _Individuelle, tenant-spezifische Antwort._

</details>

**Grenze:** Meldepflichten gegenüber externen Behörden im Detail → Parkplatz bzw. internes Compliance-/Rechtsteam.

- Diese Lab-Einheit vermittelt keine neue Theorie, sondern überträgt die Demo aus Lab 2.6 in eine eigene, dokumentierte Fallbeschreibung.

## Pflichtbestandteile einer belastbaren Dokumentation

| Bestandteil               | Zweck                                          |
| ------------------------- | ---------------------------------------------- |
| Zeitpunkt                 | Nachvollziehbarkeit des Ablaufs                |
| Beteiligte Konten/Systeme | Eingrenzung des betroffenen Bereichs           |
| Signalquellen             | Nachweis, worauf die Einschätzung beruhte      |
| Entscheidung + Begründung | Nachvollziehbarkeit der getroffenen Reaktion   |
| Verantwortliche Person    | Klare Zuordnung der Entscheidungsverantwortung |

## KI-Anteil kenntlich machen

Ein klar abgegrenzter Abschnitt "Security-Copilot-Zusammenfassung (KI-generiert, geprüft am [Datum])" trennt automatisiert erzeugte Inhalte von der menschlichen Bewertung darunter.

> **Merksatz:** Eine Dokumentation ohne erkennbare Trennung von KI-Anteil und menschlicher Bewertung ist später nicht mehr überprüfbar.

## Grenzen

- Externe Meldepflichten (z. B. an Aufsichtsbehörden) sind unternehmens- und rechtsspezifisch und werden hier nicht behandelt.

## Fazit

- Kein neues Konzept, sondern die konsequente Dokumentation der Demo aus Lab 2.6.
- Fünf Pflichtbestandteile machen eine Vorfalldokumentation später belastbar.
- KI-generierte Anteile müssen klar von der menschlichen Bewertung getrennt gekennzeichnet sein.

Die Übung erstellt die eigene Dokumentation des in Lab 2.6 analysierten Vorfalls.
