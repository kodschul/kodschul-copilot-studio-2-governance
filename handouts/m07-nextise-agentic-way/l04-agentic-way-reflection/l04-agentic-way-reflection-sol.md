# Lab 7.4 – Lösung: Direktbau und Kette vergleichen

## Ausgangslage

Der direkte Nordwind IT-Helfer aus Lab 6.3 wird mit der Drei-Assistenten-Kette aus Lab 7.1 bis 7.3 verglichen.

## Zielartefakt

Eine ausgefüllte Vergleichstabelle und ein begründeter Veränderungssatz liegen vor.

## Voraussetzungen und Starter

- Die Musterlösung nutzt die Beispielartefakte aus Lab 6.3 bis Lab 7.3.
- Eigene Artefakte können abweichen, wenn Begründung und Prüfpunkte konsistent bleiben.

## Aufgaben

### 1. Vergleichstabelle anlegen

| Kriterium | Lab 6.3 direkt gebaut | Lab 7.1–7.3 Kette | Bewertung |
| --- | --- | --- | --- |
| Präzision | Rolle und Stil vorhanden, aber Daten- und Scope-Lücken sichtbar | Problem, Zielgruppe, Quellen und Tests klarer | verbessert |
| Scope | IT- und Onboarding-Hilfe breit formuliert | Nicht-Scope für HR, Vertrag und Sonderfreigaben explizit | verbessert |
| Eskalation | abhängig von der ersten Instruktion | aus Risikoanalyse und Skill-Regeln abgeleitet | verbessert |
| Testbarkeit | drei Fragen dokumentieren Schwächen | Testfälle entstehen vor Prompt- und Skill-Nutzung | verbessert |

### 2. Beobachtung zum Lab-6.3-Agenten notieren

Der direkte Agent war schnell erstellt und gut für eine Baseline. Ohne Firmenwissen und vorgeschaltete Problemklärung blieb die Antwortqualität jedoch unsicher.

### 3. Beobachtung zum Kettenergebnis notieren

Die Kette erzeugte mehr Struktur: Canvas, Scoring, Scope, Skill-Auswahl, System-Prompt, `SKILL.md` und Tests.

### 4. Bewertung pro Kriterium notieren

Alle vier Kriterien verbessern sich in der Musterlösung. Offener Prüfpunkt bleibt der reale Test im Tenant mit Wissensquellen und späterem Skill-Upload.

### 5. Satz zum stärksten Veränderungsschritt ergänzen

Mustersatz: „Am stärksten verändert hat Schritt 4.2, weil aus einer allgemeinen Agent-Idee ein begrenztes Architekturpaket mit Skills, Tool-Grenzen, Ablauf und Tests wurde.“

### 6. Transferfall für Coding oder Vibecoding notieren

Möglicher Transferfall: Vor einer KI-generierten Integration zuerst Problem und Schnittstellen klären, danach Architekturentscheidungen festhalten, dann eine kleine Funktion generieren und mit Tests prüfen.

## Checkpoint

- Vier Kriterien sind ausgefüllt.
- Der stärkste Veränderungsschritt ist begründet.
- Ein Transferfall außerhalb des Nordwind-Agenten ist vorhanden.

## Abschlusskriterien

- Der direkte Bau ist als schnelle Baseline erkennbar.
- Die Kette ist als präzisere, testbarere Methode erkennbar.
- Ein offener Prüfpunkt für spätere Labs bleibt sichtbar.

## Erweiterung

Governance wird in der Kette früher sichtbar, weil Risiken bereits im Canvas und im Architekturpaket auftauchen. Beim Direktbau erscheinen sie oft erst im Testlog.

## Fallback

Mit Musterartefakten bleibt die Methodik vergleichbar. Nicht bewertet wird die individuelle Qualität des eigenen Agenten oder der eigenen Prompt-Fassung.
