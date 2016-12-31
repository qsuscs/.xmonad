import           XMonad
import           XMonad.Util.EZConfig
import           XMonad.Hooks.DynamicLog

helper x = spawn $ "~/.xmonad/helper.sh " ++ x
kbd k = spawn $ "setxkbmap " ++ k

main = xmonad =<< xmobar (defaultConfig
    { terminal = "gnome-terminal"
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", helper "lock")
    , ("M-S-s", helper "lock-hybrid-sleep")
    , ("<XF86Sleep>", helper "lock-suspend")
    , ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
    , ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
    , ("<XF86AudioMute>", helper "mute")
    , ("<XF86AudioRaiseVolume>", helper "volup")
    , ("<XF86AudioLowerVolume>", helper "voldown")
    , ("<XF86AudioMicMute>", helper "micmute")
    , ("M-<F1>", kbd "de bone")
    , ("M-S-<F1>", kbd "de neo_qwertz")
    , ("M-<F2>", kbd "de ru")
    , ("M-<F3>", kbd "gr")
    ])
