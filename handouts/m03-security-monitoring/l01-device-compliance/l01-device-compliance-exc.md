# Lab 3.1 – Übung: Gerätekonformität

**Ändert die Nordwind-Projektbasis?** Ja — Tenant-Setting im Sandbox-Admin-Center.

## Ausgangslage

Sandbox-Zugriff auf Intune (Gerätekonformität) für den Nordwind-Tenant liegt vor. Die Conditional-Access-Richtlinie aus Lab 2.1 ist bereits konfiguriert.

## Aufgaben

1. Eine Intune-Konformitätsrichtlinie mit mindestens zwei Kriterien (z. B. Verschlüsselung, Betriebssystemstand) für Nordwind anlegen.
2. Ein Testgerät gegen diese Richtlinie prüfen und das Ergebnis (konform/nicht konform) dokumentieren.
3. Prüfen, ob die Conditional-Access-Richtlinie aus Lab 2.1 das Intune-Ergebnis korrekt als Signal übernimmt.
4. Ein zweites Testgerät bewusst nicht konform gestalten (z. B. veraltetes Betriebssystem simulieren) und den Effekt auf den Zugriff beobachten.
5. Dokumentieren, welche der beiden Richtlinien (Intune-Konformität, Conditional Access) zuerst greift.

## Checkpoint

- Beide Testgeräte wurden tatsächlich gegen die Richtlinie geprüft, nicht nur angenommen.
- Das nicht konforme Testgerät wurde vom Zugriff blockiert oder eingeschränkt, konsistent mit Lab 2.1.
- Die Reihenfolge in Aufgabe 5 ist nachvollziehbar begründet.

## Abschlusskriterien

- Eine funktionierende Konformitätsrichtlinie mit dokumentiertem Zusammenspiel zur Conditional-Access-Richtlinie liegt vor.

## Erweiterung

Prüfen, was passiert, wenn ein Gerät konform ist, sich aber die Konformität während einer aktiven Sitzung ändert (z. B. Verschlüsselung wird deaktiviert).

## Fallback

Ohne Sandbox-Zugriff: die Konfiguration anhand von Screenshots aus offiziellen Microsoft-Quellen konzeptionell nachvollziehen.
