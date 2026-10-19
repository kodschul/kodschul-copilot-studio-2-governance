---
theme: default
layout: default
---

# Lab 2.2: Sensitivity Labels

**Leitfragen:**

1. Was macht ein Sensitivity Label technisch mit einem Dokument?
2. Warum ändert ein Label, was Copilot als Antwort ausgeben darf?
3. Was passiert mit einem Copilot-Ergebnis, das aus einem klassifizierten Dokument entsteht?
4. Was passiert mit Altbeständen, die nie klassifiziert wurden?

**Antworten:**

<details>
<summary>1. Was macht ein Sensitivity Label technisch?</summary>

Es versieht ein Dokument mit Metadaten und kann zusätzlich Schutzmaßnahmen wie Verschlüsselung oder Zugriffsbeschränkung erzwingen. _Quelle: Microsoft Learn Purview-Sensitivity-Labels-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Warum beeinflusst ein Label, was Copilot ausgeben darf?</summary>

Copilot berücksichtigt die mit dem Label verbundenen Schutzmaßnahmen und Berechtigungen beim Grounding — ein restriktiv gelabeltes Dokument darf nicht unkontrolliert in eine Antwort einfließen. _Quelle: Microsoft Learn Copilot + Sensitivity Labels, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was passiert mit einem Copilot-Ergebnis aus klassifiziertem Inhalt?</summary>

Ein aus einem klassifizierten Dokument erzeugtes Ergebnis kann automatisch dieselbe oder eine abgeleitete Klassifizierung erhalten, abhängig von der Tenant-Konfiguration. _Quelle: Microsoft Learn Label-Vererbung, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>4. Was passiert mit nie klassifizierten Altbeständen?</summary>

Sie bleiben ungeschützt, bis sie manuell oder per automatisierter Klassifizierungsregel nachträglich gelabelt werden — ein häufiger Rückstand in gewachsenen Tenants. _Quelle: Microsoft Learn Auto-Labeling-Dokumentation, Stand: prüfpflichtig vor Kursbeginn._

</details>

**Grenze:** Automatisierte Klassifizierungsregeln (Auto-Labeling) im Detail → Parkplatz bzw. internes Compliance-Team.

- Ein Sensitivity Label ist mehr als eine Markierung — es kann aktiv Schutzmaßnahmen wie Verschlüsselung erzwingen.
- Nie klassifizierte Altbestände bleiben ungeschützt, unabhängig davon, wie gut neue Dokumente gelabelt werden.

## Was ein Label technisch bewirkt

| Wirkung              | Beispiel                                                      |
| -------------------- | ------------------------------------------------------------- |
| Metadaten            | sichtbare Kennzeichnung "Vertraulich", "Intern", "Öffentlich" |
| Verschlüsselung      | nur berechtigte Personen können den Inhalt öffnen             |
| Zugriffsbeschränkung | Freigabe außerhalb der Organisation kann blockiert werden     |

## Wirkung auf Copilot-Grounding

Ein restriktives Label wirkt wie eine zusätzliche Berechtigungsschicht: selbst wenn eine Person technisch Zugriff hat, kann ein Label zusätzliche Einschränkungen für die Weiterverarbeitung durch Copilot mit sich bringen.

> **Merksatz:** Ein Label schützt nicht nur das Originaldokument, sondern wirkt potenziell auf jedes daraus abgeleitete Copilot-Ergebnis weiter.

## Grenzen

- Ob und wie sich ein Label auf ein generiertes Ergebnis vererbt, hängt von der jeweiligen Tenant-Konfiguration ab.
- Automatisierte Klassifizierungsregeln für Altbestände sind ein eigenes, hier nicht vertieftes Thema.

## Fazit

- Sensitivity Labels sind mehr als Metadaten, sie können aktiv Schutzmaßnahmen durchsetzen.
- Copilot berücksichtigt Labels beim Grounding und bei der Ausgabe.
- Nie klassifizierte Altbestände sind ein häufiger blinder Fleck in der Datenklassifizierung.

Die Übung legt ein Sensitivity Label für einen Nordwind-Datensatz an und testet seine Wirkung.
