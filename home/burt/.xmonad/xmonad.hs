import XMonad
import XMonad.Layout.Spiral
import XMonad.Util.EZConfig

mylayoutHook = spiral (6/7) ||| Mirror tiled ||| Full
               where tiled = Tall 1 0.03 0.5 

mymanageHook :: ManageHook
mymanageHook = composeAll
                [ className =? "Kruler" --> doFloat ]


main = xmonad $ defaultConfig
       { terminal = "konsole"
       , layoutHook = mylayoutHook
       , modMask = mod4Mask
       , manageHook = mymanageHook
       , borderWidth = 0
       , startupHook = do spawn ". /home/burt/.xmodmap" 
                       >> spawn "hsetroot -full /home/burt/.background"
                       >> spawn "xcompmgr &"
                       >> spawn "xset r rate 200 40"
       }
       `additionalKeys`  [ ((mod1Mask .|. controlMask, xK_l), spawn "slock") ]
       
