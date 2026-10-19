---
theme: default
layout: default
---

# Lab 2.4: Rollen & Zuständigkeiten

**Leitfragen:**

1. Wofür ist Microsoft 365 Copilot zuständig und wofür Security Copilot — wo verläuft die Grenze?
2. Wer im Unternehmen (IT, SOC, Compliance) ist Adressat welcher Copilot-Meldung?
3. Wer entscheidet bei einem Copilot-bezogenen Datenvorfall über die Eskalation?

**Antworten:**

<details>
<summary>1. M365 Copilot vs. Security Copilot</summary>

Microsoft 365 Copilot unterstützt produktive Arbeit in Word/Excel/Outlook/Teams; Security Copilot unterstützt Sicherheitsanalyse und -reaktion. Die Grenze verläuft an der Aufgabe: Arbeitsproduktivität vs. Sicherheitsvorfallanalyse. _Quelle: Microsoft Learn Copilot-Produktabgrenzung, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Wer ist Adressat welcher Meldung?</summary>

Oversharing-/Berechtigungsmeldungen gehen typischerweise an IT/Compliance, Bedrohungssignale an das SOC, Klassifizierungs-/DLP-Verstöße an Compliance. _Quelle: Microsoft Learn Rollenzuordnung Security/Compliance, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Wer entscheidet über Eskalation?</summary>

In der Regel das SOC oder eine benannte Sicherheitsverantwortliche Person, abhängig vom internen Eskalationsmodell des Unternehmens — bei Nordwind wäre das im Governance-Modell (Modul 5) festzulegen. _Individuelle, tenant-spezifische Antwort._

</details>

**Grenze:** Konkrete Eskalationspfade und SLA-Zeiten sind tenant-/vertragsspezifisch → Parkplatz bzw. internes Security-Team.

- Microsoft 365 Copilot unterstützt Produktivität, Security Copilot unterstützt Sicherheitsanalyse — unterschiedliche Zuständigkeiten, kein Ersatz füreinander.
- Unterschiedliche Meldungsarten gehen an unterschiedliche Adressaten: IT/Compliance, SOC oder Compliance je nach Signalart.

## Zuständigkeitsübersicht

| Rolle      | Zuständigkeit im Copilot-Kontext                  |
| ---------- | ------------------------------------------------- |
| IT         | Lizenzierung, Admin-Center-Einstellungen, Rollout |
| SOC        | Bedrohungssignale, Sicherheitsvorfälle            |
| Compliance | Klassifizierung, DLP-Verstöße, Datenschutz        |

## M365 Copilot vs. Security Copilot: Grenze der Zuständigkeit

| Aspekt        | Microsoft 365 Copilot                     | Security Copilot                       |
| ------------- | ----------------------------------------- | -------------------------------------- |
| Zielgruppe    | alle produktiv arbeitenden Nutzenden      | SOC-/Sicherheitsanalyst:innen          |
| Aufgabe       | Textentwürfe, Analysen, Zusammenfassungen | Vorfallanalyse, Signal-Zusammenführung |
| Typischer Ort | Word, Excel, Outlook, Teams               | Defender, Sentinel, eigene Oberfläche  |

> **Merksatz:** Zwei unterschiedliche Copilot-Varianten für zwei unterschiedliche Zielgruppen — Verwechslung führt zu falschen Erwartungen an beide.

## Grenzen

- Konkrete Eskalationspfade müssen unternehmensspezifisch im Governance-Modell (Modul 5) festgelegt werden.
- Die Rollenverteilung kann je nach Unternehmensgröße variieren (z. B. IT und SOC in kleinen Unternehmen dieselbe Person).

## Fazit

- Microsoft 365 Copilot und Security Copilot haben unterschiedliche Zielgruppen und Aufgaben.
- Meldungen gehen je nach Signalart an IT, SOC oder Compliance.
- Die konkrete Eskalationsentscheidung braucht ein festgelegtes, unternehmensspezifisches Modell.

Die Übung ordnet die Rollenverteilung anhand eines Beispielvorfalls zu.
