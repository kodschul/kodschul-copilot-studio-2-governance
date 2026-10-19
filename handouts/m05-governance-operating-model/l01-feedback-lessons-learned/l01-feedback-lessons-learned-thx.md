---
theme: default
layout: default
---

# Lab 5.1: Feedback & Lessons Learned

Copilot-Rollouts sind kein einmaliges Projekt — Schutzmaßnahmen, Richtlinien und Rollen müssen sich anhand realer Erfahrungen weiterentwickeln.

- Nutzende brauchen einen klaren, bekannten Kanal, um Probleme oder Grenzfälle zu melden.
- Nicht jede Meldung löst sofort eine Richtlinienänderung aus — es braucht eine Entscheidungsinstanz.
- Ohne festen Überprüfungsturnus verlaufen Lessons Learned im Sand.

<details>
<summary>Leitfrage 1: Über welchen Kanal melden Nutzende ein Copilot-Problem?</summary>

Ein einheitlicher, allen bekannter Kanal (z. B. IT-Support-Ticket oder ein dediziertes Teams-Kanal) — uneinheitliche oder informelle Meldewege führen dazu, dass Probleme nicht zentral erfasst werden.

</details>

<details>
<summary>Leitfrage 2: Was löst eine Anpassung einer Richtlinie aus — und wer entscheidet?</summary>

Eine gehäufte oder schwerwiegende Meldung (z. B. wiederholte Fehlklassifikationen bei Sensitivity Labels) — die Entscheidung liegt bei der zuständigen Rolle aus der Rollenmatrix (Lab 2.4), nicht bei Einzelpersonen ad hoc.

</details>

<details>
<summary>Leitfrage 3: In welchem Turnus wird das überprüft?</summary>

Angelehnt an die Monitoring-Checkliste aus Lab 3.8 — z. B. monatlich für operative Anpassungen, vierteljährlich für grundlegende Richtlinienüberprüfungen.

</details>

## Beispiel: Lessons-Learned-Zyklus

```
Meldung eingegangen (fester Kanal)
  → Prüfung durch zuständige Rolle (Rollenmatrix Lab 2.4)
  → Entscheidung: Richtlinie anpassen oder nicht
  → Dokumentation + nächste Überprüfung im festen Turnus
```

Die Übung wendet ein Beispiel-Lessons-Learned auf den Nordwind-Fall an.
