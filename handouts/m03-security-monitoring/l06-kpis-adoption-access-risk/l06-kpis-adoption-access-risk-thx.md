---
theme: default
layout: default
---

# Lab 3.6: KPIs für Adoption, Zugriff und Risiko definieren

**Leitfragen:**

1. Welche KPI-Kategorien braucht ein vollständiges Monitoring, nicht nur Nutzungszahlen?
2. Wie unterscheidet sich eine KPI für die IT-Leitung von einer KPI für die Geschäftsführung?
3. Was macht eine KPI "gut" — messbar reicht nicht allein?

**Antworten:**

<details>
<summary>1. Welche KPI-Kategorien?</summary>

Adoption (aus Lab 3.4), Zugriffsrisiko (aus Lab 3.3/3.5) und Compliance-Verstöße (aus Lab 2.3) — ein vollständiges Monitoring deckt alle drei Bereiche ab, nicht nur Nutzung. _Quelle: Microsoft Learn Copilot-Governance-KPI-Leitfaden, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. IT-Leitung vs. Geschäftsführung?</summary>

Die IT-Leitung braucht operative, detaillierte KPIs (z. B. Anzahl nicht konformer Geräte), die Geschäftsführung braucht verdichtete, geschäftsrelevante KPIs (z. B. Adoptionsquote im Zeitverlauf) — Detailgrad und Zielgruppe hängen zusammen. _Quelle: eigene Ableitung, konsistent mit Rollenmatrix Lab 2.4._

</details>

<details>
<summary>3. Was macht eine KPI "gut"?</summary>

Sie muss zusätzlich handlungsleitend sein — es muss klar sein, welche Maßnahme bei welchem Wert ausgelöst wird (Schwellenwertlogik wie in Lab 3.4), sonst bleibt sie nur eine Zahl ohne Konsequenz. _Quelle: eigene Ableitung._

</details>

**Grenze:** Aufbau eines automatisierten KPI-Reportings mit Alarmierung → Parkplatz bzw. internes IT-Team.

- Ein vollständiges Monitoring deckt Adoption, Zugriffsrisiko und Compliance-Verstöße ab, nicht nur Nutzungszahlen.
- Eine gute KPI ist handlungsleitend: Sie definiert vorab, welche Maßnahme bei welchem Schwellenwert ausgelöst wird.

## KPI-Kategorien im Überblick

| Kategorie      | Beispiel-KPI                             | Quelle             |
| -------------- | ---------------------------------------- | ------------------ |
| Adoption       | Wiederkehrrate, aktive Lizenzquote       | Lab 3.4           |
| Zugriffsrisiko | Anzahl Konten mit erhöhtem Anmelderisiko | Lab 3.3, Lab 3.5 |
| Compliance     | Anzahl DLP-Regelverstöße pro Monat       | Lab 2.3           |

## KPI-Zielgruppen

```
IT-Leitung: operative Detail-KPIs (z. B. Anzahl nicht konformer Geräte diese Woche)
Geschäftsführung: verdichtete, geschäftsrelevante KPIs (z. B. Adoptionsquote im Quartalsverlauf)
```

> **Merksatz:** Eine KPI ohne definierte Schwellenwert-Maßnahme ist nur eine Zahl, kein Steuerungsinstrument.

## Grenzen

- Automatisierte Alarmierung bei KPI-Schwellenwertüberschreitung liegt außerhalb des Kursumfangs.
- KPI-Zielwerte sind unternehmensspezifisch und hier nur beispielhaft.

## Fazit

- Ein vollständiges KPI-Set deckt Adoption, Zugriffsrisiko und Compliance ab.
- Detailgrad und Zielgruppe der KPI hängen zusammen: operativ für IT-Leitung, verdichtet für Geschäftsführung.
- Eine gute KPI definiert vorab, welche Maßnahme bei welchem Wert folgt.

Die Übung definiert ein KPI-Set für Nordwind über alle drei Kategorien.
