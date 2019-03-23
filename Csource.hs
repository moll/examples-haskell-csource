module Csource (foo) where
import qualified Foreign as Ffi

foo :: Int -> Int
foo = fromIntegral . foo' . fromIntegral

foreign import ccall unsafe "foo" foo' :: Ffi.Int32 -> Ffi.Int32
