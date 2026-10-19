# Slidev Package Overview — `copilot-studio-2-governance`

Sieben Slidev-Decks (`sNN`), zwei Kurstage, Standardrhythmus 09:00–16:30. Die Decks sind aus bestehenden Decks zusammengesetzt (Folien kopiert, Lab-Nummern und Querverweise angepasst); nur Cover, Inhaltsverzeichnisse, Modul-Einstiege, Kompetenzleiter/Recaps und der Auftakt `s00` sind neu bzw. angepasst. Vorgabe: [`spec.md`](spec.md).

Quelle der Fakten: [`handouts/`](handouts/). Agenda mit Minuten pro Lab: [`handouts/m00-overview/overview.md`](handouts/m00-overview/overview.md).
Build: `cd slides-dev && npm run build` (Ausgabe `.slides-build/`, git-ignoriert). PPTX: `npm run export:pptx`.

## Package → Module → Herkunft

| Package | Zeit | Modul (Codename) | Folien kopiert aus |
| --- | --- | --- | --- |
| s00 | Tag 1, 09:00–09:30 | Auftakt | `copilot-studio-2-com` s00, Inhalte angepasst |
| s01 | Tag 1, 09:30–12:15 | `m01-licensing-oversharing` | `copilot-week-5-com` s05, Lab 9.5–9.6 |
| s01 | | `m02-security-compliance` | `copilot-week-5-com` s05, Modul 10 |
| s02 | Tag 1, 13:15–14:45 | `m03-security-monitoring` | `copilot-week-5-com` s06, Modul 11 |
| s03 | Tag 1, 15:00–16:30 | `m04-agent-governance` | `copilot-agents-studio-2-com` s04, Lab 7.6 |
| s03 | | `m05-governance-operating-model` | `copilot-week-5-com` s06, Modul 12 |
| s04 | Tag 2, 09:00–12:15 | `m06-agent-fundamentals` | `copilot-studio-2-com` s02, Modul 3 |
| s04 | | `m07-nextise-agentic-way` | `copilot-studio-2-com` s02, Modul 4 |
| s05 | Tag 2, 13:15–14:45 | `m08-optimize-studio-agent` | `copilot-studio-2-com` s03, Lab 5.1, 5.2, 6.1, 6.2 |
| s06 | Tag 2, 15:00–16:30 | `m09-tools-publish` | `copilot-studio-2-com` s04, Lab 7.1–7.3, 8.1, 8.3 + Recap/Abschluss |

```text
s00 -> Auftakt
s01 -> m01, m02
s02 -> m03
s03 -> m04, m05
s04 -> Recap Tag 1, m06, m07
s05 -> m08
s06 -> m09
```

## Lab-Nummern: neu ← Quelle

| Neu | Quelle | Neu | Quelle |
| --- | --- | --- | --- |
| 1.1–1.2 | week-5 Lab 9.5–9.6 | 6.1–6.3 | studio-2 Lab 3.1–3.3 |
| 2.1–2.7 | week-5 Lab 10.1–10.7 | 7.1–7.4 | studio-2 Lab 4.1–4.4 |
| 3.1–3.8 | week-5 Lab 11.1–11.8 | 8.1 / 8.2 | studio-2 Lab 5.1 / 5.2 |
| 4.1 | agents-studio Lab 7.6 | 8.3 / 8.4 | studio-2 Lab 6.1 / 6.2 |
| 5.1–5.3 | week-5 Lab 12.1–12.3 | 9.1–9.3 | studio-2 Lab 7.1–7.3 |
| | | 9.4 / 9.5 | studio-2 Lab 8.1 / 8.3 |

## Folienbudget

Trainer-Vorgabe: höchstens 120 Folien pro Tag, 240 insgesamt. Stand: Tag 1 = 118 (s00–s03), Tag 2 = 114 (s04–s06), gesamt 232.

- **Tag 1 (Governance):** pro Lab vier Folien: Leitfragen, Antworten mit Grenze-Zeile, eine Konzeptfolie, Übung. Fünf Portal-Labs (1.1, 1.2, 2.1, 2.2, 3.1) haben zusätzlich eine Screenshot-Folie. Weggelassen: Modul-Aufbau- und „Diese Fragen klärt“-Folien, Merksatz-, Grenzen- und weitere Screenshot-Folien.
- **Tag 2 (Praxis):** pro Lab sechs bis acht Folien: Leitfragen, Antworten, zwei bis vier Konzeptfolien, höchstens eine Beispielfolie (Eingabe | Ausgabe), Übung. Mehr Folien nur für die Kernlabs 6.3, 8.3 und 8.4.
- Die vollständigen Fassungen liegen in den Quelldecks (`copilot-week-5-com`, `copilot-agents-studio-2-com`, `copilot-studio-2-com`) und in den Handouts.

## Deck-Konventionen

- Tag 1 ist der Governance-Einstieg (Konzepte, Leitplanken), Tag 2 die Praxis (Agenten bauen). Lab 4.1 (Governance-Blatt) wird vorab für den geplanten Agenten festgelegt, Lab 9.5 prüft den gebauten.
- Tag 1 (Governance) läuft im Leitfragen-Format: Leitfragen-Folie → Antwort-Folie mit Quelle und Datum → Grenze-Zeile; die Parkplatz-Folie steht am Anfang von `s01`.
- Tag 2 folgt den Konventionen von `copilot-studio-2-com`: Fragen- und Antwortfolie tragen den Lab-Titel, Übungsfolie „Übung Lab X.Y · …" mit höchstens vier Aufgaben.
- Screenshots sind Remote-Links auf Microsoft Learn (Stand der Quelldecks).

## Deck-Status

| Package | Folien | Status |
| --- | --- | --- |
| s00 | 11 | angepasst (Titel, Technik-Check, Szenario, Kursaufbau, Tage) |
| s01 | 46 | zusammengestellt, Build geprüft |
| s02 | 37 | zusammengestellt, Build geprüft |
| s03 | 24 | zusammengestellt, Build geprüft; Lab 4.1 als Soll-Entwurf |
| s04 | 48 | zusammengestellt, Build geprüft |
| s05 | 30 | zusammengestellt, Build geprüft |
| s06 | 36 | zusammengestellt, Build geprüft |

Geprüft: alle Decks bauen fehlerfrei, alle 232 Folien als Bilder gerendert und auf Überlauf (Screenshots, Antwortfolien, Prozessfolien, Tabellen) kontrolliert und korrigiert, alle 30 Screenshot-Links erreichbar, Anrede ohne Pronomen (Imperativ) in Tag-1-Folien. Offen: Durchsicht durch die Trainerin (Folientempo, Wortwahl) und Abgleich von Klickpfaden und „Stand: prüfpflichtig“-Quellen im Tenant vor Kursbeginn.
