# Lab 9.2 – Lösung: Read-only MCP-Server anbinden

**Ändert die Nordwind-Projektbasis?** Ja — der Nordwind IT-Helfer erhält eine zusätzliche read-only Tool-Quelle.

## Ausgangslage

MCP soll externe Dokumentation kontrolliert nutzbar machen, ohne die Nordwind-Wissensquellen zu ersetzen.

## Zielartefakt

Das MCP-Testprotokoll ist vollständig, wenn Serverdaten, Testfragen, beobachtete Nutzung und Governance-Notiz enthalten sind.

## Voraussetzungen und Starterdateien

- Baseline-Server: Microsoft Learn MCP Server, falls im Tenant erlaubt.
- Endpoint laut Learn: `https://learn.microsoft.com/api/mcp`.
- Alternative: vom Kurs freigegebener Dokumentations-MCP-Server.

## Aufgaben

### 1. MCP-Server prüfen

| Feld | Modellantwort |
| --- | --- |
| Betreiber | Microsoft Learn oder freigegebener Kursbetreiber |
| Zweck | offizielle Dokumentationsinhalte als Kontext bereitstellen |
| Transport | Streamable HTTP |
| Authentifizierung | bei Microsoft Learn MCP laut Learn nicht erforderlich |
| Zugriff | read-only für Dokumentationsrecherche |
| Vor-Kurs-Prüfung | direkte Nutzung im Kunden-Tenant und GitHub-Copilot-Harness prüfen |

### 2. MCP-Server anbinden

Der MCP-Server wird im Tools-Bereich als Model-Context-Protocol-Tool ergänzt. Der exakte Klickpfad ist tenantabhängig und bleibt vor Kurs im Tenant zu prüfen.

### 3. Verbindung oder Authentifizierung einrichten

Für Microsoft Learn MCP ist keine Authentifizierung vorgesehen. Bei anderen Servern sind `None`, API-Key oder OAuth 2.0 mögliche Konfigurationsarten, abhängig vom freigegebenen Server.

### 4. Tools/Resources ansehen

Die MCP-Detailansicht sollte Tool- und Resource-Informationen zeigen. Eine geeignete Beschreibung begrenzt den Einsatz auf Microsoft-Dokumentationsfragen.

**Beispielbeschreibung:** `Nutze diesen MCP-Server nur, wenn eine Frage nach offizieller Microsoft-Learn-Dokumentation, Produktverhalten oder aktueller Learn-Referenz fragt. Nicht für Nordwind-IT-Richtlinie, Onboarding oder Support-Tickets nutzen.`

### 5. MCP-gestützte Frage stellen

**Testfrage:** „Welche MCP-Transportart unterstützt Copilot Studio laut Microsoft Learn?“

**Erwartetes Ergebnis:** Antwort verweist auf Streamable HTTP und vermeidet erfundene Alternativen.

### 6. Tool- oder MCP-Quelle notieren

| Beobachtung | Modellnotiz |
| --- | --- |
| Gelaufene Quelle | freigegebener MCP-Server |
| Zweck | Dokumentationsfakt prüfen |
| Ergebnis | Streamable HTTP genannt |
| Nebenwirkung | keine Schreibaktion |

### 7. Nordwind-Standardfrage prüfen

**Gegenfrage:** „Welche Standard-Software ist am ersten Arbeitstag verfügbar?“

**Erwartetes Verhalten:** Antwort aus `nordwind-onboarding-leitfaden.md`, kein MCP-Aufruf. Bei MCP-Fehltriggern Beschreibung enger formulieren.

## Checkpoint

- Server, Betreiber und Zweck sind sichtbar dokumentiert.
- Der Kursserver bleibt read-only.
- MCP-gestützte und MCP-freie Fälle sind getrennt.

## Abschlusskriterien

- Eine passende Frage wurde mit MCP-Unterstützung beantwortet.
- Das Protokoll begründet, warum MCP für Nordwind-Standardfragen nicht nötig ist.

## Erweiterung

Eine mögliche zweite Frage lautet: „Welche Kriterien nennt Microsoft Learn für Agent Flows als Tools?“ Die Antwort sollte nur bei dokumentationsnahen Fragen MCP nutzen.

## Fallback

Ohne Live-MCP bleibt die Lösung ein statisches Integrationsprotokoll. Der echte MCP-Aufruf und die Tool-Liste müssen vor Kurs im Tenant validiert werden.
