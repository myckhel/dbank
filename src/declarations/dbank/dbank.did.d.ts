import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'balance' : () => Promise<bigint>,
  'topup' : (arg_0: bigint) => Promise<undefined>,
  'withdraw' : (arg_0: bigint) => Promise<undefined>,
}
