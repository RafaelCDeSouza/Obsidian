```python
interface Eth-Trunk7
 description LAG7_SW1POP00_P12_P13__PSCE01_P12_P13
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 11 to 13 18 21 to 23 31 to 33 39 41 to 43 51 to 53 61 to 63 71 to 73 79
 port trunk allow-pass vlan 81 83 91 to 93 101 103 109 to 111 113 121 123 131
 port trunk allow-pass vlan 133 141 150 to 151 161 to 163 169 171 173 181 191 193 to 194
 port trunk allow-pass vlan 200 to 201 203 211 213 251 253 258 271 273 281
 port trunk allow-pass vlan 283 1001 1111 3511 3541 3571 3581 3602
 jumboframe enable 12288
#
```
