# Lab 2.3 – Übung: Data Loss Prevention

**Ändert die Nordwind-Projektbasis?** Ja — Tenant-Setting im Sandbox-Admin-Center.

## Ausgangslage

Sandbox-Zugriff auf Purview DLP liegt vor. Das Sensitivity Label aus Lab 2.2 ist bereits auf die Gehaltsübersicht angewendet (`nordwind-gehaltsuebersicht-2026.md`/`.xlsx` in `handouts/project/`).

## Aufgaben

1. Eine DLP-Regel im Audit-Modus anlegen, die den Versand von mit "Vertraulich – Nordwind Intern" gelabelten Inhalten per E-Mail protokolliert.
2. Einen Testversand auslösen und prüfen, ob die Regel im Audit-Protokoll erscheint.
3. Das Audit-Protokoll auswerten: wie oft hätte die Regel ausgelöst, gäbe es echten Mitarbeitendenverkehr?
4. Die Regel probeweise auf blockierenden Modus umstellen und einen zweiten Testversand durchführen.
5. Dokumentieren, was die/der Mitarbeitende beim blockierten Testversand konkret zu sehen bekommt.

## Checkpoint

- Der Testversand aus Aufgabe 2 erscheint tatsächlich im Audit-Protokoll.
- Der Wechsel von Audit- zu blockierendem Modus wurde tatsächlich getestet, nicht nur angenommen.
- Die Beschreibung in Aufgabe 5 nennt die konkrete Benutzeransicht (Warnung/Blockierung).

## Abschlusskriterien

- Eine getestete DLP-Regel mit dokumentiertem Audit- und Blockier-Ergebnis liegt vor.

## Erweiterung

Prüfen, ob dieselbe Regel auch bei einem Copy-Paste-Versuch (statt E-Mail-Versand) auslöst.

## Fallback

Ohne Sandbox-Zugriff: den Rollout-Ablauf (Audit → Auswertung → Blockierend) anhand offizieller Microsoft-Dokumentation konzeptionell durchgehen.
