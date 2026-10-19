# Nordwind Consulting – Kursprojekt

Ein anonymisiertes Beispielunternehmen zieht sich durch beide Kurstage: **Nordwind Consulting**.
Alle Daten sind fiktiv. Tag 1 sichert und betreibt den Copilot-Rollout von Nordwind, Tag 2 baut den internen IT- und Onboarding-Support-Agenten **„Nordwind IT-Helfer"**.

Dieser Ordner bündelt die Dateien, die Labs als Übungsmaterial nutzen. Jede Übung nennt nur die Dateien, die sie braucht.

## Tag 1 – Governance

| Lab | Ergebnis | Datei(en) hier |
| --- | --- | --- |
| 1.1 | Lizenz- und Admin-Center-Einordnung | `nordwind-tenant-profil.md` |
| 1.2 | Oversharing-Befund | `nordwind-berechtigungsexport.md` |
| 2.2–2.3 | Sensitivity Label und DLP-Regel für ein Beispieldokument | `nordwind-gehaltsuebersicht-2026.md` / `.xlsx` |
| 2.6–2.7 | Vorfallanalyse und Dokumentation | `nordwind-sicherheitsvorfall-szenario.md` |
| 3.3 | Bewertung eines nicht konformen Geräts | `nordwind-testgeraet-nichtkonform.md` |
| 3.4 | Nutzungstelemetrie und Wiederkehrrate | `nordwind-copilot-dashboard-auszug.md` |
| 4.1 | Governance-Blatt für den Support-Agenten | `nordwind-it-richtlinie.md`, `nordwind-onboarding-leitfaden.md` |

## Tag 2 – Agenten bauen

| Lab | Ergebnis | Datei(en) hier |
| --- | --- | --- |
| 6.3 | Erster Chat-Agent ohne Wissensquelle + Testprotokoll | – (entsteht im Lab) |
| 7.1–7.3 | Use-Case-Canvas, Architektur-Kurzkonzept, System-Prompt, `SKILL.md` | – |
| 8.1 | Chat-Agent mit Wissensquellen, Vorher/Nachher-Vergleich | `nordwind-it-richtlinie.md`, `nordwind-onboarding-leitfaden.md` |
| 8.3–8.4 | Copilot-Studio-Agent (GitHub-Copilot-Harness) mit Skills | dieselben Wissensquellen |
| 9.1 | Lesendes Konnektor-Tool auf SharePoint-Liste `IT-Geräte` | `nordwind-it-geraete.md` |
| 9.2–9.3 | MCP-Tool und Testset | – |
| 9.4–9.5 | In Teams veröffentlichter Agent, Governance-Kurzcheck, Aktionsplan | – |

## Vorhandene Dateien

| Datei | Inhalt |
| --- | --- |
| `nordwind-tenant-profil.md` | Basisdaten des Tenants (Nutzende, Lizenzen) |
| `nordwind-berechtigungsexport.md` | Berechtigungsexport mit breiten Freigaben |
| `nordwind-gehaltsuebersicht-2026.md` / `.xlsx` | sensibles Beispieldokument (fiktive Gehaltsdaten) |
| `nordwind-sicherheitsvorfall-szenario.md` | simulierter Sicherheitsvorfall |
| `nordwind-testgeraet-nichtkonform.md` | Geräteprofil mit Konformitäts-, Risiko- und Zugriffssignalen |
| `nordwind-copilot-dashboard-auszug.md` | aggregierter Copilot-Dashboard-Auszug |
| `nordwind-it-richtlinie.md` | VPN, Geräte- und Passwortrichtlinie (Wissensquelle für den Agenten) |
| `nordwind-onboarding-leitfaden.md` | erster Arbeitstag, erste 30 Tage, häufige Fragen (Wissensquelle) |
| `nordwind-it-geraete.md` | Beispielinhalt für die SharePoint-Liste `IT-Geräte` |

Zwischenstände aus den Labs (Testprotokoll, System-Prompt, `SKILL.md`, Testset) werden lokal oder in der Kursablage gespeichert, damit die folgenden Labs darauf aufbauen können.
