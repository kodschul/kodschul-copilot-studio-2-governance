# Lab 8.3 – Studio-Agent anlegen

Der Nordwind Support-Agent wird im GitHub-Copilot-Harness von Copilot Studio neu angelegt. Das Lab übersetzt System-Prompt, Wissen und Testfragen aus den bisherigen Labs in Build-Komponenten.

**Leitfragen:**

<details><summary>Welche Build-Komponente übernimmt welche Aufgabe?</summary>
Instructions steuern Verhalten, Knowledge liefert Fakten, Skills kapseln Teilaufgaben, Tools führen Aktionen aus und Preview/Evaluate prüfen Qualität.
</details>

<details><summary>Wie erkennt Preview, worauf eine Antwort beruht?</summary>
Je nach Tenant können Quellen, Laufdetails oder Antwortsubstanz sichtbar sein. Belastbar ist eine Antwort, wenn sie belegbare Dateifakten korrekt nutzt.
</details>

<details><summary>Was verbraucht Credits?</summary>
Im GitHub-Copilot-Harness können Bauen, Testen, Evaluieren und spätere Nutzung Copilot Credits verbrauchen.
</details>

## Build-Tab im Überblick

| Komponente | Zweck | Nordwind-Eingabe |
| --- | --- | --- |
| Instructions | Rolle, Ton, Grenzen, Eskalation | System-Prompt aus Lab 7.3 |
| Knowledge | Dokumente, Quellen, gegebenenfalls Memory | Dateien aus Lab 8.1 |
| Tools | Aktionen über Konnektoren, Workflows oder MCP | noch nicht Teil dieses Labs |
| Skills | wiederverwendbare Aufgabenpakete | folgt in Lab 8.4 |
| Model | verfügbares Modell für Laufzeit | Auswahl im Tenant prüfen |
| Connected agents | Delegation an andere Agenten | Ausblick, nicht Baseline |
| Memory | persistente Details aus Interaktionen | Preview-Status prüfen |

## Arbeitsbereiche

| Tab | Funktion im Kurs |
| --- | --- |
| Build | Agent konfigurieren und Bausteine zusammensetzen |
| Preview | Fragen stellen und Verhalten beobachten |
| Evaluate | spätere Testsets und Qualitätsmessung vorbereiten |
| Monitor | spätere Sessions, Gesundheit, Reaktionen und Credit-Nutzung beobachten |

## Chat-Agent vs. Studio-Agent

| Aspekt | Chat-Agent aus Lab 8.1 | Studio-Agent in diesem Lab |
| --- | --- | --- |
| Startaufwand | gering | höher, mit mehr Komponenten |
| Steuerung | Instruktionen und Wissen | Build-Bausteine, Preview, Evaluate, Monitor |
| Ausbau | begrenzt auf Wissensagent | Skills, Tools, Workflows, MCP und Evaluation möglich |
| Kostenlogik | verbrauchsbasiert oder Lizenzumfang | Copilot Credits auch beim Bauen/Testen/Evaluieren |

> **Merksatz:** Im Studio-Agenten wird derselbe Nordwind-Fall nicht nur kopiert, sondern als ausbaufähige Agentenarchitektur angelegt.

## Szenariofortsetzung

Aus Lab 8.1 liegen System-Prompt, Wissensquellen und fünf Testfragen vor. Der Studio-Agent nutzt dieselbe Basis, damit der Vergleich nicht an anderen Inhalten, sondern am Harness und den Komponenten hängt.

## Prüfpunkte

- Harness, Modelloptionen und Preview-Anzeigen sind tenantabhängig und vor Kursbeginn zu prüfen.
- Der GitHub-Copilot-Harness ist ein Copilot-Studio-Harness, nicht der GitHub-Copilot-Dienst.
- Skills bleiben bewusst außen vor, bis Instructions und Knowledge separat getestet sind.

## Beispiel: natürlicher Auftrag mit typischer Ausgabe

Die Beispiele zeigen typische Konfigurationsergebnisse; Darstellung, Feldnamen und Quellenanzeige sind im Tenant zu prüfen.

### Auftrag für die Agent-Erstellung

```text
Erstelle einen internen Nordwind Support-Agenten im GitHub-Copilot-Harness.
Er beantwortet IT- und Onboarding-Standardfragen nur aus den bereitgestellten
Nordwind-Quellen. Er verweist bei Gehalt, Vertrag, Sonderberechtigungen
und nicht belegten Ausnahmen an HR oder IT-Support. Antworten kurz,
sachlich und mit Quellenhinweis formulieren.
```

```text
Typischer Konfigurationsauszug (Darstellung im Tenant prüfen):
Instructions: interner IT- und Onboarding-Support; nur belegte Quellen;
Sonderfälle eskalieren; keine Tickets oder Berechtigungen automatisch auslösen.
Knowledge: nordwind-it-richtlinie.md; nordwind-onboarding-leitfaden.md.
Starter prompts:
- Welche Standardsoftware ist auf einem neuen Firmengerät installiert?
- Welche IT-Schritte gehören zum ersten Arbeitstag?
- Wann sollte eine Anfrage an HR oder IT eskaliert werden?
```

Passt, weil Zweck, Wissen, Grenzen und Starter-Prompts getrennt sichtbar werden.

### Preview-Frage

```text
Welche verpflichtende Schulung steht in den ersten zwei Wochen an?
Bitte Quelle nennen.
```

```text
Typische Antwort (Darstellung im Tenant prüfen):
Laut Onboarding-Leitfaden, Abschnitt „Erste 30 Tage“,
ist die Schulung „IT-Sicherheit Grundlagen“ verpflichtend.
Sie soll innerhalb der ersten zwei Wochen abgeschlossen werden
und dauert ca. 45 Minuten.
```

Passt, weil die Antwort aus dem Onboarding-Leitfaden stammt und keine UI-Funktion erfindet.

## Fazit

- Copilot Studio macht aus Prompt und Wissen eine erweiterbare Agentenstruktur.
- Preview-Tests prüfen denselben Fall wie Lab 8.1 und machen den Vergleich fair.
- Der Zusatzaufwand lohnt erst, wenn spätere Skills, Tools oder Evaluation gebraucht werden.

Die Übung legt den Studio-Agenten an, testet ihn mit den bekannten Fragen und dokumentiert den Vergleich.
