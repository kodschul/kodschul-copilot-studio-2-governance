# Lab 7.1 – Lösung: Problem-Solver einsetzen

## Ausgangslage

Der direkt gebaute Nordwind IT-Helfer aus Lab 6.3 zeigt Schwächen ohne Firmenwissen. Die Musterlösung schärft den Bedarf vor dem Architekturentwurf.

## Zielartefakt

Ein vollständiges Übergabeartefakt für Lab 7.2 besteht aus Canvas, Scoring, Top-1-Empfehlung und Validierungsschritten.

## Voraussetzungen und Starter

- Der Prompt aus `../01-assistenten-prompts.md` wird unverändert verwendet.
- Das Testlog aus Lab 6.3 liefert Hinweise auf fehlendes Firmenwissen und Eskalationsbedarf.

## Aufgaben

### 1. Neuen Assistenten oder Chat anlegen

Der Prompt „Assistent 1 – Problem-Solver“ wird als Rollen- oder Systemanweisung eingefügt. Ein eigener Chat-Agent ist ideal, ein normaler Chat reicht im Fallback.

### 2. Nordwind-Supportproblem schildern

Musterbeschreibung:

```text
Nordwind Consulting beantwortet wiederkehrende Fragen zu VPN, Erstlogin, Standardsoftware und Onboarding heute verteilt über E-Mail, Teams und Zuruf. Neue Mitarbeitende und interne Ansprechpartner erhalten dadurch unterschiedlich schnelle und unterschiedlich genaue Antworten. Ziel ist ein interner Agent für Standardfragen auf Basis der IT-Richtlinie und des Onboarding-Leitfadens. Gehalt, Vertrag und personenbezogene Sonderfälle müssen an HR oder IT eskalieren.
```

### 3. Rückfragen beantworten oder Annahmen markieren

Plausible Annahmen:

- Zielgruppe: neue Mitarbeitende, Teamassistenzen, IT-Erstkontakt.
- Datenquellen: IT-Richtlinie und Onboarding-Leitfaden liegen aktuell als Kursdateien vor.
- Risiken: veraltete Quellen, sensible Sonderfälle, falsche Berechtigungen.

### 4. Use-Case-Canvas sichern

| Feld | Musterinhalt |
| --- | --- |
| Problem | Wiederkehrende IT- und Onboarding-Fragen binden IT/HR-Zeit und führen zu uneinheitlichen Antworten. |
| Zielgruppe | Neue Mitarbeitende und interne Ansprechpartner bei Nordwind. |
| Ist-Prozess | Fragen kommen per Mail, Teams oder Zuruf; Antworten hängen von verfügbaren Personen ab. |
| Soll-Prozess | Agent beantwortet Standardfragen aus freigegebenen Quellen und eskaliert Sonderfälle. |
| Nutzen | Schnellere Erstantwort, weniger Unterbrechungen, konsistentere Auskünfte. |
| Datenquellen | IT-Richtlinie, Onboarding-Leitfaden, später ggf. Ticket-Portal. |
| Risiken | Veraltete Quellen, Datenschutz, Berechtigungen, falsche HR-Auskünfte. |

### 5. Scoring sichern

| Kriterium | Punkte | Begründung |
| --- | ---: | --- |
| Business-Nutzen | 4 | Viele Standardfragen, sichtbare Entlastung. |
| Implementierungsaufwand | 4 | Erste Version ohne Systemaktion möglich. |
| Datenverfügbarkeit | 4 | Zwei klare Quellen liegen vor; Aktualität bleibt zu prüfen. |
| Governance-Risiko | 3 | Standardfragen sind geeignet, HR- und Sonderfälle brauchen Eskalation. |
| Gesamt | 15/20 | Reifer Pilot mit klaren Grenzen. |

### 6. Top-1-Empfehlung und nächste Schritte sichern

Top-1-Empfehlung: **Nordwind IT-Helfer für interne IT- und Onboarding-Standardfragen**.

Nächste drei Validierungsschritte:

1. Quellenaktualität prüfen.
2. Eskalationsgrenzen für HR, Vertrag und Sonderberechtigungen bestätigen.
3. Drei Testfragen aus Lab 6.3 als Baseline übernehmen.

## Checkpoint

- Canvas enthält alle sieben Felder.
- Scoring enthält vier Kriterien plus Gesamtpunktzahl.
- Top-1-Empfehlung ist genau ein Use Case.
- Annahmen und Risiken sind sichtbar.

## Abschlusskriterien

- Das Übergabeartefakt kann direkt in Lab 7.2 eingefügt werden.
- Noch kein System-Prompt und keine Skill-Datei wurden erzeugt.

## Erweiterung

Eine schwächere Idee wäre „individuelle Vertragsfragen automatisiert beantworten“. Diese Idee scheitert an Datenschutz, Ermessen und fehlender Standarddatenbasis.

## Fallback

Der normale Chat-Fallback liefert dasselbe Textartefakt. Nicht geübt werden Agentenpersistenz, Agentenleiste und spätere Wiederverwendung als eigener Assistent.
