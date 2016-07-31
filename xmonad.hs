import           XMonad
import           XMonad.Util.EZConfig
import           XMonad.Hooks.DynamicLog

helper x = spawn $ "~/.xmonad/helper.sh " ++ x

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
    ])
