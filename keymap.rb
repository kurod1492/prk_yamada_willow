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
KC_ESC   KC_1     KC_2      KC_3     KC_4      KC_5                          KC_6       KC_7     KC_8     KC_9     KC_0      KC_BSPC
KC_TAB   KC_Q     KC_W      KC_E     KC_R      KC_T                          KC_Y       KC_U     KC_I     KC_O     KC_P      KC_QUOT
KC_LCTL  KC_A     KC_S      KC_D     KC_F      KC_G                          KC_H       KC_J     KC_K     KC_L     KC_SCOLON KC_RSFT
KC_LSFT  KC_Z     KC_X      KC_C     KC_V      KC_B    KC_LBRC    KC_RBRC    KC_N       KC_M     KC_COMMA KC_DOT   KC_SLASH  KC_RIGHT
                            KC_LALT  KC_LGUI   LOWER   KC_SPC     KC_ENTER   RAISE_LEFT KC_DOWN  KC_UP
KC_9  KC_8     KC_7
KC_6  KC_5     KC_4   KC_PLUS
KC_3  KC_2     KC_1   KC_MINUS
      KC_DOT   KC_0
KC_NO RGB_RMOD RGB_MOD KC_F13 KC_F14 KC_F15 KC_F16 KC_F17 KC_F18
)

kbd.add_layer :lower, %i(
KC_GRAVE KC_F1    KC_AT     KC_F3    KC_F4     KC_F5                         KC_F6     KC_F7     KC_F8    KC_F9    KC_F10    KC_BSPC
KC_TAB   KC_Q     KC_W      KC_E     KC_R      KC_T                          KC_Y      KC_U      KC_I     KC_F11   KC_P      KC_BSLASH
KC_LCTL  KC_A     KC_S      KC_D     KC_F      KC_G                          KC_H   KC_MINUS  KC_PLUS  KC_EQUAL KC_RABK   KC_RSFT
KC_LSFT  KC_Z     KC_X      KC_C     KC_V      KC_B     KC_LABK   KC_B       KC_N      KC_M      KC_RABK  KC_NO    KC_NO     KC_VOLU
                            KC_LALT  KC_LGUI   KC_NO    KC_NO     KC_NO      KC_VOLD   KC_BRID   KC_BRIU
KC_PGUP   KC_UP     KC_HOME
KC_RIGHT  KC_5      KC_LEFT  KC_PLUS
KC_PGDOWN KC_DOWN   KC_END   KC_MINUS
          KC_DELETE KC_INSERT
KC_NO RGB_RMOD RGB_MOD KC_F13 KC_F14 KC_F15 KC_F16 KC_F17 KC_F18
)

kbd.add_layer :raise, %i(
KC_TILD  KC_F1    KC_F2     KC_F3    KC_F4    KC_F5                          KC_F6     KC_F7     KC_F8    KC_F9    KC_F10    KC_BSPC
KC_TAB   BOOTSEL  KC_W      KC_E     KC_R     KC_T                           KC_PGDOWN KC_PGUP   KC_HOME  KC_END   KC_NO     KC_PIPE
KC_LCTL  KC_A     KC_S      KC_D     KC_F     KC_G                           KC_H  KC_UNDS   KC_EQUAL KC_PLUS  KC_NO     KC_RSFT
KC_LSFT  KC_Z     KC_X      KC_C     KC_V     KC_B     KC_RABK    KC_B       KC_N      KC_M      KC_COMMA KC_DOT   KC_SLASH  KC_VOLU
                            KC_LALT  KC_LGUI  KC_NO    KC_NO      KC_NO      KC_NO     KC_PGDOWN KC_PGUP
KC_9   KC_8   KC_7
KC_6   KC_5   KC_4 KC_PLUS
KC_3   KC_2   KC_1 KC_MINUS
       KC_DOT KC_0
KC_NO RGB_RMOD RGB_MOD KC_F13 KC_F14 KC_F15 KC_F16 KC_F17 KC_F18
)

kbd.define_mode_key :LOWER,        [ nil,                       :lower,   nil, nil ]
kbd.define_mode_key :RAISE,        [ nil,                       :raise,   nil, nil ]
kbd.define_mode_key :SPC_LOWER,    [ :KC_SPC,                   :lower,   150, 150 ]
kbd.define_mode_key :ENT_RAISE,    [ :KC_ENTER,                 :raise,   150, 150 ]
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

#     PINS = {
#  'D1' => 2,
#  'D0' => 3,
#  'D4' => 4,
#  'C6' => 5,
#  'D7' => 6,
#  'E6' => 7,
#  'B4' => 8,
#  'B5' => 9,
#  'F4' => 29,
#  'F5' => 28,
#  'F6' => 27,
#  'F7' => 26,
#  'B1' => 22,
#  'B3' => 20,
#  'B2' => 23,
#  'B6' => 21,
#}
# D4-C6 => 4, 5
# D7-E6 => 6, 7
# B4-B5 => 8, 9


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
  kbd.send_key :KC_PGUP
end
encoder_2.clockwise do
  kbd.send_key :KC_PGDOWN
end
kbd.append encoder_2

encoder_3 = RotaryEncoder.new(8, 9)
encoder_3.counterclockwise do
  kbd.send_key :KC_UP
end
encoder_3.clockwise do
  kbd.send_key :KC_DOWN
end
kbd.append encoder_3


rgb = RGB.new(0, 58, 41)
[
  [0, 0],  [20, 0],  [40, 0],  [60, 0],  [80, 0],  [100, 0],  [120, 0],  [140, 0],  [160, 0],  [180, 0],  [200, 0],  [220, 0], 
  [0, 16], [20, 16], [40, 16], [60, 16], [80, 16], [100, 16], [120, 16], [140, 16], [160, 16], [180, 16], [200, 16], [220, 16],
  [0, 32], [20, 32], [40, 32], [60, 32], [80, 32], [100, 32], [120, 32], [140, 32], [160, 32], [180, 32], [200, 32], [220, 32],
  [0, 48], [17, 48], [34, 48], [51, 48], [68, 48], [85,  48], [102, 48], [119, 48], [138, 48], [155, 48], [172, 48], [189, 48], [206, 48], [224, 48],
  [51, 64], [68, 64], [85, 64], [102, 64], [119, 64], [138, 64], [155, 64],[172, 64]
].each do |p|
  rgb.add_pixel(p[0], p[1])
end

rgb.effect     = :circle
rgb.speed      = 22  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.value      = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance

kbd.start!
