-- SPDX-License-Identifier: MIT
-- Copyright (c) 2026-present K. S. Ernest (iFire) Lee

import Lake
open System Lake DSL

package «lean-interest-mgmt» where

-- Shared primitive types (common vocabulary).
require «lean-shared-core» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-shared-core.git" @ "main"

-- ReBAC authorization core.
require «lean-rebac-core» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-rebac-core.git" @ "main"

-- Predictive spatial-oracle: reachability/mapping reference its formulas. Also
-- the transitive source of Mathlib (via truth_research_zk) used by Mapping.lean.
require «lean-spatial-oracle» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-spatial-oracle.git" @ "main"

-- Fabric networking / SLA: solve-order references the migration protocol.
require «lean-fabric-protocol» from git
  "https://github.com/v-sekai-multiplayer-fabric/lean-fabric-protocol.git" @ "main"

-- Authority-interest / solve-order hexagon: who-sees-whom and solve sequencing.
lean_lib InterestManagement where
  roots := #[`InterestManagement]
  globs := #[.one `InterestManagement]

-- Research-tier AuthorityInterest + SolveOrder (NOT on the CI production gate).
lean_lib Research where
  roots := #[`Research]
  globs := #[.one `Research]
