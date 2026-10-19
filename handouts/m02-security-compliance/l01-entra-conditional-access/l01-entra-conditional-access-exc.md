# Lab 2.1 – Übung: Entra ID & Conditional Access

**Ändert die Nordwind-Projektbasis?** Ja — Tenant-Setting im Sandbox-Admin-Center.

## Ausgangslage

Sandbox-Zugriff auf Entra ID (Conditional Access, MFA) für den Nordwind-Tenant liegt vor.

## Aufgaben

1. Eine Conditional-Access-Richtlinie anlegen, die Copilot-Zugriff nur für konforme Geräte erlaubt.
2. MFA für eine Testgruppe aktivieren und prüfen, dass Zugriff ohne zweiten Faktor blockiert wird.
3. Ein Testgerät als "nicht konform" simulieren und beobachten, wie die Richtlinie reagiert (blockiert oder eingeschränkt).
4. Die vier Signale aus der Theorie (Benutzer/Gruppe, Standort, Gerätestatus, Risiko) in der eigenen Richtlinie den konfigurierten Bedingungen zuordnen.
5. Dokumentieren, welche Reaktion (blockiert/eingeschränkt) bei Nordwind für nicht konforme Geräte gewählt wurde und warum.

## Checkpoint

- Die Richtlinie greift tatsächlich bei einem nicht konformen Testgerät.
- Alle vier Signale aus der Theorie sind der eigenen Konfiguration zugeordnet.
- Die Begründung in Aufgabe 5 ist konkret, nicht nur "aus Sicherheitsgründen".

## Abschlusskriterien

- Eine funktionierende, dokumentierte Conditional-Access-Richtlinie für Nordwind liegt vor.

## Erweiterung

Prüfen, was passiert, wenn ein Gerät zwar konform ist, sich aber von einem ungewöhnlichen Standort anmeldet.

## Fallback

Ohne Sandbox-Zugriff: die Richtlinienkonfiguration anhand von Screenshots aus offiziellen Microsoft-Quellen konzeptionell nachvollziehen.
