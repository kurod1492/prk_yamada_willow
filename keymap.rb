require "consumer_key"

kbd = Keyboard.new
row0, row1, row2, row3, row4, row5, row6, row7, row8, row9 = 29, 28, 27, 26, 22, 20, 23, 21, 1, 2
col0, col1, col2, col3, col4, col5, col6, col7, col8, col9 = 29, 28, 27, 26, 22, 20, 23, 21, 1, 2

kbd.init_matrix_pins(
  [
    [nil,         [row1,col0], [row2,col0], [row3,col0], [row4,col0], [row5,col0], [row6,col0], [row7,col0], [row8,col0], [row9,col0]],
    [[row0,col1], nil,         [row2,col1], [row3,col1], [row4,col1], [row5,col1], [row6,col1], [row7,col1], [row8,col1], [row9,col1]],
    [[row0,col2], [row1,col2], nil,         [row3,col2], [row4,col2], [row5,col2], [row6,col2], [row7,col2], [row8,col2], [row9,col2]],
    [[row0,col3], [row1,col3], [row2,col3], nil,         [row4,col3], [row5,col3], [row6,col3], [row7,col3], [row8,col3], [row9,col3]],
    [[row0,col4], [row1,col4], [row2,col4], [row3,col4], nil,         [row5,col4], [row6,col4], [row7,col4], [row8,col4], [row9,col4]],
    [[row0,col5], [row1,col5], [row2,col5], [row3,col5], [row4,col5], nil,         [row6,col5], [row7,col5], [row8,col5], [row9,col5]],
    [[row0,col6], [row1,col6], [row2,col6], [row3,col6], [row4,col6], [row5,col6], nil,         [row7,col6], [row8,col6], [row9,col6]],
    [[row0,col7], [row1,col7], [row2,col7], [row3,col7], [row4,col7], [row5,col7], [row6,col7], nil,         [row8,col7], [row9,col7]],
    [[row0,col8], [row1,col8], [row2,col8], [row3,col8], [row4,col8], [row5,col8], [row6,col8], [row7,col8], nil,         [row9,col8]],
    [[row0,col9], [row1,col9], [row2,col9], [row3,col9], [row4,col9], [row5,col9], [row6,col9], [row7,col9], [row8,col9], nil        ]
  ]
)

#default layer should be added at first
kbd.add_layer :default, %i(
KC_ESC   KC_1     KC_2      KC_3     KC_4     KC_5                              KC_6         KC_7      KC_8     KC_9     KC_0      KC_BSPC
KC_TAB   KC_Q     KC_W      KC_E     KC_R     KC_T                              KC_Y         KC_U      KC_I     KC_O     KC_P      KC_BSLASH
KC_LCTL  KC_A     KC_S      KC_D     KC_F     KC_G                              KC_H         KC_J      KC_K     KC_L     KC_SCOLON KC_QUOT
KC_LSFT  KC_Z     KC_X      KC_C     KC_V     KC_B        KC_LBRC    KC_RBRC    KC_N         KC_M      KC_COMMA KC_DOT   KC_SLASH  KC_RSFT  
                            KC_LALT  KC_LGUI  EISU_LOWER  KC_SPC     KC_ENTER   KANA_RAISE   KC_LALT   KC_RGUI
KC_PGUP   KC_UP     KC_HOME
KC_RIGHT  KC_NO     KC_LEFT  KC_PLUS
KC_PGDOWN KC_DOWN   KC_END   KC_MINUS
          KC_DELETE KC_INSERT
KC_NO RGB_TOG BROWSER_ZOOMRESET KC_F4
)

kbd.add_layer :lower, %i(
KC_F1    KC_F2    KC_F3     KC_F4    KC_F5    KC_F6                             KC_F7        KC_F8     KC_F9    KC_F10    KC_F11    KC_F12
KC_TAB   KC_NO    KC_UP     KC_NO    KC_NO    KC_NO                             KC_NO        KC_NO     KC_NO    KC_NO     KC_NO     KC_NO
KC_LCTL  KC_LEFT  KC_DOWN   KC_RIGHT KC_NO    KC_NO                             KC_NO        KC_NO     KC_NO    KC_NO     KC_NO     KC_NO
KC_LSFT  KC_NO    KC_NO     KC_NO    KC_NO    KC_NO       KC_LCBR    KC_RCBR    KC_NO        KC_NO     KC_LABK  KC_RABK   KC_TILD   KC_RSFT  
                            KC_LALT  KC_LGUI  EISU_LOWER  KC_SPC     KC_ENTER   KANA_RAISE   KC_HOME   KC_END
KC_9  KC_8     KC_7
KC_6  KC_5     KC_4   KC_PLUS
KC_3  KC_2     KC_1   KC_MINUS
      KC_DOT   KC_0
KC_NO KC_F5 KC_F6 KC_F7
)

