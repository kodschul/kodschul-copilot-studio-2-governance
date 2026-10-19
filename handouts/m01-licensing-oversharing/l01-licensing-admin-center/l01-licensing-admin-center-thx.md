---
theme: default
layout: default
---

# Lab 1.1: Lizenzierung & Admin Center

> Ab hier gilt das intensive Leitfragen-Format (Leitfragen → Antwort mit Quelle/Datum → Grenze). Details siehe `01-leitfragen-format.md`.

**Leitfragen:**

1. Welche Lizenz braucht wer — und was passiert mit Nutzenden ohne Volllizenz?
2. Welche Copilot-relevanten Einstellungen liegen überhaupt im Admin Center?
3. Wo fließen die Daten hin, wenn ein Prompt abgesetzt wird?
4. Wer im Unternehmen darf diese Einstellungen ändern?
5. Warum reicht das M365 Admin Center allein nicht, sobald ein Agent einen Power-Automate-Flow auslöst?

**Antworten:**

<details>
<summary>1. Welche Lizenz braucht wer?</summary>

Microsoft 365 Copilot ist eine Zusatzlizenz zu einer bestehenden M365-Lizenz. Ohne Volllizenz sind bestimmte Basisfunktionen weiterhin über Microsoft 365 Copilot Chat (Web-Grounding) verfügbar, aber nicht das App-integrierte Copilot in Word/Excel/Outlook/Teams. _Quelle: Microsoft Learn, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Welche Einstellungen liegen im Admin Center?</summary>

Lizenzzuweisung, App-spezifische Copilot-Einstellungen, Zugriff auf Nutzungsberichte, Steuerung von Agenten-Freigaben. _Quelle: Microsoft 365 Admin Center Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Wohin fließen die Prompt-Daten?</summary>

Der Prompt und der gefundene Grounding-Kontext gehen an das zugrunde liegende Sprachmodell innerhalb der Microsoft-365-Vertrauensgrenze; es gilt derselbe Datenschutz- und Compliance-Rahmen wie für die übrigen M365-Dienste. _Quelle: Microsoft Learn Copilot-Datenschutz-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>4. Wer darf Einstellungen ändern?</summary>

Nur Personen mit entsprechender Admin-Rolle (z. B. Global Admin oder eine delegierte Teilrolle), nicht jede Nutzerin/jeder Nutzer. _Quelle: Microsoft Learn Rollen- und Berechtigungsdokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>5. Warum reicht das M365 Admin Center bei Power-Automate-Flows nicht?</summary>

Power-Automate-Flows und Copilot-Studio-Aktionen (Tag 2) werden im separaten **Power-Platform-Admin-Center** verwaltet (Umgebungen, Solutions, DLP-Richtlinien je Umgebung), nicht im M365 Admin Center. _Quelle: Power Platform Admin Center Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Detaillierte Lizenzmodelle, Preise und Umgebungs-DLP-Konfiguration im Power-Platform-Admin-Center sind tenant- und vertragsabhängig → Parkplatz bzw. internes Lizenz-/Security-Team.

- M365-Copilot-Lizenzierung ist eine Zusatzlizenz; Basisfunktionen ohne Volllizenz laufen über Copilot Chat mit Web-Grounding.
- Power Automate/Copilot-Studio-Aktionen werden im separaten Power-Platform-Admin-Center verwaltet, nicht im M365 Admin Center.

## Lizenzarchitektur im Überblick

| Ebene                            | Was sie steuert                                         |
| -------------------------------- | ------------------------------------------------------- |
| M365-Basislizenz                 | Zugriff auf Word/Excel/Outlook/Teams grundsätzlich      |
| Copilot-Zusatzlizenz             | App-integriertes Copilot in diesen Anwendungen          |
| Copilot Chat (ohne Zusatzlizenz) | webbasiertes Grounding, eingeschränkter Funktionsumfang |

## Zwei Admin-Oberflächen

| Oberfläche                  | Zuständigkeit                                                            |
| --------------------------- | ------------------------------------------------------------------------ |
| Microsoft 365 Admin Center  | Lizenzen, App-Copilot-Einstellungen, Nutzungsberichte                    |
| Power-Platform-Admin-Center | Umgebungen, Solutions, DLP-Richtlinien für Power Automate/Copilot Studio |

> **Merksatz:** Ein Agent, der einen Flow auslöst, wird über zwei getrennte Admin-Oberflächen verwaltet, nicht über eine.

## Grenzen

- Genaue Lizenzpreise und -pakete ändern sich regelmäßig — im Kurs nur als "prüfpflichtig vor Kursbeginn" markiert, nicht als feste Zahl gelehrt.
- Rollenverteilung für Admin-Rechte ist tenant-spezifisch und wird hier nicht im Detail vertieft.

## Fazit

- Lizenzierung entscheidet, wer welche Copilot-Funktionstiefe erhält.
- Zwei getrennte Admin-Center verwalten M365-Copilot-Einstellungen und Power-Platform-Aktionen.
- Nur autorisierte Admin-Rollen dürfen diese Einstellungen ändern.

Die Übung konfiguriert ein Admin-Center-Setting für Nordwind und ordnet die Lizenzarchitektur nach.
