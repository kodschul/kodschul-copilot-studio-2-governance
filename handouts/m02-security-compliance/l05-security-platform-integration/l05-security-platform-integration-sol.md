# Lab 2.5 – Lösung: Plattform-Integration

## Aufgaben

### 1.–3. Beispiel Nordwind-Plattform

| Produkt      | Genutzt? | Signal für Security Copilot                    |
| ------------ | -------- | ---------------------------------------------- |
| Entra ID     | ja       | Identität, Anmelderisiko                       |
| Purview      | ja       | Klassifizierung, DLP-Verstöße (Lab 2.2/2.3)  |
| Intune       | ja       | Gerätestatus (Lab 3.1)                        |
| Defender XDR | nein     | fehlende Bedrohungssignale                     |
| Sentinel     | nein     | fehlende unternehmensweite Ereigniskorrelation |

Ohne Defender XDR fehlt Nordwind eine dedizierte Bedrohungserkennung über Endpunkte/E-Mail hinweg.

### 4. Nutzungsart

Für Nordwind (kleines Team, keine dedizierten SOC-Analyst:innen) wäre eingebettete Nutzung direkt in den vorhandenen Produkten (Entra ID, Purview, Intune) praktikabler als eine eigenständige Security-Copilot-Oberfläche.

## Checkpoint

- Die fehlenden Produkte (Defender XDR, Sentinel) sind korrekt als Lücke benannt.
- Die Nutzungsart-Empfehlung ist konkret auf die Nordwind-Situation bezogen.
