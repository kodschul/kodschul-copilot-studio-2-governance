---
theme: default
layout: default
---

# Lab 1.2: Oversharing & Schatten-KI

**Leitfragen:**

1. Warum macht Copilot bestehende Berechtigungsfehler erst sichtbar, statt sie zu verursachen?
2. Woran erkennt man Oversharing in einem Berechtigungsexport?
3. Was ist Schatten-KI und warum ist sie schwerer zu kontrollieren als ein falsch berechtigtes SharePoint?
4. Welche zwei Maßnahmen sollte Nordwind zuerst umsetzen?

**Antworten:**

<details>
<summary>1. Warum macht Copilot Berechtigungsfehler sichtbar, statt sie zu verursachen?</summary>

Copilot durchsucht nur Inhalte, für die die anfragende Person ohnehin berechtigt ist. Bestand eine zu weite Berechtigung bereits vorher, macht Copilot sie durch schnelles Auffinden nur bemerkbar. _Quelle: Microsoft Learn Copilot-Grounding-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Woran erkennt man Oversharing in einem Berechtigungsexport?</summary>

An Freigaben mit sehr breitem Empfängerkreis (z. B. "gesamte Organisation" oder "jeder mit dem Link") auf Dokumenten mit sensiblem Inhalt, sowie an veralteten Freigaben, die nie wieder geprüft wurden. _Quelle: Microsoft Learn SharePoint-Freigabe-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was ist Schatten-KI und warum schwerer zu kontrollieren?</summary>

Schatten-KI bezeichnet die Nutzung nicht freigegebener oder nicht durch die IT verwalteter KI-Werkzeuge außerhalb der offiziellen Unternehmenslösung. Anders als ein falsch berechtigtes SharePoint ist sie für die IT oft gar nicht sichtbar, da keine zentrale Protokollierung existiert. _Quelle: Microsoft Learn/Security-Dokumentation zu Shadow AI, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>4. Zwei erste Maßnahmen bei Nordwind</summary>

(1) Berechtigungsexport auf breite Freigaben ("gesamte Organisation") mit sensiblem Inhalt prüfen und einschränken. (2) Bestandsaufnahme, welche nicht offiziell freigegebenen KI-Tools im Unternehmen bereits genutzt werden, und eine offizielle Copilot-Nutzung als Alternative kommunizieren. _Individuelle Antwort je nach Diagnosebefund aus der Übung._

</details>

**Grenze:** Automatisierte Oversharing-Scans und Schatten-KI-Erkennungswerkzeuge im Detail → Parkplatz bzw. internes Security-Team.

- Oversharing entsteht durch bereits bestehende, zu breite Berechtigungen — Copilot macht sie nur sichtbar, verursacht sie nicht.
- Schatten-KI ist schwerer zu kontrollieren als Oversharing, da sie oft außerhalb jeder zentralen Protokollierung läuft.

## Oversharing erkennen

| Signal im Berechtigungsexport      | Risiko                                                  |
| ---------------------------------- | ------------------------------------------------------- |
| Freigabe an "gesamte Organisation" | jede Person mit Copilot-Zugriff kann den Inhalt finden  |
| "Jeder mit dem Link"-Freigaben     | auch außerhalb kontrollierbarer Personenkreise          |
| Nie geprüfte Alt-Freigaben         | vergessene, aber weiterhin aktive breite Berechtigungen |

## Schatten-KI vs. Oversharing

| Aspekt              | Oversharing                                  | Schatten-KI                                                     |
| ------------------- | -------------------------------------------- | --------------------------------------------------------------- |
| Sichtbarkeit für IT | im Berechtigungsexport erkennbar             | oft komplett unsichtbar ohne eigene Protokollierung             |
| Ursache             | bereits bestehende, zu breite Berechtigungen | Nutzung nicht freigegebener KI-Tools außerhalb der IT-Kontrolle |
| Erste Gegenmaßnahme | Berechtigungsexport prüfen und einschränken  | Bestandsaufnahme + offizielle Alternative anbieten              |

> **Merksatz:** Copilot deckt auf, was vorher schon falsch berechtigt war — das Problem existierte bereits, nur unbemerkt.

## Grenzen

- Ein einmaliger Berechtigungsexport-Check ersetzt kein laufendes Monitoring (vertieft in Modul 3).
- Schatten-KI-Nutzung lässt sich ohne technische Kontrollen (z. B. Netzwerk-/App-Sperren) oft nur durch Befragung erkennen.

## Fazit

- Copilot verursacht kein neues Berechtigungsproblem, es macht ein bestehendes sichtbar.
- Breite Freigaben und nie geprüfte Alt-Freigaben sind die typischen Oversharing-Signale.
- Schatten-KI ist riskanter, weil sie meist außerhalb jeder zentralen Kontrolle läuft.

Die Übung prüft eine Nordwind-Tenant-Konfiguration auf Oversharing und Schatten-KI.
