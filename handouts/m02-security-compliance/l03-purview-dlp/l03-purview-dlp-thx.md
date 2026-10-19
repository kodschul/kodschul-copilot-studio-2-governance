---
theme: default
layout: default
---

# Lab 2.3: Data Loss Prevention

**Leitfragen:**

1. Worin unterscheidet sich DLP von einem Sensitivity Label — warum braucht es beides?
2. An welchen Stellen kann DLP bei Copilot überhaupt greifen?
3. Was sieht die/der Mitarbeitende, wenn eine DLP-Regel auslöst?
4. Warum ist "erst im Audit-Modus, dann blockierend" das übliche Vorgehen?

**Antworten:**

<details>
<summary>1. DLP vs. Sensitivity Label</summary>

Ein Sensitivity Label klassifiziert und schützt ein Dokument dauerhaft; DLP überwacht und blockiert konkrete Aktionen wie das Versenden oder Kopieren sensibler Inhalte. Beide ergänzen sich: Klassifizierung plus aktionsbasierte Kontrolle. _Quelle: Microsoft Learn Purview DLP-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Wo greift DLP bei Copilot?</summary>

An den Stellen, an denen Copilot-Ergebnisse geteilt, kopiert oder weiterversendet werden könnten, z. B. beim Einfügen in eine E-Mail oder beim Export aus einer App — zusätzlich existiert seit einigen Releases der eigene DLP-Speicherort "Microsoft 365 Copilot", der gezielt Copilot-Interaktionen (Prompts/Antworten) selbst erfassen kann, unabhängig vom Versandkanal. _Quelle: Microsoft Learn Purview DLP + Copilot, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was sieht die/der Mitarbeitende bei Auslösung?</summary>

Eine Richtlinienbenachrichtigung, die die Aktion blockiert oder eine Warnung mit Begründung anzeigt, teils mit Möglichkeit zur Begründung des Ausnahmefalls. _Quelle: Microsoft Learn DLP-Richtlinientipps, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>4. Warum erst Audit-Modus, dann blockierend?</summary>

Der Audit-Modus zeigt, wie oft eine Regel auslösen würde, ohne den Arbeitsablauf zu stören — das verhindert, dass eine zu breit konfigurierte Regel den Betrieb blockiert, bevor sie ausreichend getestet wurde. _Quelle: Microsoft Learn DLP-Rollout-Best-Practices, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Feinsteuerung von DLP-Bedingungen (z. B. exakte Mustererkennung für spezifische Datentypen) im Detail → Parkplatz bzw. internes Compliance-Team.

- DLP überwacht und blockiert konkrete Aktionen mit sensiblen Inhalten, während ein Sensitivity Label das Dokument selbst klassifiziert und schützt.
- Ein Rollout im Audit-Modus vor dem blockierenden Modus verhindert, dass eine zu breite Regel den Betrieb unerwartet stört.

## DLP und Sensitivity Labels im Zusammenspiel

| Mechanismus       | Wirkt auf                      | Beispiel                                        |
| ----------------- | ------------------------------ | ----------------------------------------------- |
| Sensitivity Label | das Dokument selbst, dauerhaft | Verschlüsselung, Zugriffsbeschränkung           |
| DLP               | eine konkrete Aktion im Moment | Versand per E-Mail wird blockiert oder markiert |

## DLP-Ansatzpunkte bei Copilot

- Copilot-generierte Inhalte, die in eine E-Mail eingefügt werden.
- Export oder Kopieren eines Copilot-Ergebnisses aus einer klassifizierten Quelle.
- Der eigene DLP-Speicherort "Microsoft 365 Copilot": erfasst Prompts und Antworten innerhalb von Copilot-Interaktionen selbst, unabhängig davon, ob das Ergebnis anschließend versendet oder exportiert wird (in Lab 2.3 nicht separat konfiguriert, aber als eigener Speicherort bei der Regel-Erstellung sichtbar).

## Typischer Rollout-Ablauf

```
1. Regel im Audit-Modus aktivieren (nur protokollieren, nicht blockieren)
2. Protokoll auswerten: wie oft würde die Regel auslösen, welche Fälle sind Fehlalarme?
3. Regel anpassen, falls zu breit oder zu eng
4. Erst danach in den blockierenden Modus umschalten
```

> **Merksatz:** Eine DLP-Regel, die sofort blockierend startet, riskiert den Betrieb zu stören, bevor sie ausreichend kalibriert ist.

## Grenzen

- Feine Mustererkennung für spezifische Datentypen (z. B. Kreditkartennummern) wird hier nicht im Detail konfiguriert.
- DLP-Regeln müssen regelmäßig gegen neue Datentypen und Kanäle überprüft werden.

## Fazit

- DLP ergänzt Sensitivity Labels um eine aktionsbasierte Kontrolle.
- Copilot-generierte Inhalte sind ein eigener Ansatzpunkt für DLP-Regeln.
- Der Audit-Modus vor dem blockierenden Modus ist der übliche, risikoärmere Rollout-Weg.

Die Übung konfiguriert eine DLP-Regel und dokumentiert das Testergebnis.
