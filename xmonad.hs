import           XMonad
import           XMonad.Util.EZConfig

main = do
  xmonad $ defaultConfig
    { terminal = "gnome-terminal"
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", spawn "s")
    ]
