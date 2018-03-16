module Garbage.Peterson where

type Var = String
type ProcId = Int

class PState p where
  get :: ProcId -> Var -> p Int
  set :: ProcId -> Var -> Int -> p ()
  setAll :: ProcId -> [(Var, Int)] -> p ()

