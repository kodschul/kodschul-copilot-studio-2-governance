---
theme: default
layout: default
---

# Lab 2.1: Entra ID & Conditional Access

**Leitfragen:**

1. Warum reicht MFA allein nicht, um den Copilot-Zugriff abzusichern?
2. Welche Signale kann eine Conditional-Access-Richtlinie auswerten?
3. Was passiert, wenn ein Gerät eines Nordwind-Mitarbeitenden nicht konform ist?

**Antworten:**

<details>
<summary>1. Warum reicht MFA allein nicht?</summary>

MFA prüft nur die Identität; Conditional Access bewertet zusätzlich Kontext wie Gerät, Standort und Risiko, bevor Zugriff gewährt wird. _Quelle: Microsoft Learn Conditional-Access-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Welche Signale wertet Conditional Access aus?</summary>

Benutzer/Gruppe, Anwendung, Standort, Gerätestatus, Anmelde- und Benutzerrisiko. _Quelle: Microsoft Learn Conditional-Access-Signale, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was passiert bei einem nicht konformen Gerät?</summary>

Je nach Richtlinie: Zugriff blockiert oder nur eingeschränkt (z. B. Web-Zugriff ohne Download). Vertieft in Modul 3 (Gerätekonformität). _Quelle: Microsoft Learn Conditional Access + Intune Compliance, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Session-Controls, Token-Schutz und Named Locations im Detail → Parkplatz bzw. internes Security-Team.

- Conditional Access bewertet mehr als nur Identität: Gerät, Standort und Risiko fließen in die Zugriffsentscheidung ein.
- Ein nicht konformes Gerät kann je nach Richtlinie blockiert oder nur eingeschränkt zugelassen werden.

## Entra ID als Basis

Entra ID verwaltet Identitäten und Authentifizierung für den gesamten M365-Zugriff, einschließlich Copilot. MFA ist dabei nur ein Baustein der Identitätsprüfung.

## Conditional Access: Signale und Wirkung

| Signal                  | Beispiel                                               |
| ----------------------- | ------------------------------------------------------ |
| Benutzer/Gruppe         | nur bestimmte Abteilungen dürfen Copilot nutzen        |
| Standort                | Zugriff nur aus dem Unternehmensnetzwerk               |
| Gerätestatus            | nur konforme, verwaltete Geräte                        |
| Anmelde-/Benutzerrisiko | ungewöhnliches Anmeldeverhalten löst Zusatzprüfung aus |

## Warum das für Copilot relevant ist

Copilot durchsucht Inhalte innerhalb der Berechtigungen der anfragenden Person (siehe Lab 1.2) — eine unzureichend abgesicherte Identität gefährdet damit auch den Zugriff auf die durch Copilot auffindbaren Inhalte.

> **Merksatz:** MFA bestätigt, wer zugreift. Conditional Access entscheidet, ob der Zugriff unter den gegebenen Umständen überhaupt erlaubt ist.

## Grenzen

- Named Locations, Session-Controls und Token-Schutz sind Vertiefungsthemen außerhalb des Kursumfangs.
- Die konkrete Richtlinienkonfiguration ist tenant-spezifisch und muss vor Wirkung sorgfältig getestet werden.

## Fazit

- MFA prüft Identität, Conditional Access bewertet zusätzlichen Kontext.
- Vier zentrale Signale steuern eine Conditional-Access-Entscheidung: Benutzer/Gruppe, Standort, Gerätestatus, Risiko.
- Ein nicht konformes Gerät wird je nach Richtlinie blockiert oder eingeschränkt — Details dazu in Modul 3.

Die Übung konfiguriert sicheren Zugriff mit Entra ID, MFA und Conditional Access.
