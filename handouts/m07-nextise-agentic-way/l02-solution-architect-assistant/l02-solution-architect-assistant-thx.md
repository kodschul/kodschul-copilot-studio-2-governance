# Lab 7.2 – Assistent 2: Solution Architect

Der Solution Architect übersetzt die Top-1-Empfehlung in einen schlanken Bauplan. Dieses Lab erzeugt Kurzkonzept, Skills, Tools, Ablauf und ein Übergabepaket.

**Leitfragen:**

<details><summary>Wie viele Skills sind für einen wartbaren Agenten realistisch?</summary>
Für eine erste Version reichen maximal fünf bis sechs prozessabhängige Skills. Mehr Skills erhöhen Test- und Pflegeaufwand.
</details>

<details><summary>Warum gehören Skill-Details nicht in den System-Prompt?</summary>
Der System-Prompt steuert Rolle und Grenzen. Skills kapseln spezialisierte Abläufe separat und bleiben dadurch testbarer.
</details>

## Architekturartefakte

| Artefakt | Zweck |
| --- | --- |
| Kurzkonzept | Zielbild, Zielgruppe, Nutzen und Umfang |
| Skill-Liste | prozessabhängige wiederverwendbare Fähigkeiten |
| Tools | externe Aktionen oder Systemzugriffe |
| Ablauf | vom Nutzeranliegen bis Antwort, Eskalation oder Übergabe |
| Übergabepaket | Eingabe für Assistent 3 |

## Maximal 5–6 Skills

| Guter Skill | Zu groß oder zu vage |
| --- | --- |
| `nordwind-headset-anfrage-vorbereiten` | `alles-zum-support-machen` |
| `geraeteantwort-pruefen` | `mitarbeiter-betreuen` |
| `supportkontakt-formulieren` | `tickets-und-hr-und-it-verwalten` |

## Tools vs. Skills

| Baustein | Frage | Beispiel |
| --- | --- | --- |
| Skill | Welcher Ablauf wird wiederholt? | Antrag vorbereiten, Checkliste erstellen |
| Tool | Welche Aktion in einem System ist nötig? | Ticket erstellen, Status lesen |
| Knowledge | Welche Quelle beantwortet Fakten? | Richtlinie, Leitfaden |

> **Merksatz:** Der Architect baut den Plan, nicht den fertigen Agenten.

## Übergabe an Assistent 3

Das Übergabepaket enthält nur, was für System-Prompt und einen gewählten Skill nötig ist: Ziel, Grenzen, Eingaben, Ausgaben, Datenquellen, Tests und Freigaben.

## Beispiel: Headset-Top-1 mit typischer Ausgabe

Die Ausgabe zeigt ein typisches Muster; Skill-Namen und Reihenfolge können zwischen Läufen leicht variieren.

```text
Eingabe:
Top-1 aus Assistent 1: Headset-Anfrage vorbereiten, nicht automatisch bestellen.
Quelle: IT-Geräte-Liste mit NW-HEADSET-USB, Status verfügbar, Team IT-Support.
Grenze: keine Bestandsgarantie und keine automatische Bestellung.
```

```text
Typische Ausgabe:
Kurzkonzept: Ein kleiner Headset-Helfer beantwortet Standardfragen,
nennt die Quelle und bereitet bei Bedarf eine IT-Anfrage vor.

Skill-Liste:
- nordwind-headset-anfrage-vorbereiten
- geraeteantwort-pruefen
- supportkontakt-formulieren

Übergabepaket:
Ziel, Nicht-Scope, Quelle IT-Geräte, Ausgabeformat Antragsentwurf,
Tests für Normalfall, fehlende Angaben und Bestellwunsch.
```

Passt, weil Architect-Ausgaben Baugrenzen, Skill-Liste und Übergabe trennen.

## Fazit

- Eine wartbare erste Version bleibt schlank.
- Skills werden prozessabhängig formuliert und begrenzt.
- Ein gewählter Skill reicht für Lab 7.3.

Die Übung erzeugt das Architekturpaket und wählt einen Skill für die Ausarbeitung.
