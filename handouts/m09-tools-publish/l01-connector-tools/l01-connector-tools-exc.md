# Lab 9.1 – Übung: Lesenden Connector als Tool hinzufügen

**Ändert die Nordwind-Projektbasis?** Ja — der Nordwind IT-Helfer erhält ein erstes lesendes Tool.

## Ausgangslage

Der Agent enthält Instructions, die beiden Wissensquellen und zwei bis drei Skills. Geräteinformationen liegen zusätzlich in einer freigegebenen SharePoint-Liste `IT-Geräte`.

## Zielartefakt

Ein dokumentierter Tool-Test mit Tool-Name, Tool-Beschreibung, Testfrage, beobachtetem Tool-Aufruf und Ergebnis.

## Voraussetzungen und Starterdateien

- Copilot-Studio-Zugang im Kurs-Tenant.
- Vorab freigegebener read-only Microsoft-365-Connector, bevorzugt SharePoint `Get items`.
- SharePoint-Liste `IT-Geräte` mit Beispielinhalt aus `../../project/nordwind-it-geraete.md`.
- Alternative bei fehlender Liste: Office-365-Users-Lesewerkzeug oder Trainer-Demo.

## Aufgaben

1. Freigegebenes Zielsystem prüfen: Liste `IT-Geräte`, erlaubte Aktion und read-only-Charakter notieren.
2. In Copilot Studio beim Nordwind IT-Helfer ein neues Tool auf Basis des freigegebenen Connectors hinzufügen. Klickpfad vor Kurs im Tenant prüfen.
3. Tool so benennen und beschreiben, dass es nur Geräteverfügbarkeit oder Geräteeigenschaften aus der Liste liest.
4. Verbindung herstellen und keine schreibende Aktion auswählen.
5. In Preview eine Gerätefrage stellen, die die Liste braucht.
6. Beobachten und notieren, welches Tool gelaufen ist und welche Antwortdaten aus der Liste stammen.
7. Gegenfrage stellen, die direkt aus IT-Richtlinie oder Onboarding-Leitfaden beantwortbar ist, und prüfen, ob kein unnötiger Connector-Aufruf passiert.

## Checkpoint

- Das Tool ist read-only und nutzt keine Aktion zum Erstellen, Ändern, Teilen oder Löschen.
- Die Tool-Beschreibung nennt Zweck, Datenquelle und Nicht-Einsatzfälle.
- Preview zeigt mindestens einen passenden und einen vermiedenen Tool-Aufruf.

## Abschlusskriterien

- Der Agent kann eine Gerätefrage mit Listeninhalt beantworten.
- Der Testnachweis enthält Tool-Name, Testfrage, Tool-Aufruf, Ergebnis und Risiko-Notiz.

## Erweiterung

Tool-Beschreibung nachschärfen, falls der Connector bei einer allgemeinen VPN- oder Onboarding-Frage auslöst.

## Fallback

Ohne freigegebenen Connector: Trainer-Demo verfolgen und den Tool-Steckbrief ausfüllen. Einschränkung: kein eigener Laufzeitnachweis im Preview.
