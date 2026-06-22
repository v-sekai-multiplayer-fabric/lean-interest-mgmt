-- Non-gated research tier (NOT on the CI production gate). Build with
-- `lake build Research`.
--   SolveOrder — uses Array.mem_toList.mp (removed in this toolchain)
--   AuthorityInterest — research-tier solve-order/authority proofs
import InterestManagement.core.AuthorityInterest
import InterestManagement.core.SolveOrder
