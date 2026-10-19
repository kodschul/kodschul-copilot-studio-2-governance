---
theme: default
layout: default
---

# Lab 3.2: App Protection Policies

**Leitfragen:**

1. Wann schützt man die App statt des Geräts — und warum?
2. Was geht auf einem nicht verwalteten Privatgerät damit noch, was nicht mehr?
3. Was passiert mit Unternehmensdaten beim Austritt einer/eines Mitarbeitenden?

**Antworten:**

<details>
<summary>1. Wann App-Schutz statt Geräteschutz?</summary>

Wenn das Gerät nicht vollständig durch das Unternehmen verwaltet wird (z. B. privates Gerät im Bring-your-own-device-Modell) — dort lässt sich nur die Unternehmens-App absichern, nicht das gesamte Gerät. _Quelle: Microsoft Learn Intune App Protection Policies, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Was geht auf einem nicht verwalteten Privatgerät noch?</summary>

Die Nutzung der geschützten App selbst bleibt möglich, aber typische Einschränkungen wie Kopieren in nicht verwaltete Apps, Speichern außerhalb der App oder Screenshot-Sperren können erzwungen werden. _Quelle: Microsoft Learn App-Protection-Einschränkungen, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was passiert bei Austritt?</summary>

Die Unternehmensdaten innerhalb der geschützten App können selektiv gelöscht werden ("Selective Wipe"), ohne die privaten Daten auf dem Gerät zu berühren. _Quelle: Microsoft Learn Selective-Wipe-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Feinsteuerung einzelner App-Protection-Einstellungen je Plattform → Parkplatz bzw. internes IT-Team.

- App Protection Policies schützen die Unternehmens-App selbst, unabhängig davon, ob das gesamte Gerät verwaltet wird.
- Beim Austritt lässt sich gezielt nur der Unternehmensanteil löschen ("Selective Wipe"), private Daten bleiben unberührt.

## App-Schutz vs. Geräteschutz

| Situation                                 | Passender Schutz             |
| ----------------------------------------- | ---------------------------- |
| Vollständig unternehmensverwaltetes Gerät | Gerätekonformität (Lab 3.1) |
| Privates, nicht verwaltetes Gerät (BYOD)  | App Protection Policy        |

## Typische App-Protection-Einschränkungen

| Einschränkung  | Wirkung                                                       |
| -------------- | ------------------------------------------------------------- |
| Kopiersperre   | kein Kopieren von Inhalten in nicht verwaltete Apps           |
| Speichersperre | kein Speichern außerhalb der geschützten App                  |
| Selective Wipe | selektives Löschen bei Austritt, ohne Privatdaten zu berühren |

> **Merksatz:** App Protection Policies schützen Daten auch dann, wenn das Gerät selbst nie unter Unternehmenskontrolle steht.

## Grenzen

- Der genaue Funktionsumfang unterscheidet sich je nach mobiler Plattform (iOS, Android).
- App-Schutz ersetzt keine Gerätekonformitätsprüfung, wenn das Unternehmen das Gerät ohnehin verwaltet.

## Fazit

- App-Schutz ist die passende Maßnahme, wenn das Gerät selbst nicht verwaltet werden kann.
- Kopier-, Speicher- und Screenshot-Einschränkungen bleiben trotzdem durchsetzbar.
- Selective Wipe trennt Unternehmensdaten sauber von privaten Daten beim Austritt.

Die Übung konfiguriert eine App Protection Policy für eine Nordwind-App.
