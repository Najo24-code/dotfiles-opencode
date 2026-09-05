---
description: Deploy asistido con verificación de estado
agent: devops
---

Antes de hacer deploy, verifica:

1. Estado actual del server/servicio
2. Que no haya cambios sin commitear
3. Que los tests pasen
4. Que el compose/config esté válido
5. Que haya rollback plan

Si todo está OK, procede con el deploy. Si hay problemas, detente y comunica.
