---
name: git-workflow
description: Flujo de trabajo Git seguro con manejo de múltiples cuentas GitHub
---

## Reglas Git para TODOS los agentes

### Cuentas GitHub

| Cuenta | Uso | Permiso |
|---|---|---|
| (la que el usuario indique) | Personal / trabajo / escuela | Solo la cuenta que el usuario confirme explícitamente |

### Flujo obligatorio antes de cualquier operación Git remota

1. ¿El usuario pidió esta operación? Si NO → detente
2. ¿Qué cuenta se va a usar? Confirma
3. ¿Es push/commit/remoto? Si es solo local (status, diff, log) → procede

### Comandos seguros (sin pedir permiso)

```bash
git status
git diff
git log --oneline
git branch -a
git show
git blame
git ls-files
```

### Comandos que requieren confirmación del usuario

```bash
git add
git commit
git push
git pull
git checkout
git merge
git rebase
git reset
git stash
```

### Comandos NUNCA ejecutar sin autorización explícita

```bash
git push --force
git reset --hard
git clean -fd
git branch -D
```
