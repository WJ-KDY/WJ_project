
set_property IOSTANDARD LVCMOS18 [get_ports FPGA_50MHz]
set_property PACKAGE_PIN AK33 [get_ports FPGA_50MHz]

set_property IOSTANDARD LVCMOS33 [get_ports UART0_TXD]
set_property PACKAGE_PIN D5 [get_ports UART0_TXD]

set_property IOSTANDARD LVCMOS33 [get_ports UART0_RXD]
set_property PACKAGE_PIN D6 [get_ports UART0_RXD]

set_property IOSTANDARD LVCMOS33 [get_ports FAN_ON]
set_property PACKAGE_PIN F2 [get_ports FAN_ON]

set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN F4 [get_ports {LED[2]}]
set_property PACKAGE_PIN E3 [get_ports {LED[1]}]
set_property PACKAGE_PIN F3 [get_ports {LED[0]}]

set_property PACKAGE_PIN AU28 [get_ports REFCLK1_P]
set_property IOSTANDARD LVDS [get_ports REFCLK1_P]

set_property PACKAGE_PIN AW23 [get_ports REFCLK2_P]
set_property IOSTANDARD LVDS [get_ports REFCLK2_P]

set_property IOSTANDARD LVCMOS18 [get_ports PLL1_CSn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_SCLK]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_SDO]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_SDIO]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_RSTn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_PDNn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_LOCK]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_OEn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL1_SYNCn]

set_property PACKAGE_PIN AU30 [get_ports PLL1_CSn]
set_property PACKAGE_PIN AV30 [get_ports PLL1_SCLK]
set_property PACKAGE_PIN AV31 [get_ports PLL1_SDO]
set_property PACKAGE_PIN AW31 [get_ports PLL1_SDIO]
set_property PACKAGE_PIN AW33 [get_ports PLL1_RSTn]
set_property PACKAGE_PIN AT29 [get_ports PLL1_PDNn]
set_property PACKAGE_PIN AW28 [get_ports PLL1_LOCK]
set_property PACKAGE_PIN AT30 [get_ports PLL1_OEn]
set_property PACKAGE_PIN AW29 [get_ports PLL1_SYNCn]

set_property IOSTANDARD LVCMOS18 [get_ports PLL2_CSn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_SCLK]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_SDO]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_SDIO]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_RSTn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_PDNn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_LOCK]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_OEn]
set_property IOSTANDARD LVCMOS18 [get_ports PLL2_SYNCn]

set_property PACKAGE_PIN AU24 [get_ports PLL2_CSn]
set_property PACKAGE_PIN AV27 [get_ports PLL2_SCLK]
set_property PACKAGE_PIN AU27 [get_ports PLL2_SDO]
set_property PACKAGE_PIN AT27 [get_ports PLL2_SDIO]
set_property PACKAGE_PIN AW26 [get_ports PLL2_RSTn]
set_property PACKAGE_PIN AV23 [get_ports PLL2_PDNn]
set_property PACKAGE_PIN AU23 [get_ports PLL2_LOCK]
set_property PACKAGE_PIN AU25 [get_ports PLL2_OEn]
set_property PACKAGE_PIN AT24 [get_ports PLL2_SYNCn]


set_property IOSTANDARD LVCMOS33 [get_ports RX_LOCKN]
set_property IOSTANDARD LVCMOS33 [get_ports RX_HPDN]
set_property IOSTANDARD LVCMOS33 [get_ports TX_LOCKN]

set_property PACKAGE_PIN M14 [get_ports RX_LOCKN]
set_property PACKAGE_PIN L14 [get_ports RX_HPDN]
set_property PACKAGE_PIN H12 [get_ports TX_LOCKN]

create_clock -period 20.000 -name freerun -waveform {0.000 10.000} [get_ports FPGA_50MHz]



