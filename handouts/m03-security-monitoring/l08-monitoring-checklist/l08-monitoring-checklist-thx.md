---
theme: default
layout: default
---

# Lab 3.8: Monitoring-Checkliste

**Leitfragen:**

1. Was gehört in eine wiederkehrende Monitoring-Routine, damit sie nicht nur einmalig genutzt wird?
2. Wie oft sollte eine solche Checkliste realistischerweise durchlaufen werden?
3. Wer ist bei Nordwind für welchen Teil der Checkliste verantwortlich?

**Antworten:**

<details>
<summary>1. Was gehört in eine wiederkehrende Routine?</summary>

Konkrete, wiederholbare Prüfschritte mit klaren Verantwortlichkeiten und Zeitpunkten — eine einmalige Analyse (wie in Lab 3.4-3.7) wird erst durch feste Wiederholung zu echtem Monitoring. _Quelle: eigene Ableitung, konsistent mit KPI-Logik aus Lab 3.6._

</details>

<details>
<summary>2. Wie oft realistischerweise?</summary>

Abhängig vom KPI-Typ: Zugriffsrisiko-Signale eher wöchentlich, Adoptions- und Compliance-KPIs eher monatlich — ein zu hoher Prüftakt bindet unnötig Ressourcen, ein zu niedriger verzögert Reaktionen. _Quelle: eigene Ableitung._

</details>

<details>
<summary>3. Wer ist verantwortlich?</summary>

Je nach Rollenmatrix aus Lab 2.4: IT-Leitung für operative Signale (Konformität, Anmelderisiko), Sicherheitsverantwortliche Person für Compliance-Verstöße, Geschäftsführung für verdichtete Adoptionskennzahlen. _Quelle: Rollenmatrix Lab 2.4._

</details>

**Grenze:** Automatisiertes, werkzeuggestütztes Monitoring-Tooling → Parkplatz bzw. internes IT-Team.

- Eine wiederkehrende Monitoring-Routine braucht feste Prüftakte und klare Verantwortlichkeiten, sonst bleibt es bei einer Einmalanalyse.
- Der Prüftakt richtet sich nach dem KPI-Typ: Zugriffsrisiko eher wöchentlich, Adoption/Compliance eher monatlich.

## Monitoring-Checkliste (Grundgerüst)

| Prüfschritt                              | Häufigkeit  | Verantwortlich                    | Bezug          |
| ---------------------------------------- | ----------- | --------------------------------- | -------------- |
| Konten mit erhöhtem Anmelderisiko prüfen | wöchentlich | IT-Leitung                        | Lab 3.5, 3.6 |
| Gerätekonformität prüfen                 | wöchentlich | IT-Leitung                        | Lab 3.1       |
| DLP-Regelverstöße auswerten              | monatlich   | Sicherheitsverantwortliche Person | Lab 2.3       |
| Adoptions-KPIs auswerten                 | monatlich   | Geschäftsführung + IT-Leitung     | Lab 3.4, 3.6 |
| KPI-Bericht erstellen und prüfen         | monatlich   | IT-Leitung                        | Lab 3.7       |

> **Merksatz:** Eine Checkliste ohne festen Turnus und benannte Verantwortliche bleibt eine gute Absicht, kein Monitoring.

## Grenzen

- Automatisiertes Tooling zur Durchführung dieser Checkliste liegt außerhalb des Kursumfangs.
- Der vorgeschlagene Prüftakt ist ein Ausgangspunkt, keine feste Vorgabe für jedes Unternehmen.

## Fazit

- Eine Monitoring-Routine benötigt feste Prüftakte, benannte Verantwortliche und einen klaren Bezug zu den vorherigen Labs.
- Der Prüftakt unterscheidet sich je nach KPI-Typ.
- Verantwortlichkeiten folgen der Rollenmatrix aus Lab 2.4.

Die Übung erstellt die finale Nordwind-Monitoring-Checkliste als Modulabschluss.
