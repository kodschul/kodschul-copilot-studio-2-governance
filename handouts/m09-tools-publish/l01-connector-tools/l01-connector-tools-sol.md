# Lab 9.1 – Lösung: Lesenden Connector als Tool hinzufügen

**Ändert die Nordwind-Projektbasis?** Ja — der Nordwind IT-Helfer erhält ein erstes lesendes Tool.

## Ausgangslage

Der Agent soll Geräteinformationen lesen, ohne Daten zu verändern.

## Zielartefakt

Ein vollständiger Tool-Test enthält Tool-Name, Beschreibung, Verbindung, Testfragen, beobachtete Tool-Nutzung und Risikoeinstufung.

## Voraussetzungen und Starterdateien

- Verwendete Liste: `IT-Geräte`.
- Starterinhalt: `../../project/nordwind-it-geraete.md`.
- Verwendete Aktion: SharePoint `Get items` oder gleichwertige read-only-Aktion.

## Aufgaben

### 1. Freigegebenes Zielsystem prüfen

| Feld | Modellantwort |
| --- | --- |
| Zielsystem | SharePoint-Liste `IT-Geräte` |
| Aktion | `Get items` |
| Zugriff | read-only |
| Risiko | Listeninhalt wird gelesen, aber nicht verändert |
| Tenant-Prüfung | DLP, Site-Zugriff und Verbindung vor Kurs prüfen |

### 2. Neues Tool hinzufügen

Das Tool wird über den Tools-Bereich des Agenten ergänzt. Der konkrete Klickpfad bleibt tenantabhängig und ist vor Kurs im Tenant zu prüfen.

### 3. Tool benennen und beschreiben

| Feld | Beispiel |
| --- | --- |
| Name | `it-geraete-lesen` |
| Beschreibung | `Liest freigegebene Gerätetypen, Status und Hinweise aus der SharePoint-Liste IT-Geräte. Nur nutzen, wenn die Anfrage konkrete Nordwind-Geräte, Verfügbarkeit oder Standardrollen betrifft. Nicht für VPN, Passwort, Onboarding-Ablauf oder Eskalationen nutzen.` |

### 4. Verbindung herstellen

Die Verbindung nutzt einen freigegebenen Kursaccount oder eine genehmigte Kursverbindung. Schreibende Aktionen wie `Create item`, `Update item`, `Delete item` oder Freigabeaktionen bleiben ausgeschlossen.

### 5. Gerätefrage stellen

**Testfrage:** „Welche Laptop-Option ist für technische Projektrollen vorgesehen?“

**Erwartetes Ergebnis:** Der Agent nutzt `it-geraete-lesen` und nennt `NW-LAP-Engineering` mit Hinweis auf zusätzliche Entwicklungswerkzeuge nach Freigabe.

### 6. Tool-Lauf dokumentieren

| Beobachtung | Modellnotiz |
| --- | --- |
| Gelaufenes Tool | `it-geraete-lesen` |
| Quelle | SharePoint-Liste `IT-Geräte` |
| Antwortdaten | Gerätetyp Laptop, Standardrolle technische Projektrollen, Status verfügbar |
| Risiko | lesender Zugriff, keine Datenänderung |

### 7. Gegenfrage ohne Connector prüfen

**Gegenfrage:** „Welches VPN nutzt Nordwind?“

**Erwartetes Verhalten:** Antwort aus `nordwind-it-richtlinie.md`, kein Connector-Aufruf. Falls der Connector trotzdem auslöst, muss die Tool-Beschreibung enger formuliert werden.

## Checkpoint

- Das Tool bleibt read-only.
- Die Beschreibung enthält Zweck, Quelle und Nicht-Einsatzfälle.
- Ein positiver Tool-Aufruf und ein vermiedener Tool-Aufruf sind dokumentiert.

## Abschlusskriterien

- Gerätefragen können mit Listeninhalt beantwortet werden.
- Der Testnachweis ist ausreichend für eine spätere Governance-Prüfung.

## Erweiterung

Eine mögliche Nachschärfung lautet: `Nur nutzen, wenn in der Anfrage Gerät, Laptop, Smartphone, Headset, Monitor, Verfügbarkeit oder Geräteliste vorkommt.`

## Fallback

Ohne Live-Connector bleibt die Lösung ein statisch geprüfter Tool-Steckbrief. Die echte Verbindung und der Preview-Nachweis müssen vor Kurs im Tenant nachgeholt werden.
