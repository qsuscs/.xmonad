import           XMonad
import           XMonad.Hooks.DynamicLog
import           XMonad.Hooks.EwmhDesktops        (ewmh)
import           XMonad.Hooks.ManageDocks
import           XMonad.Util.EZConfig
import           XMonad.Util.Run

import           System.Taffybar.Hooks.PagerHints (pagerHints)

helper x = spawn $ "~/.xmonad/helper.sh " ++ x
kbd k = spawn $ "setxkbmap " ++ k

main = do
  h <- spawnPipe "xmobar"
  xmonad $ docks $ ewmh $ pagerHints $ (def
    { terminal = "gnome-terminal"
    , manageHook = manageDocks <+> manageHook def
    , layoutHook = avoidStruts  $  layoutHook def
    , logHook = dynamicLogWithPP $ xmobarPP { ppOutput = hPutStrLn h }
    , modMask = mod4Mask
    }
    `additionalKeysP`
    [ ("M-s", helper "lock")
    , ("M-<Esc>", helper "lock")
    , ("M-S-s", helper "lock-hybrid-sleep")
    , ("<XF86Sleep>", helper "lock-suspend")
    , ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
    , ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
    , ("<XF86AudioMute>", helper "mute")
    , ("<XF86AudioRaiseVolume>", helper "volup")
    , ("<XF86AudioLowerVolume>", helper "voldown")
    , ("<XF86AudioMicMute>", helper "micmute")
    , ("M-<F1>", kbd "de bone")
    , ("M-S-<F1>", kbd "de")
    , ("M-<F2>", kbd "de ru")
    , ("M-<F3>", kbd "gr")
    , ("M-b", sendMessage ToggleStruts)
    ])
