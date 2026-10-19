# Lab 9.5: Governance, Showcase und Aktionsplan

Der fertige Agent ist eine Kette aus Problemklärung, Skills, Tools, MCP, Workflow und Teams. Dieses Lab bündelt Governance-Prüfung, Showcase und persönlichen Transfer.

**Leitfragen:**

<details><summary>Warum ist jeder Skill eine Zugriffsfläche?</summary>
Ein Skill verändert Verhalten, Entscheidungen und Ausgaben des Agenten. Deshalb braucht er Review wie Knowledge, Tool oder Workflow.</details>

<details><summary>Was zeigt die komplette Kette?</summary>
Aus einem Problem entstehen Assistenten-Ergebnisse, Skills, ein Studio-Agent, MCP-/Connector-Zugriff, Workflow-Handlung und Teams-Nutzung.</details>

<details><summary>Wann reicht Chat statt Studio?</summary>
Chat reicht bei Wissen und einfachen Antworten. Studio lohnt bei Skills, Tools, Workflows, MCP, Veröffentlichung und Governance-Betrieb.</details>

## Governance-Kurzcheck

| Feld | Prüffrage |
| --- | --- |
| Datenquellen | Welche Knowledge-Dateien, Listen und externen Server werden genutzt? |
| Zielgruppe | Wer darf den Agenten verwenden und wer ausdrücklich nicht? |
| Freigeber | Wer prüft Inhalt, Zugriff und Wirkung vor Pilot oder Rollout? |
| Credit-Limit | Wer beobachtet Verbrauch und stoppt Fehlpfade? |
| Abschaltkriterium | Wann wird der Agent deaktiviert oder zurückgerollt? |
| Skills | Welche Aufgaben verändern Verhalten und Ausgabe? |
| MCP | Welcher Server, welche Tools, welcher Betreiber? |
| Workflow | Welche Schreib- oder Sendeaktionen laufen nach Freigabe? |

## Showcase-Kette

| Schritt | Ergebnis |
| --- | --- |
| Problem | Nordwind braucht interne IT- und Onboarding-Unterstützung |
| Assistenten 1–3 | Use Case, Kurzkonzept und Skill-Entwurf entstehen |
| Skill | wiederverwendbare Teilaufgaben werden testbar |
| Studio-Agent | Instructions, Knowledge, Skills und Tools laufen zusammen |
| MCP / Connector | externe Dokumentation und Liste werden kontrolliert gelesen |
| Workflow | Eskalation erzeugt Ticket und Teams-Nachricht nach Freigabe |
| Teams | veröffentlichter Kanal zeigt realen Nutzungskontext |

> **Merksatz:** Agentische Qualität entsteht aus einer geprüften Kette, nicht aus einem einzelnen guten Prompt.

## Aktionsplan-Felder

| Feld | Ergebnis |
| --- | --- |
| Realer Use Case | konkrete Aufgabe aus dem Arbeitskontext |
| Weg | Chat-Agent oder Studio-Agent mit Begründung |
| Erste drei Skills | kleine wiederverwendbare Fähigkeiten |
| Pilotdatum | erster begrenzter Testtermin |
| Governance-Owner | Freigabe, Review, Credits und Abschaltung |

## Beispiel: Governance-Check mit typischer Ausgabe

Die Ausgaben zeigen ein typisches Muster; Wortlaut und Detailtiefe variieren zwischen Läufen und Tenants.

### Kurzcheck für „Headset-Helfer“

| Feld | Beispielausfüllung |
| --- | --- |
| Datenquellen | SharePoint-Liste `IT-Geräte`, gefiltert auf Headset und Zubehör |
| Zielgruppe | Pilotgruppe im internen Support, keine organisationsweite Freigabe |
| Freigeber | IT-Support-Leitung prüft Quelle, Antwortgrenzen und Tool-Beschreibung |
| Credit-Limit | Pilot-Owner beobachtet Verbrauch wöchentlich |
| Abschaltkriterium | falsche Verfügbarkeitsantworten oder Tool-Aufruf bei Nicht-Gerätefragen |
| Zugriffsflächen | Connector read-only; kein MCP; kein Workflow im Pilot |

### Aktionsplan-Eintrag

```text
Use Case: Headset-Verfügbarkeit und Standardzubehör beantworten.
Weg: Chat-Agent mit Knowledge oder Studio-Agent nur bei späterem Workflow.
Erste Skills: headset-frage-klaeren, zubehoer-bedarf-sammeln, ticket-entwurf-vorbereiten.
Pilot: zwei Wochen mit IT-Support-Testgruppe.
Owner: IT-Support-Leitung für Freigabe, Pilot-Owner für Review und Abschaltung.
```

Passt, weil ein kleiner Pilot klare Daten, Zielgruppe, Owner und Abschaltkriterium hat.

## Fazit

- Governance beginnt bei jedem neuen Baustein, nicht erst beim Rollout.
- Die Kurskette zeigt ein übertragbares Muster von Problem bis Teams.
- Ein guter Aktionsplan ist klein, terminiert und prüfbar.

Die Übung erstellt einen Governance-Kurzcheck und einen persönlichen Pilotplan.
