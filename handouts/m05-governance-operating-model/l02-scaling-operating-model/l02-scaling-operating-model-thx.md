---
theme: default
layout: default
---

# Lab 5.2: Betriebsmodell skalieren

Ein Governance-/Betriebsmodell, das für 20 Pilot-Nutzende funktioniert, funktioniert nicht automatisch für 2.000 — Rollen, Prozesse und Automatisierungsgrad müssen mitwachsen.

- Manuelle Einzelfallprüfung (wie in den Pilot-Labs dieses Kurses) skaliert nicht auf tausende Nutzende.
- Rollen aus der Pilotphase (z. B. eine Person als Sicherheitsverantwortliche) müssen ggf. auf ein Team aufgeteilt werden.
- Manche Schritte lassen sich automatisieren (z. B. Konformitätsprüfung), andere bleiben zwingend manuell (z. B. Entscheidung sperren/einschränken bei Grenzfällen).

<details>
<summary>Leitfrage 1: Was bricht typischerweise beim Sprung von 20 auf 2.000 Nutzende?</summary>

Manuelle Prozesse, die in der Pilotphase noch handhabbar waren (z. B. jede Anmelderisiko-Meldung einzeln prüfen), werden bei 2.000 Nutzenden zum Flaschenhals — ohne Automatisierung/Priorisierung entsteht ein Rückstau.

</details>

<details>
<summary>Leitfrage 2: Welche Rollen braucht ein Copilot-Betriebsmodell dauerhaft?</summary>

Mindestens: eine operative IT-Rolle (Konformität, Zugriff), eine Sicherheits-/Compliance-Rolle (DLP, Sensitivity Labels) und eine Adoptions-/Kommunikationsrolle (Onboarding, KPI-Reporting) — konsistent mit der Rollenmatrix aus Lab 2.4, ggf. auf mehrere Personen aufgeteilt.

</details>

<details>
<summary>Leitfrage 3: Was lässt sich automatisieren, was bleibt manuell?</summary>

Automatisierbar: Konformitätsprüfung, Standard-DLP-Regeln, KPI-Datenerhebung. Manuell bleibt: die Entscheidung bei Grenzfällen (sperren/einschränken, siehe Lab 3.3) und die fachliche Interpretation von Berichten (siehe Lab 3.7).

</details>

## Skalierungslogik im Überblick

| Pilotphase (20 Nutzende)                    | Skalierte Phase (2.000 Nutzende)                          |
| ------------------------------------------- | --------------------------------------------------------- |
| eine Person prüft alle Signale einzeln      | automatisierte Vorprüfung, Eskalation nur bei Grenzfällen |
| eine Rolle deckt Sicherheit und Adoption ab | dedizierte Rollen/Team je Verantwortungsbereich           |

Die Übung skizziert konkrete Skalierungsschritte für Nordwind.
