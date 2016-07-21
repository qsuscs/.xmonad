import           XMonad
import           XMonad.Util.EZConfig

main = do
  xmonad $ defaultConfig
    { terminal = "gnome-terminal"
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", spawn "i3lock -c aa00aa")
    , ("M-S-s", spawn "i3lock -c aa00aa && systemctl hybrid-sleep")
    ]
