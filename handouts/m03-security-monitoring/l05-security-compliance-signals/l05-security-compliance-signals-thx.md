---
theme: default
layout: default
---

# Lab 3.5: Security & Compliance Signale zusammenführen

**Leitfragen:**

1. Warum reicht ein einzelnes Signal (z. B. nur Anmelderisiko) für eine fundierte Entscheidung meist nicht aus?
2. Welche Signalquellen aus Modul 1/2 fließen hier zusammen?
3. Wer sollte eine zusammengeführte Sicht überhaupt bekommen — jede Führungskraft oder nur bestimmte Rollen?

**Antworten:**

<details>
<summary>1. Warum reicht ein einzelnes Signal nicht?</summary>

Ein einzelnes Signal kann falsch-positiv sein oder den Kontext nicht abbilden (z. B. erhöhtes Anmelderisiko durch Dienstreise statt Angriff) — erst die Kombination mehrerer Signale ergibt ein belastbares Bild, wie bereits in Lab 3.3 angewendet. _Quelle: Microsoft Learn Signalkorrelation Security-Copilot-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Welche Signalquellen fließen zusammen?</summary>

Entra ID (Anmelderisiko, Conditional Access aus Lab 2.1), Intune (Gerätekonformität aus Lab 3.1), Purview (Sensitivity Labels/DLP aus Lab 2.2/2.3) und die Rollenzuordnung aus Lab 2.4 — dieselben Quellen aus der Plattform-Landkarte (Modul 2), hier auf Führungskraftebene zusammengeführt. _Quelle: `01-security-plattform-landkarte.md`, Modul 2._

</details>

<details>
<summary>3. Wer sollte die zusammengeführte Sicht bekommen?</summary>

Nur Rollen mit tatsächlicher Sicherheitsverantwortung (siehe Rollenmatrix aus Lab 2.4) — nicht jede Führungskraft automatisch, um unnötige Datenexposition zu vermeiden. _Quelle: Microsoft Learn rollenbasierte Zugriffskontrolle (RBAC), Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Aufbau eines eigenen zentralen SIEM-/Security-Operations-Dashboards → Parkplatz bzw. internes Security-Team.

- Erst die Kombination mehrerer Signalquellen (Entra ID, Intune, Purview) ergibt ein belastbares Bild, ein einzelnes Signal kann irreführend sein.
- Zugriff auf die zusammengeführte Sicht sollte sich an der Rollenmatrix aus Lab 2.4 orientieren, nicht an Hierarchieebene.

## Signalquellen im Überblick (Zusammenfassung Modul 1–3)

| Quelle       | Signal                            | Bezug              |
| ------------ | --------------------------------- | ------------------ |
| Entra ID     | Anmelderisiko, Conditional Access | Lab 2.1           |
| Intune       | Gerätekonformität                 | Lab 3.1           |
| Purview      | Sensitivity Labels, DLP           | Lab 2.2, Lab 2.3 |
| Rollenmatrix | wer darf welche Signale sehen     | Lab 2.4           |

## Warum Signalkombination statt Einzelsignal

```
Einzelsignal (z. B. Anmelderisiko erhöht)
  → kann Kontext haben (Dienstreise) → falsch-positiv möglich
Kombination mehrerer Signale (Anmelderisiko + Gerätekonformität + Zugriff auf klassifizierten Inhalt)
  → belastbareres Bild, wie in Lab 3.3 angewendet
```

> **Merksatz:** Ein Signal ist ein Hinweis, mehrere korrelierte Signale sind eine Entscheidungsgrundlage.

## Grenzen

- Der Aufbau eines eigenen, zentralen Security-Operations-Dashboards liegt außerhalb des Kursumfangs.
- Zusammengeführte Sichten sind nur so gut wie die zugrunde liegende Rollenmatrix.

## Fazit

- Entra ID, Intune, Purview und die Rollenmatrix aus Modul 1/2 bilden gemeinsam die Signalgrundlage.
- Ein Einzelsignal reicht für eine fundierte Entscheidung selten aus.
- Zugriff auf die zusammengeführte Sicht folgt der Rollenverantwortung, nicht der Hierarchieebene.

Die Übung erstellt eine zusammengeführte Signalübersicht für eine Führungskraft bei Nordwind.
