import           XMonad
import           XMonad.Util.EZConfig

main = do
  xmonad $ defaultConfig
    { terminal = "gnome-terminal"
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", spawn "~/.xmonad/helper.sh lock")
    , ("M-S-s", spawn "~/.xmonad/helper.sh lock-hybrid-sleep")
    , ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
    , ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
    ]
