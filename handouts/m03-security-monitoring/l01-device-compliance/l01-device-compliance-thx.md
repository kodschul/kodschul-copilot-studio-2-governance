---
theme: default
layout: default
---

# Lab 3.1: Gerätekonformität

**Leitfragen:**

1. Was macht ein Gerät "konform" — wer legt die Kriterien fest?
2. Warum ist Gerätekonformität im Zero-Trust-Modell eine Zugriffsvoraussetzung und keine Empfehlung?
3. Wie hängt das mit der Conditional-Access-Richtlinie aus Lab 2.1 zusammen?

**Antworten:**

<details>
<summary>1. Was macht ein Gerät konform?</summary>

Die IT-Abteilung legt in Intune Konformitätsrichtlinien fest (z. B. Verschlüsselung aktiv, aktuelles Betriebssystem, kein Jailbreak/Root). Ein Gerät ist konform, wenn es alle festgelegten Kriterien erfüllt. _Quelle: Microsoft Learn Intune-Konformitätsrichtlinien, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Warum Voraussetzung statt Empfehlung im Zero-Trust-Modell?</summary>

Zero Trust geht davon aus, dass kein Zugriff automatisch vertrauenswürdig ist — Gerätekonformität ist eine von mehreren Bedingungen, die aktiv geprüft werden müssen, bevor Zugriff gewährt wird, nicht nur eine nachträgliche Empfehlung. _Quelle: Microsoft Learn Zero-Trust-Prinzipien, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Zusammenhang mit Conditional Access aus Lab 2.1</summary>

Der Gerätestatus ist eines der vier Signale, die eine Conditional-Access-Richtlinie auswertet (siehe Lab 2.1) — Intune liefert dieses Signal, Conditional Access setzt die Zugriffsentscheidung darauf um. _Quelle: Microsoft Learn Intune + Conditional-Access-Integration, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Detaillierte Konformitätsprofile für einzelne Betriebssysteme → Parkplatz bzw. internes IT-Team.

- Intune-Konformitätsrichtlinien definieren, was ein Gerät zugriffsberechtigt macht; Conditional Access setzt diese Information in eine Zugriffsentscheidung um.
- Im Zero-Trust-Modell ist Gerätekonformität eine aktiv geprüfte Voraussetzung, keine nachträgliche Empfehlung.

## Konformitätskriterien (Beispiele)

| Kriterium              | Beispiel                                 |
| ---------------------- | ---------------------------------------- |
| Verschlüsselung        | Festplattenverschlüsselung aktiv         |
| Betriebssystemstand    | keine veralteten, ungepatchten Versionen |
| Root-/Jailbreak-Status | kein manipuliertes Gerät                 |

## Zusammenspiel Intune und Conditional Access

```
Intune prüft Gerät gegen Konformitätsrichtlinie
  → Ergebnis (konform/nicht konform) als Signal
  → Conditional Access (Lab 2.1) nutzt dieses Signal für die Zugriffsentscheidung
```

> **Merksatz:** Intune stellt fest, ob ein Gerät konform ist. Conditional Access entscheidet, was mit dieser Information geschieht.

## Grenzen

- Konformitätsprofile unterscheiden sich je nach Betriebssystem (Windows, iOS, Android) im Detail.
- Eine einmal als konform erkannte Prüfung gilt nicht dauerhaft — sie wird regelmäßig neu bewertet.

## Fazit

- Konformität wird von der IT über Intune-Richtlinien definiert, nicht vom Gerät selbst.
- Im Zero-Trust-Modell ist sie eine Zugriffsvoraussetzung, keine Empfehlung.
- Intune liefert das Signal, Conditional Access aus Lab 2.1 setzt es in eine Entscheidung um.

Die Übung konfiguriert eine Konformitätsregel und eine Conditional-Access-Bedingung für ein Beispielgerät.
