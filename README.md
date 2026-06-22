# lean-interest-mgmt

Authority-interest + solve-order hexagon: who-sees-whom and solve sequencing.

> Split out of the [`lean-predictive-bvh`](https://github.com/v-sekai-multiplayer-fabric/lean-predictive-bvh) monorepo (now archived). Each hexagon cluster is its own repo following the `core/ports/adapters` convention; cross-cluster wiring is via Lake `require ... from git`.

## Dependencies

- [`lean-shared-core`](v-sekai-multiplayer-fabric/lean-shared-core) — common primitive types
- [`lean-rebac-core`](v-sekai-multiplayer-fabric/lean-rebac-core) — authority decisions
- [`lean-spatial-oracle`](v-sekai-multiplayer-fabric/lean-spatial-oracle) — reachability/mapping references (also the transitive Mathlib source)
- [`lean-fabric-protocol`](v-sekai-multiplayer-fabric/lean-fabric-protocol) — interest queries source

## Build

```sh
lake build         # production gate: typecheck the  cluster
lake build Research  # research-tier (non-gating; may fail)
```

## Hexagon layout

- `core/` — dependency-free domain logic + proofs
- `ports/` — narrow driving (source) / driven (sink) contracts
- `adapters/` — concrete I/O at the edges
