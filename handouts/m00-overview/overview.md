# Kursüberblick – Copilot Studio: Governance & Agenten bauen

## Kursziel und Abschlussbild

Der Kurs verbindet zwei Perspektiven auf dasselbe Szenario („Nordwind Consulting"):

- **Tag 1 – Governance:** Copilot-Rollout absichern und betreiben: Lizenzierung, Oversharing, Entra, Purview, DLP, Security Copilot, Monitoring, Agent-Governance und Betriebsmodell.
- **Tag 2 – Agenten bauen:** Aus einem realistischen Supportbedarf entsteht ein geprüfter KI-Agent: erst als Copilot-Chat-Agent, dann als Copilot-Studio-Agent mit Skills, Tools, MCP und Teams-Veröffentlichung.

Am Ende liegen vor: ein persönlicher Governance-Aktionsplan (Lab 5.3), der Nordwind IT-Helfer als getesteter Studio-Agent und ein Governance-Kurzcheck für den Agenten (Lab 9.5).

## Zielgruppe und Voraussetzungen

- Zielgruppe: IT-/Security-nahe Rollen, Admins, Maker und Fachbereichsverantwortliche für Copilot.
- Tag 1: Lesezugriff auf ein Sandbox-Admin-Center (Microsoft 365, Entra, Purview, Intune) oder Trainer-Demo-Tenant. Lab 2.6 ist eine Trainer-Demo.
- Tag 2: Microsoft 365 Copilot oder Copilot Chat mit Agent-Builder-Berechtigung, Copilot Studio mit GitHub-Copilot-Harness, Credits, Sandbox-Umgebung, SharePoint-Testliste, Teams-Kanal und Publish-Rechte.
- Alle Übungen nutzen fiktive Nordwind-Daten aus dem [Projektmaterial](../project/README.md).

## Agenda Tag 1 – Governance

| Zeit | Inhalt | Labs |
| --- | --- | --- |
| 09:00–09:30 | Auftakt, Vorstellung, Technik-Check (Deck S00) | – |
| 09:30–10:10 | Modul 1: Lizenzierung & Oversharing | Lab 1.1 (20), Lab 1.2 (20) |
| 10:10–10:30 | Modul 2: Security & Compliance | Lab 2.1 (20) |
| 10:30–10:45 | Pause | |
| 10:45–12:15 | Modul 2 (Fortsetzung) | Lab 2.2–2.7 (je 15) |
| 12:15–13:15 | Mittagspause | |
| 13:15–14:45 | Modul 3: Security-Monitoring | Lab 3.1–3.3 (je 15), 3.4–3.6 und 3.8 (je 10), 3.7 (5, optional/Demo) |
| 14:45–15:00 | Pause | |
| 15:00–15:20 | Modul 4: Agent-Governance | Lab 4.1 (20, Governance-Blatt als Soll-Entwurf) |
| 15:20–16:25 | Modul 5: Betriebsmodell | Lab 5.1 (20), 5.2 (25), 5.3 (20) |
| 16:25–16:30 | Abschluss Tag 1 | Parkplatz, Brücke zu Tag 2 |

Die Zeiten sind knapp: Tag 1 läuft im Leitfragen-Format (Leitfragen → Antwort mit Quelle → Grenze, siehe [`01-leitfragen-format.md`](../m01-licensing-oversharing/01-leitfragen-format.md)). Wenn Zeit fehlt, werden Lab 3.4, 3.6 und 3.7 als Demo gefahren oder gekürzt.

## Agenda Tag 2 – Agenten bauen

| Zeit | Inhalt | Labs |
| --- | --- | --- |
| 09:00–09:15 | Recap Tag 1 | drei Fragen |
| 09:15–10:30 | Modul 6: Agenten verstehen & erster Chat-Agent | Lab 6.1 (20), 6.2 (10, Demo), 6.3 (40) |
| 10:30–10:45 | Pause | |
| 10:45–12:15 | Modul 7: The Nextise Agentic Way | Lab 7.1 (25), 7.2 (20), 7.3 (25), 7.4 (15) |
| 12:15–13:15 | Mittagspause | |
| 13:15–14:45 | Modul 8: Optimieren & Studio-Agent | Lab 8.1 (20), 8.2 (15), 8.3 (30), 8.4 (25) |
| 14:45–15:00 | Pause | |
| 15:00–16:30 | Modul 9: Tools, Evaluation & Veröffentlichen | Lab 9.1 (15), 9.2 (20), 9.3 (20), 9.4 (15), 9.5 (15), Abschluss (5) |

Tag 2 ist gegenüber dem Quellkurs *Copilot Studio 2 (2 Tage)* stark verdichtet: KI-Grundlagen und Prompting (dort Modul 1–2) sowie der Workflow-Lab entfallen, die Übungen laufen kompakt. Die Lösungsdateien (`-sol.md`) dienen als Fallback, wenn ein Lab nicht fertig wird.

## Module und Handouts

Siehe [`topics.md`](topics.md). Pro Lab gibt es drei Dateien:

| Datei | Inhalt |
| --- | --- |
| `…-thx.md` | Theorie und Leitfragen |
| `…-exc.md` | Übung |
| `…-sol.md` | Musterlösung (Trainer; nach der Übung teilen) |
