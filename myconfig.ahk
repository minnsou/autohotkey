;参考リンク
;Windows 10でEmacs風キーバインドを使う
;https://tkykmw.hatenablog.com/entry/2018/07/14/windows-10%25e3%2581%25a7emacs%25e9%25a2%25a8%25e3%2582%25ad%25e3%2583%25bc%25e3%2583%2590%25e3%2582%25a4%25e3%2583%25b3%25e3%2583%2589%25e3%2582%2592%25e4%25bd%25bf%25e3%2581%2586/

;PC起動時にAutoHotkeyのスクリプトを自動で実行する方法
;https://kiryusblog.com/autohotkey-autorun/

;コントロールパネルの「表示の間隔(repeat rate)」を遅くするとSlipしなくなる
;https://github.com/oneh/autohotkey_emacs_keymap/blob/master/README.ja.md


#UseHook
#HotkeyModifierTimeout 500
;SendMode, Play

;ctrl+2で半角/全角切り替え
^2::Send, {vkF3sc029}
;https://yasushiito.hatenablog.com/entry/2019/03/15/183853

;Teratermが起動している時はEmacsキーバインドの設定を使用しない
#IfWinNotActive ahk_class VTWin32

;Emacs風キーバインド
^b::Send, {Left}
^f::Send, {Right}
^n::Send, {Down}
^p::Send, {Up}

^a::Send, {Home}
^e::Send, {End}
^d::Send, {Delete}
^h::Send, {Backspace}

+^b::Send, +{Left}
+^f::Send, +{Right}
+^n::Send, +{Down}
+^p::Send, +{Up}

+^a::Send, +{Home}
+^e::Send, +{End}

;AltキーをCtrlの代わりにする
!a::Send, ^a
!n::Send, ^n
!f::Send, ^f
!e::Send, ^e

;chrome起動中にctrl+jでダウンロードに飛ばないようにする
#IfWinActive, ahk_exe chrome.exe
^j::Return
#IFWinActive

