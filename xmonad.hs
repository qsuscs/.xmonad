import           XMonad
import           XMonad.Util.EZConfig

helper x = spawn $ "~/.xmonad/helper.sh " ++ x

main = do
  xmonad $ defaultConfig
    { terminal = "gnome-terminal"
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", helper "lock")
    , ("M-S-s", helper "lock-hybrid-sleep")
    , ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
    , ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
    ]
