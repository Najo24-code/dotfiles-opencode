---
description: Revisión rápida de código del último cambio
agent: reviewer
---

Revisa el último cambio en este proyecto usando `git diff` (o `git diff --staged` si hay cosas staged). 

Busca:
1. Bugs reales con escenario de fallo concreto
2. Contratos rotos
3. Duplicación
4. Problemas de seguridad

Formato: Solo hallazgos con severidad, archivo:línea, y fix sugerido. Si no hay nada, di "Aprobado sin hallazgos".
