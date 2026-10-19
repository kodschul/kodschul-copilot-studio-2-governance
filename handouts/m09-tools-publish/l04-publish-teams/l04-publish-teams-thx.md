# Lab 9.4: In Teams veröffentlichen

Veröffentlichen macht den Agenten in verbundenen Kanälen nutzbar. Dieses Lab fokussiert Teams und Microsoft 365 Copilot sowie Freigabe- und Oversharing-Risiken.

**Leitfragen:**

<details><summary>Warum reicht Speichern nicht aus?</summary>
Nutzende erreichen die neue Agentenversion erst nach dem Veröffentlichen und einer neuen Session im jeweiligen Kanal.</details>

<details><summary>Wer sieht den Agenten nach der Teams-Freigabe?</summary>
Das hängt von Agent-Freigabe, Teams-Verfügbarkeit und Admin-Freigabe ab. Ein Link allein reicht nur für Personen mit Zugriff.</details>

<details><summary>Warum ist Oversharing ein Publish-Risiko?</summary>
Ein veröffentlichter Agent kann Wissen, Tools oder Aktionen einer größeren Zielgruppe anbieten als ursprünglich gedacht.</details>

## Kernbegriffe

| Begriff | Bedeutung |
| --- | --- |
| Publish | aktuelle Agentenversion für verbundene Kanäle bereitstellen |
| Channel | Zieloberfläche wie Teams oder Microsoft 365 Copilot |
| Share | Zugriff auf Agenten für Personen oder Gruppen erlauben |
| Admin approval | Freigabe für organisationsweite Anzeige in Teams oder Microsoft 365 Agent Store |
| Session | Unterhaltungskontext; neue Inhalte erscheinen oft erst in neuer Session |
| Monitor | Auswertung veröffentlichter Nutzung nach realen Sessions |

## Publish- und Freigabelogik

| Frage | Verifizierter Rahmen |
| --- | --- |
| Muss vorher veröffentlicht werden? | Ja, ein Agent muss vor Kanalnutzung veröffentlicht sein. |
| Gilt Publish für Kanäle? | Publishing aktualisiert verbundene Kanäle. |
| Können andere per Link installieren? | Ja, aber nur mit Agent-Zugriff. |
| Organisationsweite Anzeige? | Admin-Freigabe ist erforderlich. |
| Microsoft 365 Copilot zusätzlich zu Teams? | Kanaloption in den Teams/Microsoft-Copilot-Einstellungen; konkrete Tenant-Verfügbarkeit prüfen. |

## Oversharing-Prüfung

| Prüffeld | Risiko |
| --- | --- |
| Wissensquellen | größere Zielgruppe liest Antworten aus internen Dokumenten |
| Connectoren | Nutzer sehen Daten, die über Verbindung erreichbar sind |
| MCP | externer Dokumentations- oder Tool-Zugriff wird breiter verfügbar |
| Workflow | Veröffentlichung ermöglicht echte Folgeaktionen |
| Sharing | Link oder Store-Sichtbarkeit passt nicht zur Zielgruppe |

> **Merksatz:** Publish ist kein Abschlussklick, sondern eine Freigabeentscheidung.

## Quellen

- Quelle: Microsoft Learn, **Key concepts - Publish and deploy your agent**, abgerufen am 07.10.2026.
- Quelle: Microsoft Learn, **Connect and configure an agent for Teams and Microsoft Copilot**, abgerufen am 07.10.2026.

## Vor Kurs im Tenant prüfen

- Die Learn-Seiten beschreiben Standard-Harness-Funktionen; GitHub-Copilot-Harness-Publish im Kunden-Tenant prüfen.
- Teams-App-Store, Microsoft 365 Copilot, Admin-Freigabe und Power-Platform-Apps in Teams hängen von Richtlinien ab.

## Beispiel: Teams-Test mit typischer Ausgabe

Die Ausgaben zeigen ein typisches Muster; Wortlaut und Teams-Darstellung variieren zwischen Läufen und Tenants.

### Teams-Unterhaltung nach Publish

```text
User: Welche Schritte gelten am ersten Arbeitstag?
```

```text
Nordwind IT-Helfer:
- Erstanmeldung am Firmengerät, Passwort ändern und MFA einrichten.
- Cisco Secure Client und Microsoft 365 Apps sind vorinstalliert.
- Begrüßung erfolgt durch Buddy/Patin.
- Zugriff auf Team-SharePoint und Projektablage wird durch IT geprüft.
```

Passt, weil die Antwort aus dem Onboarding-Leitfaden stammt und kein Connector, MCP oder Workflow nötig ist.

### Freigabe- und Sichtbarkeitsnotiz

```text
Publish-Stand: nach Evaluate-Lauf 2 veröffentlicht
Kanal: Teams und Microsoft 365 Copilot
Sichtbarkeit: Testperson oder Kursgruppe
Hinweis: Link, App-Store-Anzeige und organisationsweite Freigabe
hängen von Tenant-Richtlinien und Admin-Review ab.
```

Passt, weil Freigabe nicht mit Organisations-Rollout gleichgesetzt wird.

## Fazit

- Publish bringt die aktuelle Version in die verbundenen Kanäle.
- Sharing, Link und organisationsweite Anzeige sind unterschiedliche Freigaben.
- Monitor-Daten aus echter Nutzung entstehen erst nach Veröffentlichung und Nutzung.

Die Übung veröffentlicht den Agenten kontrolliert, öffnet ihn in Teams und dokumentiert die Freigabe.
