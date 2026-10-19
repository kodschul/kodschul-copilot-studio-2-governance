# Lab 8.4 – Skills hinzufügen

Skills kapseln wiederverwendbares Agentenverhalten als eigenes Paket aus Beschreibung, Anweisungen und optionalen Ressourcen. Dieses Lab ergänzt den Nordwind Studio-Agenten um erste Skills und testet deren Auslösung.

**Leitfragen:**

<details><summary>Woran entscheidet der Agent, einen Skill zu laden?</summary>
Vor allem an der Skill-Beschreibung und daran, ob die Anfrage zu Zweck, Grenzen und Ausgabeformat passt.
</details>

<details><summary>Warum sollten Skills klein bleiben?</summary>
Kleine Skills triggern zuverlässiger, lassen sich einzeln testen und konkurrieren weniger mit globalen Instructions.
</details>

<details><summary>Wann ist ein Skill besser als eine weitere Instruktion?</summary>
Wenn ein wiederholbarer Teilauftrag eigene Schritte, Sonderfälle oder ein festes Ausgabeformat braucht.
</details>

## Skill-Anatomie

| Baustein | Aufgabe | Gute Ausprägung |
| --- | --- | --- |
| Name | technische Kennung | klein, eindeutig, nur Kleinbuchstaben, Zahlen und Bindestriche |
| Description | Aktivierungssignal | Anlass, Zweck, Grenze und Zielausgabe klar genannt |
| Markdown-Anweisungen | Arbeitslogik | Schritte, Format, Sonderfälle und erlaubte Quellen |
| Ressourcen | optionaler Zusatzkontext | nur ergänzen, wenn wirklich gebraucht |

## Abgrenzung zu anderen Bausteinen

| Baustein | Rolle im Agenten | Nordwind-Beispiel |
| --- | --- | --- |
| Instructions | allgemeines Verhalten | keine Vermutungen, Sonderfälle eskalieren |
| Knowledge | Faktenbasis | IT-Richtlinie, Onboarding-Leitfaden |
| Tools | externe Aktion | späterer Workflow oder Konnektor |
| Skills | wiederverwendbarer Teilauftrag | VPN erklären, Checkliste erstellen, Eskalation vorbereiten |

## Drei Erstellungswege

| Weg | Einsatz im Lab | Nutzen |
| --- | --- | --- |
| Upload a Skill | `SKILL.md` aus Lab 7.3 hochladen | vorhandenes Ergebnis weiterverwenden |
| Generate with AI | zweiten Skill natürlichsprachlich beschreiben | schnelle erste Fassung plus Rückfragen |
| Create from blank | optionalen dritten Skill manuell anlegen | volle Kontrolle über Beschreibung und Schritte |

## Progressive Disclosure

Der GitHub-Copilot-Harness lädt Skill-Kontext nur bei Bedarf. Dadurch bleiben globale Instructions schlank, während wiederkehrende Teilaufgaben detaillierter beschrieben werden können.

> **Merksatz:** Die Skill-Beschreibung ist der Schalter; der Skill-Body ist erst nach dem Auslösen wirksam.

## Trigger-Test

| Testtyp | Zweck | Beispiel |
| --- | --- | --- |
| Standardfall | Skill soll auslösen | „VPN auf dem Firmenlaptop einrichten“ |
| Variante | andere Formulierung soll ebenfalls passen | „Remote ins Nordwind-Netz verbinden“ |
| Nicht-Auslöser | Skill soll aus bleiben | „Wie hoch ist mein Gehalt?“ |

## Häufige Fehlmuster

- Beschreibung ist zu breit und triggert bei jeder Supportfrage.
- Beschreibung nennt nur ein Format, aber keinen fachlichen Anlass.
- Skill enthält zu viele Aufgaben und konkurriert mit anderen Skills.
- Nicht-Auslöser fehlen, daher greift der Skill bei Grenzfällen.

## Beispiel: Skill-Beschreibung mit typischem Triggerverhalten

Die Beispiele nutzen einen separaten Skill `passwort-regeln-erklaeren`, nicht die Übungsskills. Das Preview-Verhalten variiert zwischen Läufen.

### Zu schwache Beschreibung

```text
name: passwort-regeln-erklaeren
description: Hilft bei IT-Fragen.
```

```text
Typisches Preview-Verhalten:
Frage „Wie oft muss mein Passwort gewechselt werden?“ → kann auslösen.
Frage „Ich brauche Zugriff auf Gehaltsdaten“ → kann fälschlich auslösen.
Beobachtung: Beschreibung ist zu breit; Grenze und Zielausgabe fehlen.
```

Risiko: Der Skill konkurriert mit fast jeder IT- oder Sonderfallfrage.

### Starke Beschreibung

```text
name: passwort-regeln-erklaeren
description: Erklärt ausschließlich Nordwind-Passwortregeln aus der
IT-Richtlinie: Mindestlänge, Wechselintervall und Wiederverwendung.
Nutze den Skill nicht für MFA-Probleme, Gehalt, Sonderzugriffe
oder individuelle Ausnahmen; diese Fälle bleiben beim Agenten
oder werden eskaliert.
```

```text
Typisches Preview-Verhalten:
Frage „Wie oft muss mein Passwort gewechselt werden?“ → Skill löst aus.
Frage „MFA-App auf neuem Handy einrichten“ → Skill löst nicht aus.
Antwort: mindestens 12 Zeichen, Wechsel alle 180 Tage,
keine Wiederverwendung der letzten 5 Passwörter.
```

Passt, weil Anlass, Quelle, Grenze und erwartete Antwort klar sind.

## Beispiel: Generate with AI mit typischem SKILL.md-Kopf

```text
Generate with AI – Anfrage:
Erstelle einen kleinen Skill `passwort-regeln-erklaeren`.
Er soll ausschließlich die Passwortregeln aus der Nordwind-IT-Richtlinie erklären:
Mindestlänge, Wechselintervall, Wiederverwendung. Keine MFA-Hilfe,
keine Sonderfreigaben, keine Gehalts- oder Vertragsfragen.
Ausgabe: kurze Antwort mit Quelle und Eskalationshinweis bei Ausnahmen.
```

```md
---
name: passwort-regeln-erklaeren
description: Erklärt ausschließlich Nordwind-Passwortregeln aus der IT-Richtlinie, einschließlich Mindestlänge, Wechselintervall und Wiederverwendung. Nicht für MFA-Probleme, Sonderfreigaben, Gehalt oder Vertrag verwenden.
---
# Anweisungen
```

Passt, weil schon der Kopf den fachlichen Auslöser und die Nicht-Auslöser begrenzt.

## Fazit

- Skills modularisieren wiederkehrende Teilaufgaben ohne globale Instructions aufzublähen.
- Gute Beschreibungen enthalten Anlass, Zweck, Grenze und Ergebnis.
- Preview-Tests mit Standardfall, Variante und Nicht-Auslöser machen Triggerqualität sichtbar.

Die Übung lädt einen vorhandenen Skill hoch, erzeugt einen zweiten Skill mit KI und schärft Beschreibungen anhand von Preview-Beobachtungen.
