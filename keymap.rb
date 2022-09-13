kbd=Keyboard.new
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
KC_ESC  KC_1 KC_2 KC_3    KC_4    KC_5                 KC_6     KC_7  KC_8     KC_9    KC_0     KC_BSPC
KC_TAB  KC_Q KC_W KC_E    KC_R    KC_T                 KC_Y     KC_U  KC_I     KC_O    KC_P     KC_MINUS
KC_LCTL KC_A KC_S KC_D    KC_F    KC_G                 KC_H     KC_J  KC_K     KC_L    KC_SCLN  KC_QUOT
KC_LSFT KC_Z KC_X KC_C    KC_V    KC_B   KC_LBRC KC_B  KC_N     KC_M  KC_COMMA KC_DOT  KC_SLASH KC_RSFT
                  KC_LGUI KC_LALT KC_SPC LOWER   RAISE KC_ENTER KC_UP KC_RIGHT
KC_9   KC_8   KC_7
KC_6   KC_5   KC_4 KC_PLUS
KC_3   KC_2   KC_1 KC_MINUS
       KC_DOT KC_0
)

kbd.add_layer :lower, %i(
KC_TILD KC_F1 KC_AT KC_F3   KC_F4   KC_F5                   KC_F6   KC_F7   KC_F8    KC_F9    KC_F10    KC_BSLS
KC_TAB  KC_Q  KC_W  KC_E    KC_R    KC_T                    KC_Y    KC_U    KC_I     KC_O     KC_P      KC_EQLS
KC_LCTL KC_A  KC_S  KC_D    KC_F    KC_G                    KC_LEFT KC_DOWN KC_UP    KC_RIGHT KC_SCOLON KC_PLUS
KC_LSFT KC_Z  KC_X  KC_C    KC_V    KC_B   KC_RBRC KC_B     KC_N    KC_M    KC_COMMA KC_DOT   KC_SLASH  KC_RSFT
                    KC_LGUI KC_LALT KC_SPC LOWER   RAISE KC_ENTER KC_UP KC_RIGHT
KC_9   KC_8   KC_7
KC_6   KC_5   KC_4 KC_PLUS
KC_3   KC_2   KC_1 KC_MINUS
       KC_DOT KC_0
)

kbd.add_layer :raise, %i(
KC_GRAVE KC_F1 KC_F2 KC_F3   KC_F4   KC_F5                   KC_F6    KC_F7   KC_F8    KC_F9    KC_F10    KC_PIPE
KC_TAB   KC_Q  KC_W  KC_E    KC_R    KC_T                    KC_Y     KC_U    KC_UP    KC_F11   KC_F12    KC_EQLS
KC_LCTL  KC_A  KC_S  KC_D    KC_F    KC_G                    KC_LEFT  KC_LEFT KC_DOWN  KC_RIGHT KC_SCOLON KC_EQLS
KC_LSFT  KC_Z  KC_X  KC_C    KC_V    KC_B   KC_RCBR KC_RBRC  KC_N     KC_M    KC_COMMA KC_DOT   KC_SLASH  KC_RSFT
                     KC_LGUI KC_LALT KC_SPC LOWER   RAISE KC_ENTER KC_UP KC_RIGHT
KC_9   KC_8   KC_7
KC_6   KC_5   KC_4 KC_PLUS
KC_3   KC_2   KC_1 KC_MINUS
       KC_DOT KC_0
)

kbd.define_mode_key :LOWER, [ nil, :lower, nil, nil ]
kbd.define_mode_key :RAISE, [ nil, :raise, nil, nil ]

kbd.start!
