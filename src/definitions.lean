import tactic

-- Start by putting together the definitions for the model
-- UTxO model first

def Value     : Type := sorry
def Address   : Type := sorry
def Id        : Type := sorry

structure Input  : Type := 
(id : Id)    -- the index of a previous transaction to which this input refers
(index : ℕ)  -- indicates which of the referred transaction's outputs should be spent

structure Output : Type := 
(address : Address)   -- the address that owns this output
(value   : Value)     -- the value of this output

structure UTXO_transaction : Type :=
(inputs  : set Input)
(outputs : list Output)
(forge   : Value)
(fee     : Value)

#check UTXO_transaction

def Ledger := list UTXO_transaction