kbd.add_layer :raise, %i(
KC_TILD  KC_EXLM  KC_AT     KC_HASH  KC_DLR   KC_PERC                           KC_CIRC      KC_AMPR   KC_ASTER KC_LCBR   KC_RCBR   KC_EQUAL
KC_TAB   KC_NO    KC_UP     KC_NO    KC_NO    KC_NO                             KC_NO        KC_NO     KC_NO    KC_NO     KC_NO     KC_NO
KC_LCTL  KC_LEFT  KC_DOWN   KC_RIGHT KC_NO    KC_NO                             KC_UNDS      KC_MINUS  KC_EQUAL KC_PLUS   KC_NO     KC_GRAVE
KC_LSFT  BOOTSEL  KC_X      KC_C     KC_V     KC_NO       KC_PGUP    KC_PGDOWN  KC_HOME      KC_END    KC_NO    KC_UP     KC_RIGHT  KC_RSFT
                            KC_LALT  KC_LGUI  EISU_LOWER  KC_SPC     KC_ENTER   KANA_RAISE   KC_LEFT   KC_DOWN
KC_9   KC_8   KC_7
KC_6   KC_5   KC_4 KC_PLUS
KC_3   KC_2   KC_1 KC_MINUS
       KC_DOT KC_0
KC_NO KC_F8 KC_F9 KC_F10
)


kbd.define_composite_key :DESK_PREV, %i(KC_LCTL KC_LEFT)  # move to prev desktop
kbd.define_composite_key :DESK_NEXT, %i(KC_LCTL KC_RIGHT) # move to next desktop
kbd.define_composite_key :BROWSER_ZOOMRESET, %i(KC_LGUI KC_0) # browser zoom reset

kbd.define_mode_key :LOWER,        [ nil,                       :lower,   nil, nil ]
kbd.define_mode_key :RAISE,        [ nil,                       :raise,   nil, nil ]
kbd.define_mode_key :SPC_LOWER,    [ :KC_SPC,                   :lower,   300, 300 ]
kbd.define_mode_key :ENT_RAISE,    [ :KC_ENTER,                 :raise,   300, 300 ]
kbd.define_mode_key :EISU_LOWER,   [ :KC_LANG2,                 :lower,   300, 300 ]
kbd.define_mode_key :KANA_RAISE,   [ :KC_LANG1,                 :raise,   300, 300 ]
kbd.define_mode_key :RAISE_LEFT,   [ :KC_LEFT,                  :raise,   150, 150 ]
kbd.define_mode_key :BOOTSEL,      [ Proc.new { kbd.bootsel! }, nil,      200, nil ]
#                                 ^^^^^^^^^^^^^^^^^^^^  ^^^^^^^  ^^^  ^^^
#                                     (1)                   (2)      (3)  (4)
# (1): Symbol of a keycode, Array of multiple keycodes, or Proc which is going
#      to be called when you tap.
# (2): Symbol of a keycode (only a modifier), Symbol of a layer to be held, or
#      Proc.
# (3): Release-time threshold(ms). If you release the key within the time,
#      (1) key is going to be invoked once.
# (4): Re-push time threshold(ms). Under the state of (3), if you re-push the
#      key within the time, (1) key is going to be kept pressed


encoder_1 = RotaryEncoder.new(4, 5)
encoder_1.counterclockwise do
  kbd.send_key :RGB_RMOD
end
encoder_1.clockwise do
  kbd.send_key :RGB_MOD
end
kbd.append encoder_1

encoder_2 = RotaryEncoder.new(6, 7)
encoder_2.counterclockwise do
  kbd.send_key %i(KC_LGUI KC_MINUS)
end
encoder_2.clockwise do
  kbd.send_key %i(KC_LGUI KC_EQUAL)
end
kbd.append encoder_2

encoder_3 = RotaryEncoder.new(8, 9)
encoder_3.counterclockwise do
  kbd.send_key :KC_PGUP
end
encoder_3.clockwise do
  kbd.send_key :KC_PGDOWN
end
kbd.append encoder_3

rgb = RGB.new(0, 101, 0)
rgb.effect     = :circle
rgb.speed      = 22  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.value      = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance

kbd.start!
