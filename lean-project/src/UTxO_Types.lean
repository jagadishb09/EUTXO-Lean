import tactic

-- Basic Types --
def HashId : Type := set nat
def Value : Type := list nat -> list nat -> nat
def Time : Type := set nat 
def Address : Type := set HashId

-- Output references.
structure TxOutputRef : Type :=
(hid  : HashId) -- the index of a previous transaction to which this input refers
(index : ℕ)     -- indicates which of the referred transaction's outputs should be spent

-- pending transaction data types
structure InputInfo :=
(outputRef     : TxOutputRef)
(validatorHash : HashId)
(datumHash     : HashId)
(redeemerHash  : HashId)
(value         : Value)