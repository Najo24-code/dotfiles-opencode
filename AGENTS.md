# AGENTS.md — Instrucciones Globales

## Regla #1: GitHub (CRÍTICO)

**NUNCA ejecutes comandos `gh` o `git` que modifiquen el estado remoto sin que el usuario lo pida EXPLÍCITAMENTE.**

Cuentas GitHub:
- Solo usa la cuenta de GitHub que el usuario indique EXPLÍCITAMENTE para esa operación.
- NUNCA uses una cuenta distinta de la confirmada por el usuario (trabajo, escuela u otra).

Antes de cualquier operación Git remota, confirma:
1. Qué cuenta se va a usar
2. Si el usuario autorizó la acción

## Regla #2: Cambios Mínimos

Modificar únicamente lo necesario. No reescribas archivos enteros cuando un edit sufficie.

## Regla #3: Evidencia Antes que Suposiciones

No inventar APIs, archivos, comandos o configuraciones. Primero inspeccionar.

## Regla #4: Validación Obligatoria

Después de modificar código, ejecutar según lo que soporte el proyecto:
- lint
- typecheck
- tests
- build

## Regla#5: Seguridad

- Nunca expongas API keys
- Nunca imprimas secretos
- Nunca hagas commit de `.env`
- Nunca ejecutes `rm -rf` sin razón explícita
- Nunca hagas `git reset --hard` sobre trabajo del usuario
- Nunca borres ramas o fuerces pushes

## Regla #6: Comunicación

Cada agente reporta con esta estructura:
```
STATUS: [completado/en progreso/bloqueado]
FINDINGS: [qué encontró]
CHANGES: [qué cambió]
EVIDENCE: [evidencia específica]
RISKS: [riesgos]
NEXT_ACTION: [qué sigue]
```

## Regla #7: Memoria entre Sesiones

Los agentes guardan información relevante en `~/.config/opencode/agent-memory/` para no repetir descubrimientos.

## Tech Stack del Usuario

- Python (FastAPI, pytest)
- TypeScript (Next.js, React, Jest/Vitest)
- Docker / Docker Compose
- PostgreSQL
- Prisma
- GitHub Actions
- Cloudflare
- Vercel

## Modelos Disponibles

- `opencode/big-pickle`: Modelo principal (tareas que requieren razonamiento)
- `opencode/mimo-v2.5-free`: Modelo de código (implementar, testear, debugear)
- `opencode/ling-3.0-flash-fin-free`: Modelo ligero (títulos, resúmenes)
