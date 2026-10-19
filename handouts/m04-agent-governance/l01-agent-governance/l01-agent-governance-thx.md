---
theme: default
layout: default
---

# Lab 4.1: Agent-Governance, Sicherheit & Kosten

Ein funktionierender Agent ist noch kein freigegebener Agent. Dieses Lab legt vor dem Bau fest, welche Freigabe, Berechtigungen, Lebenszyklus-Regeln, Zugriffsflächen und Credit-Verantwortung für den geplanten Nordwind Support-Agenten gelten. Der Agent entsteht erst an Tag 2 (Modul 6–9); Lab 9.5 prüft ihn gegen dieses Blatt.

**Leitfragen:**

<details>
<summary>Erbt der Agent Berechtigungen der Ersteller:in oder der Nutzenden?</summary>

Governance darf hier nichts pauschal annehmen. Vor der Freigabe muss geprüft werden, welche Zielgruppe welche Wissensquellen und Aktionen im tatsächlichen Nutzungskontext erreicht und wo Oversharing entstehen kann.

</details>

<details>
<summary>Wer schaltet einen veralteten Agenten ab?</summary>

Der Agent braucht einen benannten Owner mit Review-Turnus und Abschaltkriterium. Ohne Lebenszyklusverantwortung bleibt ein veralteter Agent zu lange aktiv.

</details>

<details>
<summary>Warum braucht ein Skill dieselbe Freigabe wie ein Konnektor?</summary>

Weil er Verhalten verändert. Skill, MCP-Server und Konnektor erweitern jeweils die reale Zugriffs- oder Entscheidungsfläche des Agenten.

</details>

- Governance prüft nicht nur Antworten, sondern Rollen, Datenzugriffe, Freigaben, Lebenszyklus und Kosten.
- Für den GitHub-Copilot-Harness gilt: Kundendaten werden nicht an den GitHub-Copilot-Dienst gesendet oder dort verarbeitet; trotzdem bleiben Datenzugriff und Freigabe eine Copilot-Studio-Governance-Aufgabe.

## Governance-Felder für den Agenten

| Feld | Wofür es gebraucht wird |
| --- | --- |
| Zielgruppe | grenzt erlaubte Nutzung ein |
| Wissensquellen | zeigt mögliche Oversharing-Risiken |
| Skills | erweitert Verhalten, muss geprüft werden |
| MCP-Server | bringt externe Betreiber und Tool-Flächen hinein |
| Workflow/Tools | erzeugt Aktionen mit Folgewirkung |
| Freigeber | entscheidet vor Veröffentlichung |
| Review-Turnus | hält Wissen und Regeln aktuell |
| Abschaltkriterium | beendet veraltete oder riskante Agenten |
| Credit-Limit | begrenzt Kosten und schafft Verantwortlichkeit |

## Wer darf bauen, veröffentlichen, teilen?

| Tätigkeit | Governance-Frage |
| --- | --- |
| bauen | Wer darf experimentieren, ohne produktive Folgen auszulösen? |
| veröffentlichen | Wer prüft Datenzugriffe, Skills, Tools und Zielgruppe vor Go-live? |
| teilen | Für welche Gruppen ist der Agent überhaupt freigegeben? |

## Plattform-Bausteine im Betrieb

| Baustein | Zweck |
| --- | --- |
| Umgebungen | trennen Prototyp, Test und produktive Nutzung |
| Solutions | bündeln Agent, Flows und Abhängigkeiten versionierbar |
| DLP-Regeln für Konnektoren | begrenzen unerwünschte Datenwege |

## Zusätzliche Flächen explizit reviewen

| Erweiterung | Was zusätzlich geprüft werden muss |
| --- | --- |
| Skill | Trigger, Schritte, Sonderfälle, implizite Entscheidungen |
| MCP-Server | Betreiber, Rechte, Tool- und Datenumfang |
| Konnektor | Zielsystem, Datenumfang, lesend oder schreibend |
| Workflow | irreversible oder kostenrelevante Aktionen, Freigabepunkt |

> **Merksatz:** Jede neue Fähigkeit ist auch eine neue Governance-Fläche.

## Credit-Governance

- Bauen, Preview, Evaluate und agentische Workflows verbrauchen Copilot Credits.
- Limits gehören pro Umgebung und Pilot klar benannt.
- Evaluation vor Produktion reduziert teure Fehlpfade.
- Verbrauch braucht eine benannte Verantwortung, nicht nur technische Sichtbarkeit.

## Nordwind-Szenario

Der Nordwind Support-Agent („IT-Helfer“) wird an Tag 2 gebaut: erst als Chat-Agent, dann als Studio-Agent mit Skill, Konnektor und optional MCP. Das Governance-Blatt entsteht deshalb vorab: es gibt die Leitplanken vor, statt sie nachträglich zu erklären.

## Grenzen

- Governance ist kein Einmal-Check; neue Skills, MCP-Server oder Konnektoren lösen neue Review-Arbeit aus.
- Eine gute Antwort im Preview ersetzt keine Freigabeentscheidung.
- Konkrete Menüpfade hängen von Tenant und Rollenmodell ab und werden im Kurs nicht als universeller Klickpfad versprochen.

## Fazit

- Governance verbindet Berechtigung, Lebenszyklus, Freigabe und Kostenkontrolle.
- Skills, MCP-Server und Konnektoren sind keine „kleinen Extras“, sondern reviewpflichtige Erweiterungen.
- Credit-Limits, getrennte Umgebungen und Evaluation vor Produktion senken Risiko und Kosten.

Die Übung legt für den geplanten Nordwind Support-Agenten (Soll-Entwurf) ein Governance-Blatt mit Rollen, Review-Feldern und Credit-Limit fest.
