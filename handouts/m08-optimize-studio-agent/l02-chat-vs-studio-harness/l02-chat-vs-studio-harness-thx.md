# Lab 8.2 – Copilot Chat oder Copilot Studio?

Die Harness-Wahl legt Fähigkeiten, Steuerbarkeit, Kanäle und Kostenlogik eines Agenten fest. Dieses Lab vergleicht Copilot-Chat-Agent, GitHub-Copilot-Harness und Standard-Harness für Nordwind-Szenarien.

**Leitfragen:**

<details><summary>Wann reicht ein Copilot-Chat-Agent?</summary>
Wenn interne Wissensfragen mit klaren Quellen im Vordergrund stehen und keine mehrstufige Tool-, Datei- oder Workflow-Orchestrierung nötig ist.
</details>

<details><summary>Wann lohnt der GitHub-Copilot-Harness trotz Credits?</summary>
Wenn ein offenes Ziel, mehrere Schritte, Skills, Memory, Dateien oder dynamische Fehlerbehandlung im Szenario gebraucht werden.
</details>

<details><summary>Warum ist der stärkere Harness nicht automatisch besser?</summary>
Ein mächtiger Harness kann einfache Aufgaben überarbeiten: mehr Credits, mehr Latenz und mehr Konfiguration ohne fachlichen Mehrwert.
</details>

## Was jeder Weg leisten kann

| Fähigkeit | Copilot-Chat-Agent | GitHub-Copilot-Harness | Standard-Harness |
| --- | --- | --- | --- |
| Wissen | Unternehmenswissen an Copilot Chat anbinden | Knowledge plus großer Kontext und Memory | Knowledge in strukturierten Agenten möglich, Fokus liegt auf Pfaden |
| Tools | nicht als Schwerpunkt belegt | Konnektoren, MCP und Connected Agents | Konnektoren/Flows über strukturierte Abläufe |
| Skills | kein Skill-Fokus belegt | Skills explizit unterstützt | Skills/Memory laut Faktengrundlage „not a focus“ |
| Memory | nicht als Schwerpunkt belegt | Memory unterstützt, teils Preview | nicht als Fokus belegt |
| Workflows | kein Workflow-Fokus | Workflows als agentische Automatisierung und Tools | deterministische Abläufe/Topics/Flows |
| Dateien | keine native Dateierstellung belegt | Word-, Excel-, PowerPoint- und PDF-Dateien nativ erstellen/bearbeiten | keine native Dateierstellung belegt |
| Kanäle/Veröffentlichung | nur intern | intern oder extern | etablierte Kanäle, konkrete Verfügbarkeit vor Kurs prüfen |
| Abrechnung | verbrauchsbasiert oder im Microsoft-365-Copilot-Lizenzumfang | Copilot Credits, auch für Bauen, Testen, Evaluieren | bisheriges Lizenzmodell laut Faktengrundlage |

## Architekturregeln

| Regel | Bedeutung |
| --- | --- |
| Nicht-Wechselbarkeit | Der Harness wird beim Anlegen gewählt; Standard- und GitHub-Copilot-Harness sind nicht nachträglich übertragbar. |
| Passung vor Stärke | Der passendste Harness gewinnt, nicht der funktionsreichste. |
| GitHub-Copilot-Harness ≠ GitHub Copilot | Es handelt sich um ein Copilot-Studio-Framework, nicht um den GitHub-Copilot-Dienst. |
| Datenversprechen | Bestehende Copilot-Studio-Zusagen zu Datenschutz, Sicherheit, Compliance und Datenresidenz gelten laut Faktengrundlage weiter. |

## Entscheidungsmodell für Nordwind

| Szenario | Typischer Bedarf | Naheliegender Weg |
| --- | --- | --- |
| FAQ zu IT-Richtlinie | Wissen, interne Veröffentlichung, wenig Steuerung | Copilot-Chat-Agent |
| Onboarding-Prozess | mehrere Schritte, Checkliste, spätere Skills/Tools | GitHub-Copilot-Harness |
| Rechnungsprüfung mit Dateien | Dateien lesen, vergleichen, Ausnahmen routen | GitHub-Copilot-Harness |

> **Merksatz:** Ein FAQ-Agent braucht vor allem Grounding; ein Prozess-Agent braucht Orchestrierung.

## Prüfpunkte vor einer Empfehlung

- Welche Informationen ändern sich häufig und wo werden sie gepflegt?
- Muss der Agent nur antworten oder auch Schritte planen, Dateien bearbeiten oder Tools aufrufen?
- Ist vorhersagbares Verhalten wichtiger als dynamisches Reasoning?
- Rechtfertigen Mehrwert und Risiko den Credit-Verbrauch?
- Ist eine spätere Migration realistisch, wenn kein Harness-Wechsel möglich ist?

## Beispiel: Anforderungen mit typischer Entscheidung

Die Entscheidungen zeigen typische Kurzbegründungen; reale Tenant-Funktionen, Kanäle und Credits werden vor Kursbeginn geprüft.

| Eingabe | Typische Ausgabe |
| --- | --- |
| „Interne Raumbuchungs-FAQ: Mitarbeitende fragen nach Regeln, Zuständigkeit und Kontaktweg; keine Buchung auslösen.“ | Weg: Copilot-Chat-Agent, weil Wissen und interne Antworten reichen. Risiko: späterer Buchungs-Workflow wäre ein neuer Ausbaupfad. |
| „Angebotserstellung: aus Stichpunkten eine Word-Datei erzeugen, Varianten vergleichen und fehlende Angaben nachfragen.“ | Weg: GitHub-Copilot-Harness, weil Dateierstellung, mehrstufiges Reasoning und Rückfragen gebraucht werden. Risiko: Credits und Review-Pflicht. |
| „Reisekostenprüfung: Belege prüfen, Abweichungen markieren und Freigabe vorbereiten, aber nichts automatisch auszahlen.“ | Weg: GitHub-Copilot-Harness, weil Prozess, Ausnahmen und Human-in-the-loop zusammenkommen. Risiko: klare Governance und Testfälle nötig. |

Passt, weil die Entscheidung nicht nach Funktionsfülle, sondern nach Aufgabe, Risiko und notwendiger Orchestrierung erfolgt.

## Fazit

- Copilot Chat ist stark für schnelle interne Wissensagenten.
- Der GitHub-Copilot-Harness trägt offene, mehrstufige Aufgaben mit Skills, Memory, Tools und Dateien.
- Der Standard-Harness bleibt wichtig für klare, regelbasierte und vorhersagbare Pfade.

Die Übung führt drei Nordwind-Szenarien durch eine Entscheidungsmatrix und leitet eine Empfehlung für den Support-Agenten ab.
