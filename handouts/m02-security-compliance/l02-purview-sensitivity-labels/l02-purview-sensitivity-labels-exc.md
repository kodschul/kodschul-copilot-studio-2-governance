# Lab 2.2 – Übung: Sensitivity Labels

**Ändert die Nordwind-Projektbasis?** Ja — Tenant-Setting im Sandbox-Admin-Center.

## Ausgangslage

Sandbox-Zugriff auf Purview Sensitivity Labels für den Nordwind-Tenant liegt vor. Der Oversharing-Befund aus Lab 1.2 (Gehaltsübersicht mit breiter Freigabe) ist verfügbar: `nordwind-berechtigungsexport.md` (Befund) und `nordwind-gehaltsuebersicht-2026.md`/`.xlsx` (das Dokument selbst) in `handouts/project/`.

## Aufgaben

1. Ein Sensitivity Label "Vertraulich – Nordwind Intern" mit Verschlüsselung anlegen.
2. Das Label auf die Gehaltsübersicht aus dem Oversharing-Befund (Lab 1.2) anwenden.
3. Testen, ob eine Person außerhalb der HR-Gruppe nach dem Labeling noch Zugriff auf das Dokument hat.
4. Prüfen, ob ein aus diesem Dokument erzeugtes Copilot-Ergebnis (z. B. eine Zusammenfassung) ebenfalls eine Einschränkung erhält.
5. Dokumentieren, ob im Nordwind-Tenant Altbestände ohne Label existieren, die ebenfalls klassifiziert werden sollten.

## Checkpoint

- Das Label wurde tatsächlich auf das Dokument angewendet, nicht nur angelegt.
- Der Zugriffstest in Aufgabe 3 zeigt eine tatsächliche Einschränkung für nicht-HR-Personen.
- Mindestens ein Altbestand ohne Label ist in Aufgabe 5 konkret benannt.

## Abschlusskriterien

- Ein angewendetes, getestetes Sensitivity Label für den Nordwind-Datensatz liegt vor.

## Erweiterung

Das Label testweise auf ein zweites, weniger sensibles Dokument anwenden und prüfen, ob eine geringere Schutzstufe ausreichend wäre.

## Fallback

Ohne Sandbox-Zugriff: die Wirkung eines Sensitivity Labels anhand einer offiziellen Microsoft-Dokumentation und Screenshots konzeptionell nachvollziehen.
