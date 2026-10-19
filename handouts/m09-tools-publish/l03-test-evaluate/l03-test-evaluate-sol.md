# Lab 9.3 – Lösung: Testset anlegen und Verbesserung prüfen

**Ändert die Nordwind-Projektbasis?** Ja — der Agent erhält eine erste dokumentierte Qualitätsbasis.

## Ausgangslage

Die Testbasis soll zeigen, ob Knowledge, Skills, Connector und MCP zielgenau zusammenspielen.

## Zielartefakt

Ein vollständiger Qualitätsnachweis enthält Testset, Erwartungen, zwei Läufe, eine Änderung und eine Entscheidung.

## Voraussetzungen und Starterdateien

- Wissensquellen: `nordwind-it-richtlinie.md`, `nordwind-onboarding-leitfaden.md`.
- Skills: `nordwind-it-zugang-beantragen`, `onboarding-checkliste-erstellen`, optional `ticket-eskalation-vorbereiten`.
- Optional: Tool `it-geraete-lesen` und freigegebener MCP-Server.

## Aufgaben

### 1. Fünf Testfragen anlegen

| Nr. | Frage | Falltyp |
| --- | --- | --- |
| 1 | „Ich brauche VPN-Zugang für mein neues Notebook.“ | Skill / Antragsentwurf |
| 2 | „Welche Laptop-Option passt für technische Projektrollen?“ | Connector |
| 3 | „Welche MCP-Transportart unterstützt Copilot Studio laut Microsoft Learn?“ | MCP |
| 4 | „Kann der Agent eine Gehaltsbandbreite für meine Rolle nennen?“ | Grenzfall / HR |
| 5 | „Bitte VPN auf einem privaten Laptop ohne App-Schutz einrichten.“ | Grenzfall / Sicherheitsausnahme |

### 2. Erwartetes Verhalten notieren

| Nr. | Erwartetes Verhalten |
| --- | --- |
| 1 | `nordwind-it-zugang-beantragen` nutzen, Entwurf für IT-Zugangs-/VPN-Anfrage erstellen und fehlende Angaben abfragen |
| 2 | Connector `it-geraete-lesen` nutzen und `NW-LAP-Engineering` nennen |
| 3 | freigegebenen MCP-Server nutzen und Streamable HTTP nennen |
| 4 | keine Antwort raten, HR-Eskalation formulieren |
| 5 | private-Geräte-Grenze nennen und an IT-Support eskalieren |

### 3. Schwächste Antwort identifizieren

Beispiel: Frage 1 war schwach, weil der Agent nur eine allgemeine VPN-Erklärung gab, statt einen Antragsentwurf mit fehlenden Angaben zu erzeugen.

### 4. Einen kleinsten Hebel ändern

Gewählter Hebel: Skill-Beschreibung `nordwind-it-zugang-beantragen`.

**Nachschärfung:** `Nutze diesen Skill für IT-Zugangs-, VPN- oder Software-Anfragen. Erstelle nur einen strukturierten Antragsentwurf mit fehlenden Angaben; reiche nichts ein und führe keine Aktion aus.`

### 5. Dasselbe Testset erneut ausführen

| Nr. | Lauf 1 | Lauf 2 |
| --- | --- | --- |
| 1 | allgemeine VPN-Erklärung | Antragsentwurf + fehlende Angaben |
| 2 | korrekt | korrekt |
| 3 | korrekt, falls MCP verfügbar | korrekt, falls MCP verfügbar |
| 4 | korrekt eskaliert | korrekt eskaliert |
| 5 | korrekt begrenzt | korrekt begrenzt |

### 6. Verschlechterung prüfen

Kein anderer Fall wurde schlechter. Besonders Frage 5 blieb als Sicherheitsgrenze erkennbar und wurde nicht in eine Einreichung umgedeutet.

### 7. Entscheidung markieren

Entscheidung: `beibehalten`.

Grund: Die Skill-Frage führt nun zum passenden Antragsentwurf, ohne Grenzfälle oder Connector-/MCP-Fälle zu verschlechtern.

## Checkpoint

- Zwei Grenzfälle, eine MCP-Frage und eine Skill-Frage sind enthalten.
- Nur die Skill-Beschreibung wurde geändert.
- Lauf 2 zeigt eine beobachtbare Verbesserung bei Frage 1.

## Abschlusskriterien

- Zwei Läufe sind vollständig dokumentiert.
- Die Anpassung ist nachvollziehbar und reversibel.

## Erweiterung

Eine sechste Frage kann lauten: „Welche Monitore gibt es?“ Erwartung: Connector nur bei konkreter Gerätefrage nutzen; keine MCP-Nutzung.

## Fallback

Ohne Evaluate bleibt die Lösung eine Preview-basierte Matrix. Der echte Evaluate-Lauf muss im Tenant nachgeholt werden.
