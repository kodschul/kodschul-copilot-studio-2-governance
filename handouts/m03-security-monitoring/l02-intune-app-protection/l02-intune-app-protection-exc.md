# Lab 3.2 – Übung: App Protection Policies

**Ändert die Nordwind-Projektbasis?** Ja — Tenant-Setting im Sandbox-Admin-Center.

## Ausgangslage

Sandbox-Zugriff auf Intune App Protection Policies liegt vor. Einige Nordwind-Mitarbeitende nutzen private, nicht verwaltete Mobilgeräte für Outlook/Teams.

## Aufgaben

1. Eine App Protection Policy für die Outlook-App konfigurieren, die Kopieren in nicht verwaltete Apps sperrt.
2. Testen, ob ein Kopierversuch aus der geschützten Outlook-App in eine nicht verwaltete Notiz-App tatsächlich blockiert wird.
3. Prüfen, ob dieselbe Policy auch eine Speichersperre außerhalb der App enthält, und diese testen.
4. Einen simulierten Austrittsfall durchspielen: Selective Wipe auf einem Testgerät auslösen und prüfen, ob private Daten unberührt bleiben.
5. Dokumentieren, für welche Nordwind-Mitarbeitenden (verwaltetes vs. privates Gerät) diese Policy überhaupt relevant ist.

## Checkpoint

- Der Kopiersperren-Test in Aufgabe 2 zeigt tatsächlich eine Blockierung.
- Der Selective-Wipe-Test in Aufgabe 4 hat private Testdaten nachweislich unberührt gelassen.
- Die Zielgruppe in Aufgabe 5 ist konkret benannt, nicht pauschal "alle Mitarbeitenden".

## Abschlusskriterien

- Eine getestete App Protection Policy mit dokumentiertem Selective-Wipe-Test liegt vor.

## Erweiterung

Prüfen, ob dieselbe Policy auch für die Teams-App sinnvoll wäre, und die Unterschiede zur Outlook-Konfiguration benennen.

## Fallback

Ohne Sandbox-Zugriff: die Wirkung der Policy anhand offizieller Microsoft-Dokumentation und Screenshots konzeptionell nachvollziehen.
