# Lab 7.3 – Assistent 3: Skill-Generator

Der Skill-Generator macht aus Architektur und gewähltem Skill zwei Bauartefakte. Dieses Lab erzeugt System-Prompt und eine vollständige `SKILL.md`.

**Leitfragen:**

<details><summary>Was müsste vor produktiver Nutzung des System-Prompts geprüft werden?</summary>
Quellen, Berechtigungen, Eskalationsregeln, Testfälle, Datenschutz und fachliche Freigabe müssen geprüft sein.
</details>

<details><summary>Warum entsteht zusätzlich zur Instruktion eine `SKILL.md`?</summary>
Der System-Prompt steuert den Agenten insgesamt. Die `SKILL.md` kapselt einen wiederholbaren Prozess separat.
</details>

## Zwei Artefakte

| Artefakt | Inhalt | Nutzung |
| --- | --- | --- |
| System-Prompt | Rolle, Ziel, Grenzen, Stil, Eskalation | Agentengrundverhalten |
| `SKILL.md` | Name, Beschreibung, Ablauf, Prüfungen, Ausgabe | wiederverwendbarer Spezialprozess |

## Mindeststruktur einer `SKILL.md`

```markdown
---
name: nordwind-headset-anfrage-vorbereiten
description: Deutsche Beschreibung des Skill-Zwecks.
---
# Anweisungen
...
```

| Regel | Grund |
| --- | --- |
| lowercase-hyphen-name | robuste technische Kennung |
| konkrete deutsche Beschreibung | bessere Skill-Auswahl durch den Agenten |
| Markdown-Anweisungen | lesbar, prüfbar, versionierbar |

## Vergleich mit Lab 6.3

Das Instruktionsskelett aus Lab 6.3 bleibt die Basis für Rolle und Grenzen. Assistent 3 ergänzt daraus ein trennbares Skill-Artefakt mit konkretem Ablauf.

> **Merksatz:** Der System-Prompt hält den Agenten auf Kurs; die `SKILL.md` führt eine Teilaufgabe aus.

## Qualitätsprüfung

- Enthält der System-Prompt keine erfundenen Quellen?
- Ist der Skill eng genug für einen wiederholbaren Prozess?
- Gibt es Tests für Normalfall, fehlende Angaben und verbotenen Grenzfall?
- Ist eine menschliche Freigabe bei sensiblen oder irreversiblen Schritten sichtbar?

## Beispiel: Headset-Skill mit typischer Ausgabe

Die Ausgabe ist ein verkürztes Muster; der Wortlaut variiert zwischen Läufen.

```text
Eingabe:
Übergabepaket: Headset-Anfrage vorbereiten.
Gewählter Skill: nordwind-headset-anfrage-vorbereiten.
Quelle: IT-Geräte-Liste, Eintrag NW-HEADSET-USB.
Grenze: keine Bestellung auslösen, keine Verfügbarkeit zusagen.
```

```text
Typische Ausgabe:
System-Prompt-Auszug:
Antworte zu Headset-Fragen nur mit belegter Quelle. Nenne NW-HEADSET-USB
nur, wenn die IT-Geräte-Liste verbunden ist. Bereite Anfragen vor, löse
keine Bestellung aus.

SKILL.md-Kopf:
---
name: nordwind-headset-anfrage-vorbereiten
description: Bereitet eine kurze Headset-Anfrage an den Nordwind IT-Support vor.
---
```

Passt, weil System-Prompt, Skill-Kopf und Stopppunkt getrennt bleiben.

## Fazit

- Prompt und Skill sind zwei getrennte Artefakte.
- Ein guter Skill hat einen klaren Auslöser und ein prüfbares Ausgabeformat.
- Der Vergleich mit Lab 6.3 zeigt, was aus einer Instruktion wiederverwendbar wird.

Die Übung erzeugt System-Prompt und `SKILL.md` für den gewählten Nordwind-Skill.
