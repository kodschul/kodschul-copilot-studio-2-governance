---
theme: default
layout: default
---

# Lab 3.7: Copilot-gestütztes Reporting

**Leitfragen:**

1. Was kann Copilot beim Erstellen eines KPI-Berichts konkret übernehmen, was nicht?
2. Warum muss jede von Copilot erstellte Zahl gegen die Quelle geprüft werden?
3. Wofür eignet sich Copilot-gestütztes Reporting besonders gut im Vergleich zu manuellem Reporting?

**Antworten:**

<details>
<summary>1. Was übernimmt Copilot, was nicht?</summary>

Copilot kann aus einer strukturierten Datengrundlage (z. B. der KPI-Tabelle aus Lab 3.6) einen zusammenfassenden Text oder eine Präsentation entwerfen, aber es erhebt oder verifiziert die zugrunde liegenden Zahlen nicht selbst. _Quelle: Microsoft Learn Copilot-für-Reporting-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Warum jede Zahl gegen die Quelle prüfen?</summary>

Copilot kann Zahlen falsch übernehmen, runden oder in einem anderen Kontext interpretieren als beabsichtigt — Halluzinationsrisiko, wie es aus dem Umgang mit KI-Ausgaben bekannt ist,, hier auf Reporting-Zahlen übertragen. _Quelle: eigene Ableitung, konsistent mit dem allgemeinen Halluzinationsrisiko._

</details>

<details>
<summary>3. Wofür eignet sich Copilot-gestütztes Reporting besonders?</summary>

Für die schnelle Umwandlung strukturierter Rohdaten in eine lesbare, zielgruppengerechte Zusammenfassung (z. B. Tabelle → Fließtext für Geschäftsführung) — nicht für die Datenerhebung selbst. _Quelle: eigene Ableitung._

</details>

**Grenze:** Automatisierte, ungeprüfte Veröffentlichung von Copilot-generierten Berichten → Parkplatz bzw. internes Kommunikationsteam.

- Copilot wandelt strukturierte KPI-Daten in einen lesbaren Bericht um, erhebt oder verifiziert die Zahlen aber nicht selbst.
- Jede von Copilot übernommene Zahl muss gegen die Ursprungsquelle geprüft werden, um Übernahmefehler auszuschließen.

## Ablauf Copilot-gestütztes Reporting

```
KPI-Tabelle (Lab 3.6) als Grundlage
  → Copilot-Prompt: "Fasse diese Tabelle für die Geschäftsführung zusammen"
  → Entwurf prüfen: stimmen alle Zahlen mit der Ursprungstabelle überein?
  → nur geprüfte Fassung weitergeben
```

## Was Copilot übernimmt vs. was Menschen prüfen müssen

| Copilot übernimmt                            | Mensch prüft                        |
| -------------------------------------------- | ----------------------------------- |
| Formulierung, Struktur, Zielgruppenanpassung | Richtigkeit jeder übernommenen Zahl |
| erste Textentwürfe                           | Kontext- und Interpretationsfehler  |

> **Merksatz:** Copilot beschleunigt die Formulierung, nicht die Faktenprüfung.

## Grenzen

- Automatisierte, ungeprüfte Veröffentlichung von Berichten ist bewusst nicht Teil des Kursumfangs.
- Copilot-generierte Zusammenfassungen ersetzen keine eigenständige Datenerhebung.

## Fazit

- Copilot ist stark bei der Umwandlung strukturierter Daten in lesbare, zielgruppengerechte Berichte.
- Die zugrunde liegenden Zahlen bleiben aber verifikationspflichtig, konsistent mit dem allgemeinen Halluzinationsrisiko bei KI-Ausgaben.
- Reporting-Geschwindigkeit steigt, Prüfaufwand bleibt bestehen.

Die Übung lässt Copilot einen KPI-Bericht aus Lab 3.6 entwerfen und prüft ihn gegen die Quelle.
