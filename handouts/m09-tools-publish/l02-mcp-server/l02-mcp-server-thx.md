# Lab 9.2: MCP-Server anbinden

MCP stellt dem Agenten externe Tools und Resources über ein einheitliches Protokoll bereit. Dieses Lab bindet einen geprüften read-only MCP-Server an und prüft den Tool-Aufruf.

**Leitfragen:**

<details><summary>Was kann MCP, was ein Konnektor nicht kann?</summary>
MCP kann mehrere serverseitig veröffentlichte Tools und Resources über eine Protokollschnittstelle bereitstellen. Ein Connector bindet meist einen konkreten Dienst oder API-Katalog an.</details>

<details><summary>Warum ist ein MCP-Server eine zusätzliche Zugriffsfläche?</summary>
Der Betreiber, die veröffentlichten Tools, Resources und Authentifizierung bestimmen, welche Daten und Aktionen erreichbar sind.</details>

<details><summary>Warum bleibt der Server im Kurs read-only?</summary>
Read-only begrenzt Nebenwirkungen und macht das erste MCP-Lab auf Recherche und Nachvollziehbarkeit fokussiert.</details>

## Kernbegriffe

| Begriff | Bedeutung |
| --- | --- |
| Model Context Protocol (MCP) | Standard, über den Clients Tools, Resources und Prompts eines Servers nutzen |
| MCP-Server | Dienst, der Tools und Resources veröffentlicht |
| Tool | aufrufbare Funktion des Servers |
| Resource | lesbarer Kontext, zum Beispiel API-Antwort oder Dateiinhalte |
| Streamable HTTP | von Copilot Studio unterstützter MCP-Transport laut Learn |
| Microsoft Learn MCP Server | öffentlicher read-only Remote-MCP-Server für Microsoft-Learn-Inhalte |

## Konnektor und MCP im Vergleich

| Kriterium | Connector | MCP |
| --- | --- | --- |
| Ursprung | Power-Platform-Connector-Katalog oder Custom Connector | MCP-Server mit veröffentlichten Tools/Resources |
| Governance-Fokus | Verbindung, Connector-Klasse, DLP, Aktion | Betreiber, Transport, Authentifizierung, Tool-/Resource-Liste |
| Kursnutzen | Microsoft-365-Daten lesen | Dokumentationswissen oder Tool-Katalog anbinden |
| Risiko | Lese-/Schreibaktion im Zielsystem | zusätzlicher Server und dynamischer Tool-Umfang |

## Microsoft Learn MCP Server

| Fakt | Verifizierter Stand |
| --- | --- |
| Endpoint | `https://learn.microsoft.com/api/mcp` |
| Transport | Streamable HTTP |
| Authentifizierung | keine erforderlich |
| Inhalt | öffentlich verfügbare Microsoft-Dokumentation, keine Trainings- oder Profilinformationen |
| Nutzungskosten | laut Learn keine Gebühr für den MCP-Server |

> **Merksatz:** MCP ist kein Freifahrtschein für externe Fähigkeiten; jedes Server-Tool braucht denselben Review wie ein Connector.

## Ausblick: Connected Agents

Connected Agents sind Delegation an eigenständige Spezialisten-Agenten. Im Kurs bleibt dies ein Ausblick ohne Übung, weil Lab 9.2 gezielt MCP isoliert.

## Quellen

- Quelle: Microsoft Learn, **Extend your agent with Model Context Protocol**, abgerufen am 07.10.2026.
- Quelle: Microsoft Learn, **Connect your agent to an existing Model Context Protocol (MCP) server**, abgerufen am 07.10.2026.
- Quelle: Microsoft Learn, **Microsoft Learn MCP Server overview**, abgerufen am 07.10.2026.

## Beispiel: MCP-Routing mit typischer Ausgabe

Die Ausgaben zeigen ein typisches Muster; Wortlaut und Trace-Darstellung variieren zwischen Läufen und Tenants.

### Frage mit MCP-Bedarf

```text
User: Welche Transportart unterstützt Copilot Studio für MCP-Server laut Microsoft Learn?
```

```text
Trace: Microsoft Learn MCP Server aufgerufen
Ergebniszusammenfassung: Dokumentation zu MCP-Anbindung gefunden;
unterstützter Transport: Streamable HTTP.
Antwort: Copilot Studio unterstützt für MCP-Server Streamable HTTP.
Der konkrete Endpoint und die Tenant-Freigabe müssen vor Kurs geprüft werden.
```

Passt, weil die Frage nach einem Microsoft-Learn-Fakt fragt und keine Nordwind-Quelle ausreicht.

### Nordwind-Frage ohne MCP

```text
User: Welche Standard-Software ist am ersten Arbeitstag verfügbar?
```

```text
Trace: kein MCP-Aufruf
Quelle: nordwind-onboarding-leitfaden.md
Antwort: Microsoft 365 Apps inklusive Copilot, Cisco Secure Client,
Microsoft Teams und Antivirus/Endpoint-Schutz sind im Standard-Image enthalten.
```

Passt, weil die Nordwind-Wissensquelle die Frage direkt beantwortet und MCP unnötig wäre.

## Fazit

- MCP bindet Tools und Resources eines Servers an den Agenten an.
- Read-only-MCP eignet sich als erster, kontrollierter Integrationsschritt.
- Betreiber, Tool-Liste, Authentifizierung und Tenant-Richtlinie sind vor Einsatz zu prüfen.

Die Übung ergänzt einen freigegebenen MCP-Server und prüft den beobachtbaren Tool-Aufruf.
