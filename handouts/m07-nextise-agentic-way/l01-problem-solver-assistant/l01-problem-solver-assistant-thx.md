# Lab 7.1 – Assistent 1: Problem-Solver

Der Problem-Solver klärt das Problem vor jeder Lösungsidee. Dieses Lab erzeugt Canvas, Scoring und Top-1-Empfehlung für den Nordwind-Supportfall.

**Leitfragen:**

<details><summary>Warum liefert der Problem-Solver noch keine fertige Lösung?</summary>
Weil zuerst Problem, Zielgruppe, Nutzen, Datenlage und Risiken belastbar sein müssen. Eine Lösung ohne Problemklarheit optimiert oft das Falsche.
</details>

<details><summary>Welche Ausgabe macht den nächsten Schritt möglich?</summary>
Ein vollständiger Use-Case-Canvas, ein Scoring und eine Top-1-Empfehlung reichen für den Solution Architect.
</details>

## Rolle in der Kette

| Schritt | Zweck | Ausgabe |
| --- | --- | --- |
| Problem erfassen | Anliegen strukturieren | Problem- und Zielgruppensatz |
| Canvas füllen | Reife sichtbar machen | sieben Canvas-Felder |
| Scoring | Nutzen und Machbarkeit vergleichen | Punktwerte mit Begründung |
| Top-1 wählen | Entscheidung vorbereiten | priorisierter Use Case |

## Canvas-Felder

| Feld | Leitgedanke |
| --- | --- |
| Problem | wiederkehrender Schmerz statt Toolwunsch |
| Zielgruppe | betroffene Personen und Nutzungskontext |
| Ist-Prozess | heutige Arbeit in wenigen Schritten |
| Soll-Prozess | gewünschter Ablauf mit Agent |
| Nutzen | messbare Veränderung |
| Datenquellen | benötigte Inhalte und Systeme |
| Risiken | Datenschutz, Berechtigung, Qualität, Akzeptanz |

## Nordwind-Supportproblem

Nordwind beantwortet IT- und Onboarding-Standardfragen über E-Mail, Teams und Zuruf. Die Antworten sollen konsistenter werden, ohne Sonderfälle zu automatisieren.

> **Merksatz:** Der erste Assistent bewertet das Problem, nicht den Bauplan.

## Gute Top-1-Empfehlung

- benennt genau einen Use Case,
- begründet Nutzen und Machbarkeit,
- markiert Daten- und Governance-Risiken,
- nennt die nächsten Validierungsschritte.

## Beispiel: Headset-Problem mit typischer Ausgabe

Die Ausgabe zeigt ein typisches Muster; Punktwerte und Formulierungen variieren zwischen Läufen.

```text
Eingabe:
Nordwind erhält wiederkehrende Fragen zu Headsets für Teams-Besprechungen.
Die Liste IT-Geräte enthält NW-HEADSET-USB, Status verfügbar, Team IT-Support.
Gesucht ist ein kleiner Agentenfall ohne automatische Bestellung.
```

```text
Typische Ausgabe:
Canvas-Auszug:
Problem: Headset-Anfragen landen verteilt bei Mitarbeitenden und IT.
Zielgruppe: Mitarbeitende mit Teams-Besprechungen.
Soll-Prozess: Frage klären, Standardgerät nennen, Anfrage an IT vorbereiten.
Datenquelle: IT-Geräte-Liste.
Risiken: veralteter Bestand, fehlende Freigabe, keine automatische Zusage.

Scoring: Nutzen 3/5 · Aufwand 4/5 · Datenverfügbarkeit 4/5 · Risiko 2/5.
Top-1: Headset-Anfrage vorbereiten, nicht automatisch bestellen.
```

Passt, weil der Problem-Solver Bedarf, Datenlage und Stopppunkt sichtbar macht.

## Fazit

- Problemklärung verhindert vorschnellen Agentenbau.
- Canvas und Scoring machen Annahmen sichtbar.
- Die Top-1-Empfehlung ist die Übergabe an Assistent 2.

Die Übung legt Assistent 1 an und erzeugt den Nordwind-Canvas.
