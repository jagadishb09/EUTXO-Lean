import tactic

def HashId     : Type := sorry

-- Output references.
structure TxOutputRef : Type :=
(hid  : HashId) -- the index of a previous transaction to which this input refers
(index : ℕ)     -- indicates which of the referred transaction's outputs should be spent