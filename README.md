# prk_yamada_willow

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">ロータリーエンコーダ動くようになりました！ <a href="https://t.co/SXwqsNB7Sk">pic.twitter.com/SXwqsNB7Sk</a></p>&mdash; Akihiro Kurotani (@kurod1492) <a href="https://twitter.com/kurod1492/status/1591436962636115969?ref_src=twsrc%5Etfw">November 12, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
[prk\_firmware 入門](https://zenn.dev/takkanm/articles/91c6741a4a3f26)

```
PINS = {
  'D1' => 2,
  'D0' => 3,
  'D4' => 4,
  'C6' => 5,
  'D7' => 6,
  'E6' => 7,
  'B4' => 8,
  'B5' => 9,
  'F4' => 29,
  'F5' => 28,
  'F6' => 27,
  'F7' => 26,
  'B1' => 22,
  'B3' => 20,
  'B2' => 23,
  'B6' => 21,
}
```

# Rotary Encoder

```
D4-C6 => 4, 5
D7-E6 => 6, 7
B4-B5 => 8, 9
```

# RGBLED

```
define RGB_DI_PIN D3 => GPIO1 => 1
# https://golem.hu/article/pro-micro-pinout/
define RGBLED_NUM 101
```

# RGB matrix

```
# Each LED position represents the LED’s physical [ x, y ] position on the keyboard. The expected range of values for [ x, y ] is the inclusive range [ 0..224, 0..64 ].

# col = 17, 224 / 16 = 14
# row = 5, 64 / 4 = 16

# [
#   [0, 0],  [14, 0],  [28, 0],  [42, 0],  [56, 0],  [70, 0],  [154, 0],  [168, 0],  [182, 0],  [196, 0],  [210, 0],  [224, 0], 
#   [0, 16], [14, 16], [28, 16], [42, 16], [56, 16], [70, 16], [154, 16], [168, 16], [182, 16], [196, 16], [210, 16], [224, 16],
#   [0, 32], [14, 32], [28, 32], [42, 32], [56, 32], [70, 32], [154, 32], [168, 32], [182, 32], [196, 32], [210, 32], [224, 32],
#   [0, 48], [14, 48], [28, 48], [42, 48], [56, 48], [70, 48], [84, 48],  [140, 48], [154, 48], [168, 48], [182, 48], [196, 48], [210, 48], [224, 48],
#                                [42, 64], [56, 64], [70, 64], [84, 64],  [140, 64], [154, 64], [168, 64], [182, 64],
#                                                              [84, 16], [140, 16], [154, 16],
#                                                    [70, 32], [84, 32], [140, 32], [154, 32],
#                                                    [70, 48], [84, 48], [140, 48], [154, 48],
#                                                              [84, 64], [140, 64],
#   [0, 64], [10, 64], [20, 64], [30, 64], [40, 64], [50, 64], [60, 64], [70, 64], [80, 64], [90, 64], [100, 64],
#   [110, 64], [120, 64], [130, 64], [140, 64], [150, 64], [160, 64], [170, 64], [180, 64], [190, 64], [200, 64], [210, 64], 
#   [211, 64], [212, 64], [213, 64], [215, 64], [220, 64], [224, 64]
# ].each do |p|
#   rgb.add_pixel(p[0], p[1])
# end
```