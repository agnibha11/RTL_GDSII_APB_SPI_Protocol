module spi_top (PCLK,
    PENABLE,
    PREADY,
    PRESETn,
    PSEL,
    PSLVERR,
    PWRITE,
    miso_pad_i,
    spi_int_o,
    sclk_pad_o,
    mosi_pad_o,
    PADDR,
    PRDATA,
    PSTRB,
    PWDATA,
    ss_pad_o);
 input PCLK;
 input PENABLE;
 output PREADY;
 input PRESETn;
 input PSEL;
 output PSLVERR;
 input PWRITE;
 input miso_pad_i;
 output spi_int_o;
 output sclk_pad_o;
 output mosi_pad_o;
 input [4:0] PADDR;
 output [31:0] PRDATA;
 input [3:0] PSTRB;
 input [31:0] PWDATA;
 output [31:0] ss_pad_o;

 wire \$0\ctrl[15:0][0] ;
 wire \$0\ctrl[15:0][10] ;
 wire \$0\ctrl[15:0][11] ;
 wire \$0\ctrl[15:0][12] ;
 wire \$0\ctrl[15:0][13] ;
 wire \$0\ctrl[15:0][14] ;
 wire \$0\ctrl[15:0][15] ;
 wire \$0\ctrl[15:0][1] ;
 wire \$0\ctrl[15:0][2] ;
 wire \$0\ctrl[15:0][3] ;
 wire \$0\ctrl[15:0][4] ;
 wire \$0\ctrl[15:0][5] ;
 wire \$0\ctrl[15:0][6] ;
 wire \$0\ctrl[15:0][7] ;
 wire \$0\ctrl[15:0][8] ;
 wire \$0\ctrl[15:0][9] ;
 wire \$0\divider[15:0][0] ;
 wire \$0\divider[15:0][10] ;
 wire \$0\divider[15:0][11] ;
 wire \$0\divider[15:0][12] ;
 wire \$0\divider[15:0][13] ;
 wire \$0\divider[15:0][14] ;
 wire \$0\divider[15:0][15] ;
 wire \$0\divider[15:0][1] ;
 wire \$0\divider[15:0][2] ;
 wire \$0\divider[15:0][3] ;
 wire \$0\divider[15:0][4] ;
 wire \$0\divider[15:0][5] ;
 wire \$0\divider[15:0][6] ;
 wire \$0\divider[15:0][7] ;
 wire \$0\divider[15:0][8] ;
 wire \$0\divider[15:0][9] ;
 wire \$0\spi_int_o[0:0] ;
 wire \$0\ss[31:0][0] ;
 wire \$0\ss[31:0][10] ;
 wire \$0\ss[31:0][11] ;
 wire \$0\ss[31:0][12] ;
 wire \$0\ss[31:0][13] ;
 wire \$0\ss[31:0][14] ;
 wire \$0\ss[31:0][15] ;
 wire \$0\ss[31:0][16] ;
 wire \$0\ss[31:0][17] ;
 wire \$0\ss[31:0][18] ;
 wire \$0\ss[31:0][19] ;
 wire \$0\ss[31:0][1] ;
 wire \$0\ss[31:0][20] ;
 wire \$0\ss[31:0][21] ;
 wire \$0\ss[31:0][22] ;
 wire \$0\ss[31:0][23] ;
 wire \$0\ss[31:0][24] ;
 wire \$0\ss[31:0][25] ;
 wire \$0\ss[31:0][26] ;
 wire \$0\ss[31:0][27] ;
 wire \$0\ss[31:0][28] ;
 wire \$0\ss[31:0][29] ;
 wire \$0\ss[31:0][2] ;
 wire \$0\ss[31:0][30] ;
 wire \$0\ss[31:0][31] ;
 wire \$0\ss[31:0][3] ;
 wire \$0\ss[31:0][4] ;
 wire \$0\ss[31:0][5] ;
 wire \$0\ss[31:0][6] ;
 wire \$0\ss[31:0][7] ;
 wire \$0\ss[31:0][8] ;
 wire \$0\ss[31:0][9] ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23006 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23008 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23010 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23012 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23014 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23016 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23018 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23020 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23022 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23024 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23026 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23028 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23030 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23032 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23034 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23036 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23038 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23040 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23042 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23044 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23046 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23048 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23050 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23052 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23054 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23056 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23058 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23060 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23062 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23064 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23066 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23068 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23070 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23072 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23074 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23076 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23078 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23080 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23082 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23084 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23086 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23088 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23090 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23092 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23094 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23096 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23098 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23100 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23102 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23104 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23106 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23108 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23110 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23112 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23114 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23116 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23118 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23120 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23122 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23124 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23126 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23128 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23130 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23132 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23134 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23136 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23138 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23140 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23142 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23144 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23146 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23148 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23150 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23152 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23154 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23156 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23158 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23160 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23162 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23164 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23166 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23168 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23170 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23172 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23174 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23176 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23178 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23180 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23182 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23184 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23186 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23188 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23190 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23192 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23194 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23196 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23198 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23200 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23202 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23204 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23206 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23208 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23210 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23212 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23214 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23216 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23218 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23220 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23222 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23224 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23226 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23228 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23230 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23232 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23234 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23236 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23238 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23240 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23242 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23244 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23246 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23248 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23250 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23252 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23254 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23256 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23258 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23260 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23262 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23264 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23266 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23268 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23270 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23272 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23274 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23276 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23278 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23280 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23282 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23284 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23286 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23288 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23290 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23292 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23294 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23296 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23298 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23300 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23302 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23304 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23306 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23308 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23310 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23312 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23314 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23316 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23318 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23320 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23322 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23324 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23326 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23328 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23330 ;
 wire \$abc$23333$auto$rtlil.cc:1969:NotGate$23332 ;
 wire \$abc$23333$new_n1002_ ;
 wire \$abc$23333$new_n1007_ ;
 wire \$abc$23333$new_n1008_ ;
 wire \$abc$23333$new_n1013_ ;
 wire \$abc$23333$new_n1022_ ;
 wire \$abc$23333$new_n1023_ ;
 wire \$abc$23333$new_n1024_ ;
 wire \$abc$23333$new_n1028_ ;
 wire \$abc$23333$new_n1034_ ;
 wire \$abc$23333$new_n1043_ ;
 wire \$abc$23333$new_n1044_ ;
 wire \$abc$23333$new_n1045_ ;
 wire \$abc$23333$new_n1050_ ;
 wire \$abc$23333$new_n1055_ ;
 wire net17;
 wire clknet_leaf_6_PCLK;
 wire clknet_leaf_2_PCLK;
 wire \$abc$23333$new_n1067_ ;
 wire \$abc$23333$new_n1068_ ;
 wire \$abc$23333$new_n1069_ ;
 wire \$abc$23333$new_n1070_ ;
 wire clknet_leaf_1_PCLK;
 wire clknet_leaf_5_PCLK;
 wire \$abc$23333$new_n1073_ ;
 wire \$abc$23333$new_n1074_ ;
 wire \$abc$23333$new_n1075_ ;
 wire \$abc$23333$new_n1076_ ;
 wire \$abc$23333$new_n1077_ ;
 wire \$abc$23333$new_n1078_ ;
 wire net18;
 wire \$abc$23333$new_n1081_ ;
 wire clknet_leaf_4_PCLK;
 wire net21;
 wire \$abc$23333$new_n1084_ ;
 wire \$abc$23333$new_n1085_ ;
 wire \$abc$23333$new_n1086_ ;
 wire \$abc$23333$new_n1087_ ;
 wire \$abc$23333$new_n1088_ ;
 wire \$abc$23333$new_n1089_ ;
 wire \$abc$23333$new_n1090_ ;
 wire \$abc$23333$new_n1091_ ;
 wire \$abc$23333$new_n1092_ ;
 wire \$abc$23333$new_n1094_ ;
 wire \$abc$23333$new_n1095_ ;
 wire \$abc$23333$new_n1096_ ;
 wire \$abc$23333$new_n1097_ ;
 wire \$abc$23333$new_n1098_ ;
 wire net11;
 wire \$abc$23333$new_n1101_ ;
 wire \$abc$23333$new_n1102_ ;
 wire \$abc$23333$new_n1103_ ;
 wire \$abc$23333$new_n1104_ ;
 wire \$abc$23333$new_n1105_ ;
 wire \$abc$23333$new_n1107_ ;
 wire clknet_leaf_25_PCLK;
 wire \$abc$23333$new_n1110_ ;
 wire \$abc$23333$new_n1111_ ;
 wire \$abc$23333$new_n1112_ ;
 wire \$abc$23333$new_n1113_ ;
 wire \$abc$23333$new_n1114_ ;
 wire \$abc$23333$new_n1116_ ;
 wire \$abc$23333$new_n1117_ ;
 wire \$abc$23333$new_n1118_ ;
 wire \$abc$23333$new_n1119_ ;
 wire \$abc$23333$new_n1120_ ;
 wire \$abc$23333$new_n1121_ ;
 wire \$abc$23333$new_n1122_ ;
 wire \$abc$23333$new_n1123_ ;
 wire net15;
 wire \$abc$23333$new_n1125_ ;
 wire net10;
 wire \$abc$23333$new_n1128_ ;
 wire \$abc$23333$new_n1129_ ;
 wire \$abc$23333$new_n1130_ ;
 wire \$abc$23333$new_n1131_ ;
 wire \$abc$23333$new_n1132_ ;
 wire \$abc$23333$new_n1133_ ;
 wire \$abc$23333$new_n1134_ ;
 wire \$abc$23333$new_n1135_ ;
 wire clknet_leaf_0_PCLK;
 wire \$abc$23333$new_n1138_ ;
 wire \$abc$23333$new_n1139_ ;
 wire \$abc$23333$new_n1140_ ;
 wire \$abc$23333$new_n1141_ ;
 wire \$abc$23333$new_n1142_ ;
 wire \$abc$23333$new_n1143_ ;
 wire \$abc$23333$new_n1144_ ;
 wire clknet_leaf_3_PCLK;
 wire \$abc$23333$new_n1146_ ;
 wire clknet_leaf_26_PCLK;
 wire \$abc$23333$new_n1148_ ;
 wire \$abc$23333$new_n1149_ ;
 wire \$abc$23333$new_n1151_ ;
 wire \$abc$23333$new_n1152_ ;
 wire \$abc$23333$new_n1153_ ;
 wire \$abc$23333$new_n1154_ ;
 wire \$abc$23333$new_n1155_ ;
 wire \$abc$23333$new_n1156_ ;
 wire \$abc$23333$new_n1157_ ;
 wire clknet_leaf_24_PCLK;
 wire \$abc$23333$new_n1159_ ;
 wire \$abc$23333$new_n1161_ ;
 wire \$abc$23333$new_n1162_ ;
 wire \$abc$23333$new_n1163_ ;
 wire \$abc$23333$new_n1164_ ;
 wire \$abc$23333$new_n1165_ ;
 wire \$abc$23333$new_n1166_ ;
 wire \$abc$23333$new_n1167_ ;
 wire \$abc$23333$new_n1169_ ;
 wire \$abc$23333$new_n1170_ ;
 wire \$abc$23333$new_n1171_ ;
 wire \$abc$23333$new_n1172_ ;
 wire \$abc$23333$new_n1173_ ;
 wire \$abc$23333$new_n1175_ ;
 wire \$abc$23333$new_n1176_ ;
 wire \$abc$23333$new_n1177_ ;
 wire \$abc$23333$new_n1178_ ;
 wire \$abc$23333$new_n1179_ ;
 wire \$abc$23333$new_n1181_ ;
 wire \$abc$23333$new_n1182_ ;
 wire \$abc$23333$new_n1183_ ;
 wire \$abc$23333$new_n1184_ ;
 wire \$abc$23333$new_n1185_ ;
 wire \$abc$23333$new_n1186_ ;
 wire \$abc$23333$new_n1187_ ;
 wire \$abc$23333$new_n1189_ ;
 wire \$abc$23333$new_n1190_ ;
 wire \$abc$23333$new_n1191_ ;
 wire \$abc$23333$new_n1192_ ;
 wire \$abc$23333$new_n1193_ ;
 wire \$abc$23333$new_n1194_ ;
 wire \$abc$23333$new_n1195_ ;
 wire \$abc$23333$new_n1197_ ;
 wire \$abc$23333$new_n1198_ ;
 wire \$abc$23333$new_n1199_ ;
 wire \$abc$23333$new_n1200_ ;
 wire \$abc$23333$new_n1201_ ;
 wire \$abc$23333$new_n1202_ ;
 wire \$abc$23333$new_n1203_ ;
 wire \$abc$23333$new_n1204_ ;
 wire \$abc$23333$new_n1206_ ;
 wire \$abc$23333$new_n1207_ ;
 wire \$abc$23333$new_n1208_ ;
 wire \$abc$23333$new_n1209_ ;
 wire \$abc$23333$new_n1210_ ;
 wire \$abc$23333$new_n1211_ ;
 wire \$abc$23333$new_n1212_ ;
 wire \$abc$23333$new_n1213_ ;
 wire \$abc$23333$new_n1214_ ;
 wire \$abc$23333$new_n1216_ ;
 wire \$abc$23333$new_n1217_ ;
 wire \$abc$23333$new_n1218_ ;
 wire \$abc$23333$new_n1219_ ;
 wire \$abc$23333$new_n1221_ ;
 wire \$abc$23333$new_n1222_ ;
 wire \$abc$23333$new_n1223_ ;
 wire \$abc$23333$new_n1224_ ;
 wire \$abc$23333$new_n1226_ ;
 wire \$abc$23333$new_n1227_ ;
 wire \$abc$23333$new_n1228_ ;
 wire \$abc$23333$new_n1229_ ;
 wire \$abc$23333$new_n1231_ ;
 wire \$abc$23333$new_n1232_ ;
 wire \$abc$23333$new_n1233_ ;
 wire \$abc$23333$new_n1234_ ;
 wire \$abc$23333$new_n1236_ ;
 wire \$abc$23333$new_n1237_ ;
 wire \$abc$23333$new_n1238_ ;
 wire \$abc$23333$new_n1239_ ;
 wire \$abc$23333$new_n1241_ ;
 wire \$abc$23333$new_n1242_ ;
 wire \$abc$23333$new_n1243_ ;
 wire \$abc$23333$new_n1244_ ;
 wire \$abc$23333$new_n1246_ ;
 wire \$abc$23333$new_n1247_ ;
 wire \$abc$23333$new_n1248_ ;
 wire \$abc$23333$new_n1250_ ;
 wire \$abc$23333$new_n1251_ ;
 wire \$abc$23333$new_n1252_ ;
 wire \$abc$23333$new_n1253_ ;
 wire \$abc$23333$new_n1255_ ;
 wire \$abc$23333$new_n1256_ ;
 wire \$abc$23333$new_n1257_ ;
 wire \$abc$23333$new_n1259_ ;
 wire \$abc$23333$new_n1260_ ;
 wire \$abc$23333$new_n1261_ ;
 wire \$abc$23333$new_n1262_ ;
 wire \$abc$23333$new_n1264_ ;
 wire \$abc$23333$new_n1265_ ;
 wire \$abc$23333$new_n1266_ ;
 wire \$abc$23333$new_n1267_ ;
 wire \$abc$23333$new_n1269_ ;
 wire \$abc$23333$new_n1270_ ;
 wire \$abc$23333$new_n1271_ ;
 wire \$abc$23333$new_n1272_ ;
 wire \$abc$23333$new_n1274_ ;
 wire \$abc$23333$new_n1275_ ;
 wire \$abc$23333$new_n1276_ ;
 wire \$abc$23333$new_n1277_ ;
 wire \$abc$23333$new_n1279_ ;
 wire \$abc$23333$new_n1280_ ;
 wire \$abc$23333$new_n1281_ ;
 wire \$abc$23333$new_n1282_ ;
 wire \$abc$23333$new_n1284_ ;
 wire \$abc$23333$new_n1285_ ;
 wire \$abc$23333$new_n1286_ ;
 wire \$abc$23333$new_n1287_ ;
 wire \$abc$23333$new_n1289_ ;
 wire \$abc$23333$new_n1290_ ;
 wire \$abc$23333$new_n1291_ ;
 wire \$abc$23333$new_n1292_ ;
 wire \$abc$23333$new_n1294_ ;
 wire \$abc$23333$new_n1296_ ;
 wire \$abc$23333$new_n1298_ ;
 wire \$abc$23333$new_n1299_ ;
 wire \$abc$23333$new_n1301_ ;
 wire \$abc$23333$new_n1303_ ;
 wire \$abc$23333$new_n1304_ ;
 wire \$abc$23333$new_n1306_ ;
 wire \$abc$23333$new_n1307_ ;
 wire \$abc$23333$new_n1308_ ;
 wire \$abc$23333$new_n1310_ ;
 wire \$abc$23333$new_n1311_ ;
 wire \$abc$23333$new_n1313_ ;
 wire \$abc$23333$new_n1315_ ;
 wire \$abc$23333$new_n1316_ ;
 wire \$abc$23333$new_n1317_ ;
 wire \$abc$23333$new_n1319_ ;
 wire \$abc$23333$new_n1320_ ;
 wire \$abc$23333$new_n1322_ ;
 wire \$abc$23333$new_n1323_ ;
 wire \$abc$23333$new_n1325_ ;
 wire \$abc$23333$new_n1327_ ;
 wire \$abc$23333$new_n1329_ ;
 wire \$abc$23333$new_n1331_ ;
 wire \$abc$23333$new_n1333_ ;
 wire \$abc$23333$new_n1335_ ;
 wire \$abc$23333$new_n1337_ ;
 wire \$abc$23333$new_n1339_ ;
 wire \$abc$23333$new_n1341_ ;
 wire \$abc$23333$new_n1342_ ;
 wire \$abc$23333$new_n1344_ ;
 wire \$abc$23333$new_n1346_ ;
 wire \$abc$23333$new_n1348_ ;
 wire \$abc$23333$new_n1350_ ;
 wire \$abc$23333$new_n1352_ ;
 wire \$abc$23333$new_n1354_ ;
 wire \$abc$23333$new_n1356_ ;
 wire \$abc$23333$new_n1358_ ;
 wire \$abc$23333$new_n1360_ ;
 wire \$abc$23333$new_n1362_ ;
 wire \$abc$23333$new_n1363_ ;
 wire \$abc$23333$new_n1365_ ;
 wire \$abc$23333$new_n1367_ ;
 wire \$abc$23333$new_n1369_ ;
 wire \$abc$23333$new_n1371_ ;
 wire \$abc$23333$new_n1373_ ;
 wire \$abc$23333$new_n1375_ ;
 wire \$abc$23333$new_n1377_ ;
 wire \$abc$23333$new_n1379_ ;
 wire \$abc$23333$new_n1381_ ;
 wire \$abc$23333$new_n1382_ ;
 wire \$abc$23333$new_n1383_ ;
 wire \$abc$23333$new_n1384_ ;
 wire \$abc$23333$new_n1385_ ;
 wire \$abc$23333$new_n1387_ ;
 wire \$abc$23333$new_n1389_ ;
 wire \$abc$23333$new_n1390_ ;
 wire \$abc$23333$new_n1391_ ;
 wire \$abc$23333$new_n1393_ ;
 wire \$abc$23333$new_n1394_ ;
 wire \$abc$23333$new_n1395_ ;
 wire \$abc$23333$new_n1397_ ;
 wire \$abc$23333$new_n1399_ ;
 wire \$abc$23333$new_n1400_ ;
 wire \$abc$23333$new_n1401_ ;
 wire \$abc$23333$new_n1402_ ;
 wire \$abc$23333$new_n1404_ ;
 wire \$abc$23333$new_n1406_ ;
 wire \$abc$23333$new_n1407_ ;
 wire \$abc$23333$new_n1409_ ;
 wire \$abc$23333$new_n1410_ ;
 wire \$abc$23333$new_n1412_ ;
 wire \$abc$23333$new_n1413_ ;
 wire \$abc$23333$new_n1415_ ;
 wire \$abc$23333$new_n1417_ ;
 wire \$abc$23333$new_n1418_ ;
 wire \$abc$23333$new_n1420_ ;
 wire \$abc$23333$new_n1422_ ;
 wire \$abc$23333$new_n1423_ ;
 wire \$abc$23333$new_n1425_ ;
 wire \$abc$23333$new_n1426_ ;
 wire \$abc$23333$new_n1428_ ;
 wire \$abc$23333$new_n1429_ ;
 wire \$abc$23333$new_n1431_ ;
 wire \$abc$23333$new_n1433_ ;
 wire \$abc$23333$new_n1435_ ;
 wire \$abc$23333$new_n1436_ ;
 wire \$abc$23333$new_n1438_ ;
 wire \$abc$23333$new_n1439_ ;
 wire \$abc$23333$new_n1440_ ;
 wire \$abc$23333$new_n1442_ ;
 wire \$abc$23333$new_n1443_ ;
 wire \$abc$23333$new_n1445_ ;
 wire \$abc$23333$new_n1447_ ;
 wire net14;
 wire \$abc$23333$new_n1449_ ;
 wire \$abc$23333$new_n1451_ ;
 wire \$abc$23333$new_n1453_ ;
 wire \$abc$23333$new_n1455_ ;
 wire \$abc$23333$new_n1457_ ;
 wire \$abc$23333$new_n1459_ ;
 wire \$abc$23333$new_n1461_ ;
 wire \$abc$23333$new_n1463_ ;
 wire \$abc$23333$new_n1465_ ;
 wire \$abc$23333$new_n1467_ ;
 wire \$abc$23333$new_n1469_ ;
 wire \$abc$23333$new_n1471_ ;
 wire \$abc$23333$new_n1473_ ;
 wire \$abc$23333$new_n1475_ ;
 wire \$abc$23333$new_n1477_ ;
 wire \$abc$23333$new_n1479_ ;
 wire \$abc$23333$new_n1481_ ;
 wire \$abc$23333$new_n1483_ ;
 wire \$abc$23333$new_n1485_ ;
 wire \$abc$23333$new_n1487_ ;
 wire \$abc$23333$new_n1489_ ;
 wire \$abc$23333$new_n1490_ ;
 wire \$abc$23333$new_n1492_ ;
 wire \$abc$23333$new_n1494_ ;
 wire \$abc$23333$new_n1496_ ;
 wire \$abc$23333$new_n1498_ ;
 wire \$abc$23333$new_n1500_ ;
 wire \$abc$23333$new_n1502_ ;
 wire \$abc$23333$new_n1504_ ;
 wire \$abc$23333$new_n1506_ ;
 wire \$abc$23333$new_n1508_ ;
 wire \$abc$23333$new_n1510_ ;
 wire \$abc$23333$new_n1512_ ;
 wire \$abc$23333$new_n1514_ ;
 wire \$abc$23333$new_n1516_ ;
 wire \$abc$23333$new_n1518_ ;
 wire \$abc$23333$new_n1520_ ;
 wire \$abc$23333$new_n1522_ ;
 wire \$abc$23333$new_n1524_ ;
 wire \$abc$23333$new_n1526_ ;
 wire \$abc$23333$new_n1527_ ;
 wire \$abc$23333$new_n1528_ ;
 wire net12;
 wire \$abc$23333$new_n1531_ ;
 wire \$abc$23333$new_n1534_ ;
 wire \$abc$23333$new_n1535_ ;
 wire \$abc$23333$new_n1537_ ;
 wire \$abc$23333$new_n1538_ ;
 wire \$abc$23333$new_n1539_ ;
 wire \$abc$23333$new_n1541_ ;
 wire \$abc$23333$new_n1542_ ;
 wire \$abc$23333$new_n1543_ ;
 wire \$abc$23333$new_n1545_ ;
 wire \$abc$23333$new_n1546_ ;
 wire \$abc$23333$new_n1548_ ;
 wire \$abc$23333$new_n1549_ ;
 wire \$abc$23333$new_n1550_ ;
 wire \$abc$23333$new_n1551_ ;
 wire \$abc$23333$new_n1553_ ;
 wire \$abc$23333$new_n1554_ ;
 wire \$abc$23333$new_n1556_ ;
 wire \$abc$23333$new_n1557_ ;
 wire \$abc$23333$new_n1559_ ;
 wire \$abc$23333$new_n1560_ ;
 wire \$abc$23333$new_n1562_ ;
 wire \$abc$23333$new_n1563_ ;
 wire \$abc$23333$new_n1564_ ;
 wire \$abc$23333$new_n1565_ ;
 wire \$abc$23333$new_n1567_ ;
 wire \$abc$23333$new_n1568_ ;
 wire \$abc$23333$new_n1570_ ;
 wire \$abc$23333$new_n1571_ ;
 wire \$abc$23333$new_n1572_ ;
 wire \$abc$23333$new_n1573_ ;
 wire \$abc$23333$new_n1575_ ;
 wire \$abc$23333$new_n1576_ ;
 wire \$abc$23333$new_n1578_ ;
 wire \$abc$23333$new_n1579_ ;
 wire \$abc$23333$new_n1580_ ;
 wire \$abc$23333$new_n1582_ ;
 wire \$abc$23333$new_n1583_ ;
 wire \$abc$23333$new_n1584_ ;
 wire \$abc$23333$new_n1585_ ;
 wire \$abc$23333$new_n1587_ ;
 wire \$abc$23333$new_n1588_ ;
 wire \$abc$23333$new_n1590_ ;
 wire \$abc$23333$new_n1591_ ;
 wire \$abc$23333$new_n1593_ ;
 wire net13;
 wire \$abc$23333$new_n1638_ ;
 wire \$abc$23333$new_n1649_ ;
 wire \$abc$23333$new_n1660_ ;
 wire \$abc$23333$new_n1671_ ;
 wire \$abc$23333$new_n1682_ ;
 wire \$abc$23333$new_n1693_ ;
 wire \$abc$23333$new_n1694_ ;
 wire \$abc$23333$new_n1705_ ;
 wire \$abc$23333$new_n1716_ ;
 wire \$abc$23333$new_n1727_ ;
 wire \$abc$23333$new_n1738_ ;
 wire \$abc$23333$new_n1749_ ;
 wire \$abc$23333$new_n1760_ ;
 wire \$abc$23333$new_n1771_ ;
 wire \$abc$23333$new_n1782_ ;
 wire \$abc$23333$new_n1793_ ;
 wire \$abc$23333$new_n731_ ;
 wire \$abc$23333$new_n732_ ;
 wire clknet_leaf_17_PCLK;
 wire \$abc$23333$new_n735_ ;
 wire \$abc$23333$new_n736_ ;
 wire \$abc$23333$new_n737_ ;
 wire \$abc$23333$new_n738_ ;
 wire clknet_leaf_22_PCLK;
 wire \$abc$23333$new_n740_ ;
 wire \$abc$23333$new_n741_ ;
 wire \$abc$23333$new_n742_ ;
 wire \$abc$23333$new_n743_ ;
 wire \$abc$23333$new_n744_ ;
 wire \$abc$23333$new_n745_ ;
 wire \$abc$23333$new_n746_ ;
 wire \$abc$23333$new_n747_ ;
 wire \$abc$23333$new_n748_ ;
 wire \$abc$23333$new_n749_ ;
 wire clknet_0_PCLK;
 wire \$abc$23333$new_n752_ ;
 wire \$abc$23333$new_n754_ ;
 wire \$abc$23333$new_n755_ ;
 wire clknet_leaf_7_PCLK;
 wire net20;
 wire \$abc$23333$new_n758_ ;
 wire \$abc$23333$new_n759_ ;
 wire \$abc$23333$new_n760_ ;
 wire clknet_leaf_11_PCLK;
 wire clknet_leaf_9_PCLK;
 wire \$abc$23333$new_n763_ ;
 wire \$abc$23333$new_n764_ ;
 wire \$abc$23333$new_n765_ ;
 wire \$abc$23333$new_n766_ ;
 wire clknet_leaf_12_PCLK;
 wire clknet_leaf_13_PCLK;
 wire clknet_leaf_14_PCLK;
 wire \$abc$23333$new_n770_ ;
 wire clknet_1_0__leaf_PCLK;
 wire \$abc$23333$new_n772_ ;
 wire clknet_leaf_8_PCLK;
 wire clknet_leaf_10_PCLK;
 wire \$abc$23333$new_n776_ ;
 wire \$abc$23333$new_n777_ ;
 wire \$abc$23333$new_n778_ ;
 wire \$abc$23333$new_n781_ ;
 wire \$abc$23333$new_n783_ ;
 wire clknet_leaf_23_PCLK;
 wire \$abc$23333$new_n785_ ;
 wire \$abc$23333$new_n786_ ;
 wire \$abc$23333$new_n787_ ;
 wire \$abc$23333$new_n788_ ;
 wire \$abc$23333$new_n790_ ;
 wire \$abc$23333$new_n791_ ;
 wire \$abc$23333$new_n792_ ;
 wire \$abc$23333$new_n793_ ;
 wire \$abc$23333$new_n794_ ;
 wire \$abc$23333$new_n795_ ;
 wire \$abc$23333$new_n797_ ;
 wire \$abc$23333$new_n798_ ;
 wire \$abc$23333$new_n799_ ;
 wire \$abc$23333$new_n800_ ;
 wire \$abc$23333$new_n801_ ;
 wire \$abc$23333$new_n803_ ;
 wire \$abc$23333$new_n804_ ;
 wire \$abc$23333$new_n806_ ;
 wire \$abc$23333$new_n807_ ;
 wire \$abc$23333$new_n808_ ;
 wire \$abc$23333$new_n810_ ;
 wire \$abc$23333$new_n811_ ;
 wire \$abc$23333$new_n812_ ;
 wire \$abc$23333$new_n813_ ;
 wire \$abc$23333$new_n815_ ;
 wire \$abc$23333$new_n816_ ;
 wire \$abc$23333$new_n818_ ;
 wire \$abc$23333$new_n819_ ;
 wire \$abc$23333$new_n821_ ;
 wire \$abc$23333$new_n823_ ;
 wire \$abc$23333$new_n825_ ;
 wire \$abc$23333$new_n827_ ;
 wire \$abc$23333$new_n829_ ;
 wire \$abc$23333$new_n831_ ;
 wire \$abc$23333$new_n833_ ;
 wire \$abc$23333$new_n835_ ;
 wire \$abc$23333$new_n836_ ;
 wire \$abc$23333$new_n838_ ;
 wire \$abc$23333$new_n839_ ;
 wire \$abc$23333$new_n841_ ;
 wire net16;
 wire \$abc$23333$new_n843_ ;
 wire \$abc$23333$new_n845_ ;
 wire \$abc$23333$new_n847_ ;
 wire \$abc$23333$new_n848_ ;
 wire clknet_leaf_21_PCLK;
 wire net19;
 wire \$abc$23333$new_n851_ ;
 wire \$abc$23333$new_n853_ ;
 wire \$abc$23333$new_n854_ ;
 wire \$abc$23333$new_n855_ ;
 wire clknet_leaf_18_PCLK;
 wire \$abc$23333$new_n857_ ;
 wire \$abc$23333$new_n858_ ;
 wire \$abc$23333$new_n859_ ;
 wire \$abc$23333$new_n860_ ;
 wire \$abc$23333$new_n862_ ;
 wire \$abc$23333$new_n863_ ;
 wire \$abc$23333$new_n864_ ;
 wire \$abc$23333$new_n865_ ;
 wire clknet_leaf_19_PCLK;
 wire \$abc$23333$new_n867_ ;
 wire \$abc$23333$new_n868_ ;
 wire \$abc$23333$new_n870_ ;
 wire \$abc$23333$new_n871_ ;
 wire \$abc$23333$new_n872_ ;
 wire \$abc$23333$new_n873_ ;
 wire \$abc$23333$new_n874_ ;
 wire \$abc$23333$new_n875_ ;
 wire \$abc$23333$new_n876_ ;
 wire \$abc$23333$new_n877_ ;
 wire \$abc$23333$new_n878_ ;
 wire \$abc$23333$new_n880_ ;
 wire \$abc$23333$new_n881_ ;
 wire \$abc$23333$new_n882_ ;
 wire clknet_leaf_20_PCLK;
 wire \$abc$23333$new_n884_ ;
 wire \$abc$23333$new_n885_ ;
 wire \$abc$23333$new_n887_ ;
 wire \$abc$23333$new_n888_ ;
 wire \$abc$23333$new_n889_ ;
 wire \$abc$23333$new_n890_ ;
 wire \$abc$23333$new_n891_ ;
 wire \$abc$23333$new_n892_ ;
 wire \$abc$23333$new_n893_ ;
 wire \$abc$23333$new_n894_ ;
 wire \$abc$23333$new_n896_ ;
 wire \$abc$23333$new_n897_ ;
 wire \$abc$23333$new_n898_ ;
 wire \$abc$23333$new_n899_ ;
 wire \$abc$23333$new_n900_ ;
 wire \$abc$23333$new_n901_ ;
 wire \$abc$23333$new_n902_ ;
 wire clknet_leaf_16_PCLK;
 wire \$abc$23333$new_n905_ ;
 wire \$abc$23333$new_n906_ ;
 wire clknet_leaf_15_PCLK;
 wire \$abc$23333$new_n908_ ;
 wire \$abc$23333$new_n910_ ;
 wire \$abc$23333$new_n911_ ;
 wire \$abc$23333$new_n912_ ;
 wire \$abc$23333$new_n914_ ;
 wire \$abc$23333$new_n915_ ;
 wire \$abc$23333$new_n917_ ;
 wire \$abc$23333$new_n918_ ;
 wire \$abc$23333$new_n919_ ;
 wire \$abc$23333$new_n921_ ;
 wire \$abc$23333$new_n922_ ;
 wire \$abc$23333$new_n924_ ;
 wire \$abc$23333$new_n925_ ;
 wire \$abc$23333$new_n926_ ;
 wire \$abc$23333$new_n928_ ;
 wire \$abc$23333$new_n929_ ;
 wire \$abc$23333$new_n930_ ;
 wire \$abc$23333$new_n932_ ;
 wire \$abc$23333$new_n933_ ;
 wire \$abc$23333$new_n934_ ;
 wire \$abc$23333$new_n935_ ;
 wire \$abc$23333$new_n937_ ;
 wire \$abc$23333$new_n938_ ;
 wire \$abc$23333$new_n939_ ;
 wire \$abc$23333$new_n940_ ;
 wire \$abc$23333$new_n942_ ;
 wire \$abc$23333$new_n944_ ;
 wire \$abc$23333$new_n945_ ;
 wire \$abc$23333$new_n947_ ;
 wire clknet_1_1__leaf_PCLK;
 wire \$abc$23333$new_n950_ ;
 wire \$abc$23333$new_n952_ ;
 wire \$abc$23333$new_n954_ ;
 wire \$abc$23333$new_n956_ ;
 wire \$abc$23333$new_n958_ ;
 wire \$abc$23333$new_n960_ ;
 wire \$abc$23333$new_n961_ ;
 wire \$abc$23333$new_n963_ ;
 wire \$abc$23333$new_n964_ ;
 wire \$abc$23333$new_n965_ ;
 wire \$abc$23333$new_n967_ ;
 wire \$abc$23333$new_n969_ ;
 wire \$abc$23333$new_n970_ ;
 wire \$abc$23333$new_n972_ ;
 wire \$abc$23333$new_n974_ ;
 wire \$abc$23333$new_n976_ ;
 wire \$abc$23333$new_n978_ ;
 wire \$abc$23333$new_n979_ ;
 wire \$abc$23333$new_n980_ ;
 wire \$abc$23333$new_n981_ ;
 wire \$abc$23333$new_n982_ ;
 wire \$abc$23333$new_n984_ ;
 wire \$abc$23333$new_n993_ ;
 wire \$abc$23333$techmap\u_clgen.$0\clk_out[0:0] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][0] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][10] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][11] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][12] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][13] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][14] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][15] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][1] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][2] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][3] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][4] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][5] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][6] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][7] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][8] ;
 wire \$abc$23333$techmap\u_clgen.$0\counter[15:0][9] ;
 wire \$abc$23333$techmap\u_clgen.$0\neg_edge[0:0] ;
 wire \$abc$23333$techmap\u_clgen.$0\pos_edge[0:0] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][0] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][100] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][101] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][102] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][103] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][104] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][105] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][106] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][107] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][108] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][109] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][10] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][110] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][111] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][112] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][113] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][114] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][115] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][116] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][117] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][118] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][119] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][11] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][120] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][121] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][122] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][123] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][124] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][125] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][126] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][127] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][12] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][13] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][14] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][15] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][16] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][17] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][18] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][19] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][1] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][20] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][21] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][22] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][23] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][24] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][25] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][26] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][27] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][28] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][29] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][2] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][30] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][31] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][32] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][33] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][34] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][35] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][36] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][37] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][38] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][39] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][3] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][40] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][41] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][42] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][43] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][44] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][45] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][46] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][47] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][48] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][49] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][4] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][50] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][51] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][52] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][53] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][54] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][55] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][56] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][57] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][58] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][59] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][5] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][60] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][61] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][62] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][63] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][64] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][65] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][66] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][67] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][68] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][69] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][6] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][70] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][71] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][72] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][73] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][74] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][75] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][76] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][77] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][78] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][79] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][7] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][80] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][81] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][82] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][83] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][84] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][85] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][86] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][87] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][88] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][89] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][8] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][90] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][91] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][92] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][93] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][94] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][95] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][96] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][97] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][98] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][99] ;
 wire \$abc$23333$techmap\u_shift.$0\IN_reg[127:0][9] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][0] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][1] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][2] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][3] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][4] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][5] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][6] ;
 wire \$abc$23333$techmap\u_shift.$0\counter[7:0][7] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][0] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][1] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][2] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][3] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][4] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][5] ;
 wire \$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][6] ;
 wire \$abc$23333$techmap\u_shift.$0\serial_out[0:0] ;
 wire \$abc$23333$techmap\u_shift.$0\t_progress[0:0] ;
 wire \ctrl[0] ;
 wire \ctrl[10] ;
 wire \ctrl[11] ;
 wire \ctrl[12] ;
 wire \ctrl[13] ;
 wire \ctrl[14] ;
 wire \ctrl[15] ;
 wire \ctrl[1] ;
 wire \ctrl[2] ;
 wire \ctrl[3] ;
 wire \ctrl[4] ;
 wire \ctrl[5] ;
 wire \ctrl[6] ;
 wire \ctrl[7] ;
 wire \ctrl[8] ;
 wire \ctrl[9] ;
 wire \divider[0] ;
 wire \divider[10] ;
 wire \divider[11] ;
 wire \divider[12] ;
 wire \divider[13] ;
 wire \divider[14] ;
 wire \divider[15] ;
 wire \divider[1] ;
 wire \divider[2] ;
 wire \divider[3] ;
 wire \divider[4] ;
 wire \divider[5] ;
 wire \divider[6] ;
 wire \divider[7] ;
 wire \divider[8] ;
 wire \divider[9] ;
 wire \ss[0] ;
 wire \ss[10] ;
 wire \ss[11] ;
 wire \ss[12] ;
 wire \ss[13] ;
 wire \ss[14] ;
 wire \ss[15] ;
 wire \ss[16] ;
 wire \ss[17] ;
 wire \ss[18] ;
 wire \ss[19] ;
 wire \ss[1] ;
 wire \ss[20] ;
 wire \ss[21] ;
 wire \ss[22] ;
 wire \ss[23] ;
 wire \ss[24] ;
 wire \ss[25] ;
 wire \ss[26] ;
 wire \ss[27] ;
 wire \ss[28] ;
 wire \ss[29] ;
 wire \ss[2] ;
 wire \ss[30] ;
 wire \ss[31] ;
 wire \ss[3] ;
 wire \ss[4] ;
 wire \ss[5] ;
 wire \ss[6] ;
 wire \ss[7] ;
 wire \ss[8] ;
 wire \ss[9] ;
 wire \tx_latch[0] ;
 wire \tx_latch[1] ;
 wire \tx_latch[2] ;
 wire \tx_latch[3] ;
 wire \u_clgen.clk_out ;
 wire \u_clgen.counter[0] ;
 wire \u_clgen.counter[10] ;
 wire \u_clgen.counter[11] ;
 wire \u_clgen.counter[12] ;
 wire \u_clgen.counter[13] ;
 wire \u_clgen.counter[14] ;
 wire \u_clgen.counter[15] ;
 wire \u_clgen.counter[1] ;
 wire \u_clgen.counter[2] ;
 wire \u_clgen.counter[3] ;
 wire \u_clgen.counter[4] ;
 wire \u_clgen.counter[5] ;
 wire \u_clgen.counter[6] ;
 wire \u_clgen.counter[7] ;
 wire \u_clgen.counter[8] ;
 wire \u_clgen.counter[9] ;
 wire \u_clgen.neg_edge ;
 wire \u_clgen.pos_edge ;
 wire \u_shift.IN_reg[0] ;
 wire \u_shift.IN_reg[100] ;
 wire \u_shift.IN_reg[101] ;
 wire \u_shift.IN_reg[102] ;
 wire \u_shift.IN_reg[103] ;
 wire \u_shift.IN_reg[104] ;
 wire \u_shift.IN_reg[105] ;
 wire \u_shift.IN_reg[106] ;
 wire \u_shift.IN_reg[107] ;
 wire \u_shift.IN_reg[108] ;
 wire \u_shift.IN_reg[109] ;
 wire \u_shift.IN_reg[10] ;
 wire \u_shift.IN_reg[110] ;
 wire \u_shift.IN_reg[111] ;
 wire \u_shift.IN_reg[112] ;
 wire \u_shift.IN_reg[113] ;
 wire \u_shift.IN_reg[114] ;
 wire \u_shift.IN_reg[115] ;
 wire \u_shift.IN_reg[116] ;
 wire \u_shift.IN_reg[117] ;
 wire \u_shift.IN_reg[118] ;
 wire \u_shift.IN_reg[119] ;
 wire \u_shift.IN_reg[11] ;
 wire \u_shift.IN_reg[120] ;
 wire \u_shift.IN_reg[121] ;
 wire \u_shift.IN_reg[122] ;
 wire \u_shift.IN_reg[123] ;
 wire \u_shift.IN_reg[124] ;
 wire \u_shift.IN_reg[125] ;
 wire \u_shift.IN_reg[126] ;
 wire \u_shift.IN_reg[127] ;
 wire \u_shift.IN_reg[12] ;
 wire \u_shift.IN_reg[13] ;
 wire \u_shift.IN_reg[14] ;
 wire \u_shift.IN_reg[15] ;
 wire \u_shift.IN_reg[16] ;
 wire \u_shift.IN_reg[17] ;
 wire \u_shift.IN_reg[18] ;
 wire \u_shift.IN_reg[19] ;
 wire \u_shift.IN_reg[1] ;
 wire \u_shift.IN_reg[20] ;
 wire \u_shift.IN_reg[21] ;
 wire \u_shift.IN_reg[22] ;
 wire \u_shift.IN_reg[23] ;
 wire \u_shift.IN_reg[24] ;
 wire \u_shift.IN_reg[25] ;
 wire \u_shift.IN_reg[26] ;
 wire \u_shift.IN_reg[27] ;
 wire \u_shift.IN_reg[28] ;
 wire \u_shift.IN_reg[29] ;
 wire \u_shift.IN_reg[2] ;
 wire \u_shift.IN_reg[30] ;
 wire \u_shift.IN_reg[31] ;
 wire \u_shift.IN_reg[32] ;
 wire \u_shift.IN_reg[33] ;
 wire \u_shift.IN_reg[34] ;
 wire \u_shift.IN_reg[35] ;
 wire \u_shift.IN_reg[36] ;
 wire \u_shift.IN_reg[37] ;
 wire \u_shift.IN_reg[38] ;
 wire \u_shift.IN_reg[39] ;
 wire \u_shift.IN_reg[3] ;
 wire \u_shift.IN_reg[40] ;
 wire \u_shift.IN_reg[41] ;
 wire \u_shift.IN_reg[42] ;
 wire \u_shift.IN_reg[43] ;
 wire \u_shift.IN_reg[44] ;
 wire \u_shift.IN_reg[45] ;
 wire \u_shift.IN_reg[46] ;
 wire \u_shift.IN_reg[47] ;
 wire \u_shift.IN_reg[48] ;
 wire \u_shift.IN_reg[49] ;
 wire \u_shift.IN_reg[4] ;
 wire \u_shift.IN_reg[50] ;
 wire \u_shift.IN_reg[51] ;
 wire \u_shift.IN_reg[52] ;
 wire \u_shift.IN_reg[53] ;
 wire \u_shift.IN_reg[54] ;
 wire \u_shift.IN_reg[55] ;
 wire \u_shift.IN_reg[56] ;
 wire \u_shift.IN_reg[57] ;
 wire \u_shift.IN_reg[58] ;
 wire \u_shift.IN_reg[59] ;
 wire \u_shift.IN_reg[5] ;
 wire \u_shift.IN_reg[60] ;
 wire \u_shift.IN_reg[61] ;
 wire \u_shift.IN_reg[62] ;
 wire \u_shift.IN_reg[63] ;
 wire \u_shift.IN_reg[64] ;
 wire \u_shift.IN_reg[65] ;
 wire \u_shift.IN_reg[66] ;
 wire \u_shift.IN_reg[67] ;
 wire \u_shift.IN_reg[68] ;
 wire \u_shift.IN_reg[69] ;
 wire \u_shift.IN_reg[6] ;
 wire \u_shift.IN_reg[70] ;
 wire \u_shift.IN_reg[71] ;
 wire \u_shift.IN_reg[72] ;
 wire \u_shift.IN_reg[73] ;
 wire \u_shift.IN_reg[74] ;
 wire \u_shift.IN_reg[75] ;
 wire \u_shift.IN_reg[76] ;
 wire \u_shift.IN_reg[77] ;
 wire \u_shift.IN_reg[78] ;
 wire \u_shift.IN_reg[79] ;
 wire \u_shift.IN_reg[7] ;
 wire \u_shift.IN_reg[80] ;
 wire \u_shift.IN_reg[81] ;
 wire \u_shift.IN_reg[82] ;
 wire \u_shift.IN_reg[83] ;
 wire \u_shift.IN_reg[84] ;
 wire \u_shift.IN_reg[85] ;
 wire \u_shift.IN_reg[86] ;
 wire \u_shift.IN_reg[87] ;
 wire \u_shift.IN_reg[88] ;
 wire \u_shift.IN_reg[89] ;
 wire \u_shift.IN_reg[8] ;
 wire \u_shift.IN_reg[90] ;
 wire \u_shift.IN_reg[91] ;
 wire \u_shift.IN_reg[92] ;
 wire \u_shift.IN_reg[93] ;
 wire \u_shift.IN_reg[94] ;
 wire \u_shift.IN_reg[95] ;
 wire \u_shift.IN_reg[96] ;
 wire \u_shift.IN_reg[97] ;
 wire \u_shift.IN_reg[98] ;
 wire \u_shift.IN_reg[99] ;
 wire \u_shift.IN_reg[9] ;
 wire \u_shift.counter[0] ;
 wire \u_shift.counter[1] ;
 wire \u_shift.counter[2] ;
 wire \u_shift.counter[3] ;
 wire \u_shift.counter[4] ;
 wire \u_shift.counter[5] ;
 wire \u_shift.counter[6] ;
 wire \u_shift.counter[7] ;
 wire \u_shift.rx_bit_pos[0] ;
 wire \u_shift.rx_bit_pos[1] ;
 wire \u_shift.rx_bit_pos[2] ;
 wire \u_shift.rx_bit_pos[3] ;
 wire \u_shift.rx_bit_pos[4] ;
 wire \u_shift.rx_bit_pos[5] ;
 wire \u_shift.rx_bit_pos[6] ;
 wire \u_shift.serial_out ;
 wire \u_shift.t_progress ;

 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23334  (.A(PRESETn),
    .X(\$abc$23333$new_n731_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23335  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n732_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23336  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23332 ));
 sky130_fd_sc_hd__inv_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23338  (.A(net18),
    .Y(\$abc$23333$new_n735_ ));
 sky130_fd_sc_hd__or3_4 \$abc$23333$auto$blifparse.cc:371:parse_blif$23339  (.A(\u_clgen.counter[10] ),
    .B(\u_clgen.counter[11] ),
    .C(\u_clgen.counter[12] ),
    .X(\$abc$23333$new_n736_ ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23340  (.A(\u_clgen.counter[8] ),
    .B(\u_clgen.counter[9] ),
    .C(\u_clgen.counter[13] ),
    .X(\$abc$23333$new_n737_ ));
 sky130_fd_sc_hd__or4_4 \$abc$23333$auto$blifparse.cc:371:parse_blif$23341  (.A(\u_clgen.counter[14] ),
    .B(\u_clgen.counter[15] ),
    .C(\$abc$23333$new_n736_ ),
    .D(\$abc$23333$new_n737_ ),
    .X(\$abc$23333$new_n738_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23343  (.A(\u_clgen.counter[4] ),
    .B(\u_clgen.counter[5] ),
    .C(\u_clgen.counter[6] ),
    .D(\u_clgen.counter[7] ),
    .Y(\$abc$23333$new_n740_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23344  (.A(\u_clgen.counter[1] ),
    .B(\u_clgen.counter[2] ),
    .C(\u_clgen.counter[3] ),
    .Y(\$abc$23333$new_n741_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23345  (.A(\u_clgen.counter[0] ),
    .B(\$abc$23333$new_n740_ ),
    .C(\$abc$23333$new_n741_ ),
    .Y(\$abc$23333$new_n742_ ));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23346  (.A(\$abc$23333$new_n738_ ),
    .SLEEP(\$abc$23333$new_n742_ ),
    .X(\$abc$23333$new_n743_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23347  (.A(\divider[7] ),
    .B(\divider[6] ),
    .C(\divider[5] ),
    .D(\divider[0] ),
    .Y(\$abc$23333$new_n744_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23348  (.A(\divider[4] ),
    .B(\divider[3] ),
    .C(\divider[2] ),
    .D(\divider[1] ),
    .Y(\$abc$23333$new_n745_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23349  (.A(\divider[15] ),
    .B(\divider[14] ),
    .C(\divider[13] ),
    .D(\divider[8] ),
    .Y(\$abc$23333$new_n746_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23350  (.A(\divider[12] ),
    .B(\divider[11] ),
    .C(\divider[10] ),
    .D(\divider[9] ),
    .Y(\$abc$23333$new_n747_ ));
 sky130_fd_sc_hd__nand4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23351  (.A(\$abc$23333$new_n744_ ),
    .B(\$abc$23333$new_n745_ ),
    .C(\$abc$23333$new_n746_ ),
    .D(\$abc$23333$new_n747_ ),
    .Y(\$abc$23333$new_n748_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23352  (.A1(\$abc$23333$new_n735_ ),
    .A2(\ctrl[12] ),
    .B1(\u_clgen.clk_out ),
    .Y(\$abc$23333$new_n749_ ));
 sky130_fd_sc_hd__o32ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23353  (.A1(\$abc$23333$new_n735_ ),
    .A2(\u_clgen.clk_out ),
    .A3(\$abc$23333$new_n743_ ),
    .B1(\$abc$23333$new_n748_ ),
    .B2(\$abc$23333$new_n749_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\pos_edge[0:0] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23355  (.A0(\$abc$23333$new_n748_ ),
    .A1(\$abc$23333$new_n743_ ),
    .S(\u_clgen.clk_out ),
    .X(\$abc$23333$new_n752_ ));
 sky130_fd_sc_hd__nor2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23356  (.A(\$abc$23333$new_n735_ ),
    .B(\$abc$23333$new_n752_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\neg_edge[0:0] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23357  (.A(miso_pad_i),
    .X(\$abc$23333$new_n754_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23358  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n755_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23361  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .Y(\$abc$23333$new_n758_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23362  (.A(net18),
    .B(\u_clgen.pos_edge ),
    .Y(\$abc$23333$new_n759_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23363  (.A(\$abc$23333$new_n758_ ),
    .B(\$abc$23333$new_n759_ ),
    .Y(\$abc$23333$new_n760_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23366  (.A(\u_shift.rx_bit_pos[3] ),
    .SLEEP(\u_shift.rx_bit_pos[2] ),
    .X(\$abc$23333$new_n763_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23367  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n763_ ),
    .Y(\$abc$23333$new_n764_ ));
 sky130_fd_sc_hd__buf_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23368  (.A(PADDR[4]),
    .X(\$abc$23333$new_n765_ ));
 sky130_fd_sc_hd__nand4b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23369  (.A_N(net18),
    .B(PWRITE),
    .C(PSEL),
    .D(PENABLE),
    .Y(\$abc$23333$new_n766_ ));
 sky130_fd_sc_hd__o2111ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23373  (.A1(\$abc$23333$new_n765_ ),
    .A2(\$abc$23333$new_n766_ ),
    .B1(\u_shift.rx_bit_pos[4] ),
    .C1(\u_shift.rx_bit_pos[5] ),
    .D1(\u_shift.rx_bit_pos[6] ),
    .Y(\$abc$23333$new_n770_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23375  (.A(\$abc$23333$new_n764_ ),
    .B(net15),
    .Y(\$abc$23333$new_n772_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23376  (.A0(\u_shift.IN_reg[123] ),
    .A1(\$abc$23333$new_n755_ ),
    .S(\$abc$23333$new_n772_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][123] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23379  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n760_ ),
    .Y(\$abc$23333$new_n776_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23380  (.A1(PADDR[4]),
    .A2(\$abc$23333$new_n766_ ),
    .B1(\u_shift.rx_bit_pos[6] ),
    .Y(\$abc$23333$new_n777_ ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23381  (.A(\u_shift.rx_bit_pos[5] ),
    .B(\u_shift.rx_bit_pos[4] ),
    .C(\$abc$23333$new_n777_ ),
    .X(\$abc$23333$new_n778_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23384  (.A(\$abc$23333$new_n776_ ),
    .B(\$abc$23333$new_n778_ ),
    .Y(\$abc$23333$new_n781_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23385  (.A0(\u_shift.IN_reg[79] ),
    .A1(\$abc$23333$new_n755_ ),
    .S(\$abc$23333$new_n781_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][79] ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23386  (.A(net18),
    .SLEEP_B(\u_clgen.pos_edge ),
    .X(\$abc$23333$new_n783_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23388  (.A(\u_shift.rx_bit_pos[1] ),
    .SLEEP(\u_shift.rx_bit_pos[0] ),
    .X(\$abc$23333$new_n785_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23389  (.A(\$abc$23333$new_n783_ ),
    .SLEEP_B(\$abc$23333$new_n785_ ),
    .X(\$abc$23333$new_n786_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23390  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n786_ ),
    .Y(\$abc$23333$new_n787_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23391  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n787_ ),
    .Y(\$abc$23333$new_n788_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23392  (.A0(\u_shift.IN_reg[78] ),
    .A1(\$abc$23333$new_n755_ ),
    .S(\$abc$23333$new_n788_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][78] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23393  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n790_ ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23394  (.A_N(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .Y(\$abc$23333$new_n791_ ));
 sky130_fd_sc_hd__nand4b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23395  (.A_N(\u_shift.rx_bit_pos[5] ),
    .B(\u_shift.rx_bit_pos[4] ),
    .C(\$abc$23333$new_n783_ ),
    .D(\u_shift.rx_bit_pos[6] ),
    .Y(\$abc$23333$new_n792_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23396  (.A(\$abc$23333$new_n791_ ),
    .B(\$abc$23333$new_n792_ ),
    .Y(\$abc$23333$new_n793_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23397  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .Y(\$abc$23333$new_n794_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23398  (.A(\$abc$23333$new_n793_ ),
    .B(\$abc$23333$new_n794_ ),
    .Y(\$abc$23333$new_n795_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23399  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[88] ),
    .S(\$abc$23333$new_n795_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][88] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23400  (.A(miso_pad_i),
    .X(\$abc$23333$new_n797_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23401  (.A(\$abc$23333$new_n797_ ),
    .X(\$abc$23333$new_n798_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23402  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .C(\$abc$23333$new_n759_ ),
    .Y(\$abc$23333$new_n799_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23403  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n799_ ),
    .Y(\$abc$23333$new_n800_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23404  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n800_ ),
    .Y(\$abc$23333$new_n801_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23405  (.A0(\u_shift.IN_reg[76] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n801_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][76] ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23406  (.A_N(\u_shift.rx_bit_pos[5] ),
    .B(\u_shift.rx_bit_pos[4] ),
    .Y(\$abc$23333$new_n803_ ));
 sky130_fd_sc_hd__or2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23407  (.A(\$abc$23333$new_n777_ ),
    .B(\$abc$23333$new_n803_ ),
    .X(\$abc$23333$new_n804_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23409  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .Y(\$abc$23333$new_n806_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23410  (.A(\$abc$23333$new_n799_ ),
    .B(\$abc$23333$new_n806_ ),
    .Y(\$abc$23333$new_n807_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23411  (.A(\$abc$23333$new_n804_ ),
    .B(\$abc$23333$new_n807_ ),
    .Y(\$abc$23333$new_n808_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23412  (.A0(\u_shift.IN_reg[80] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n808_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][80] ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23413  (.A(\u_shift.rx_bit_pos[0] ),
    .SLEEP(\u_shift.rx_bit_pos[1] ),
    .X(\$abc$23333$new_n810_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23414  (.A(\$abc$23333$new_n783_ ),
    .SLEEP_B(\$abc$23333$new_n810_ ),
    .X(\$abc$23333$new_n811_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23415  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n811_ ),
    .Y(\$abc$23333$new_n812_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23416  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n812_ ),
    .Y(\$abc$23333$new_n813_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23417  (.A0(\u_shift.IN_reg[77] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n813_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][77] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23418  (.A(\$abc$23333$new_n763_ ),
    .B(\$abc$23333$new_n786_ ),
    .Y(\$abc$23333$new_n815_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23419  (.A(net15),
    .B(\$abc$23333$new_n815_ ),
    .Y(\$abc$23333$new_n816_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23420  (.A0(\u_shift.IN_reg[122] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n816_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][122] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23421  (.A(\$abc$23333$new_n806_ ),
    .B(\$abc$23333$new_n811_ ),
    .Y(\$abc$23333$new_n818_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23422  (.A(\$abc$23333$new_n804_ ),
    .B(\$abc$23333$new_n818_ ),
    .Y(\$abc$23333$new_n819_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23423  (.A0(\u_shift.IN_reg[81] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n819_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][81] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23424  (.A(\$abc$23333$new_n793_ ),
    .B(\$abc$23333$new_n810_ ),
    .Y(\$abc$23333$new_n821_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23425  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[89] ),
    .S(\$abc$23333$new_n821_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][89] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23426  (.A(net15),
    .B(\$abc$23333$new_n787_ ),
    .Y(\$abc$23333$new_n823_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23427  (.A0(\u_shift.IN_reg[126] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n823_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][126] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23428  (.A(\$abc$23333$new_n785_ ),
    .B(\$abc$23333$new_n793_ ),
    .Y(\$abc$23333$new_n825_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23429  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[90] ),
    .S(\$abc$23333$new_n825_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][90] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23430  (.A(\$abc$23333$new_n764_ ),
    .B(\$abc$23333$new_n804_ ),
    .Y(\$abc$23333$new_n827_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23431  (.A0(\u_shift.IN_reg[91] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n827_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][91] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23432  (.A(\$abc$23333$new_n800_ ),
    .B(\$abc$23333$new_n804_ ),
    .Y(\$abc$23333$new_n829_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23433  (.A0(\u_shift.IN_reg[92] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n829_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][92] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23434  (.A(net15),
    .B(\$abc$23333$new_n776_ ),
    .Y(\$abc$23333$new_n831_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23435  (.A0(\u_shift.IN_reg[127] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n831_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][127] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23436  (.A(\$abc$23333$new_n804_ ),
    .B(\$abc$23333$new_n812_ ),
    .Y(\$abc$23333$new_n833_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23437  (.A0(\u_shift.IN_reg[93] ),
    .A1(\$abc$23333$new_n798_ ),
    .S(\$abc$23333$new_n833_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][93] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23438  (.A(\$abc$23333$new_n797_ ),
    .X(\$abc$23333$new_n835_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23439  (.A(\$abc$23333$new_n787_ ),
    .B(\$abc$23333$new_n804_ ),
    .Y(\$abc$23333$new_n836_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23440  (.A0(\u_shift.IN_reg[94] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n836_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][94] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23441  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .Y(\$abc$23333$new_n838_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23442  (.A(\$abc$23333$new_n758_ ),
    .B(\$abc$23333$new_n838_ ),
    .C(\$abc$23333$new_n792_ ),
    .Y(\$abc$23333$new_n839_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23443  (.A0(\u_shift.IN_reg[95] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n839_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][95] ));
 sky130_fd_sc_hd__nand3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23444  (.A_N(\u_shift.rx_bit_pos[4] ),
    .B(\u_shift.rx_bit_pos[5] ),
    .C(\u_shift.rx_bit_pos[6] ),
    .Y(\$abc$23333$new_n841_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23446  (.A(\$abc$23333$new_n807_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n843_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23447  (.A0(\u_shift.IN_reg[96] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n843_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][96] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23448  (.A(\$abc$23333$new_n818_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n845_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23449  (.A0(\u_shift.IN_reg[97] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n845_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][97] ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23450  (.A(\u_clgen.pos_edge ),
    .SLEEP(\u_clgen.neg_edge ),
    .X(\$abc$23333$new_n847_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23451  (.A(\u_shift.rx_bit_pos[0] ),
    .B(\$abc$23333$new_n847_ ),
    .Y(\$abc$23333$new_n848_ ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23454  (.A(net18),
    .B(\ctrl[13] ),
    .C(\ctrl[4] ),
    .X(\$abc$23333$new_n851_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23455  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n848_ ),
    .B1(\$abc$23333$new_n851_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][0] ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23456  (.A(\u_shift.rx_bit_pos[0] ),
    .B(\ctrl[13] ),
    .Y(\$abc$23333$new_n853_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23457  (.A(\$abc$23333$new_n847_ ),
    .B(\$abc$23333$new_n853_ ),
    .Y(\$abc$23333$new_n854_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23458  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\$abc$23333$new_n854_ ),
    .X(\$abc$23333$new_n855_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23460  (.A(\ctrl[4] ),
    .SLEEP_B(\ctrl[5] ),
    .X(\$abc$23333$new_n857_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23461  (.A(\ctrl[4] ),
    .B(\ctrl[5] ),
    .Y(\$abc$23333$new_n858_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23462  (.A(\u_shift.t_progress ),
    .B(\ctrl[13] ),
    .Y(\$abc$23333$new_n859_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23463  (.A1(\$abc$23333$new_n857_ ),
    .A2(\$abc$23333$new_n858_ ),
    .B1(\$abc$23333$new_n859_ ),
    .Y(\$abc$23333$new_n860_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23464  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n855_ ),
    .B1(\$abc$23333$new_n860_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][1] ));
 sky130_fd_sc_hd__and3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23465  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .C(\ctrl[13] ),
    .X(\$abc$23333$new_n862_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23466  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .C(\ctrl[13] ),
    .Y(\$abc$23333$new_n863_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23467  (.A1(\$abc$23333$new_n862_ ),
    .A2(\$abc$23333$new_n863_ ),
    .B1(\$abc$23333$new_n847_ ),
    .Y(\$abc$23333$new_n864_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23468  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\$abc$23333$new_n864_ ),
    .X(\$abc$23333$new_n865_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23470  (.A(\ctrl[6] ),
    .B(\$abc$23333$new_n858_ ),
    .Y(\$abc$23333$new_n867_ ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23471  (.A(\u_shift.t_progress ),
    .B(\ctrl[13] ),
    .C(\$abc$23333$new_n867_ ),
    .X(\$abc$23333$new_n868_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23472  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n865_ ),
    .B1(\$abc$23333$new_n868_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][2] ));
 sky130_fd_sc_hd__or4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23473  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[1] ),
    .C(\u_shift.rx_bit_pos[0] ),
    .D(\ctrl[13] ),
    .X(\$abc$23333$new_n870_ ));
 sky130_fd_sc_hd__nand4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23474  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[1] ),
    .C(\u_shift.rx_bit_pos[0] ),
    .D(\ctrl[13] ),
    .Y(\$abc$23333$new_n871_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23475  (.A(\$abc$23333$new_n870_ ),
    .B(\$abc$23333$new_n871_ ),
    .Y(\$abc$23333$new_n872_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23476  (.A(\$abc$23333$new_n847_ ),
    .B(\$abc$23333$new_n872_ ),
    .Y(\$abc$23333$new_n873_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23477  (.A(\u_shift.rx_bit_pos[3] ),
    .B(\$abc$23333$new_n873_ ),
    .X(\$abc$23333$new_n874_ ));
 sky130_fd_sc_hd__or4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23478  (.A(\ctrl[4] ),
    .B(\ctrl[5] ),
    .C(\ctrl[6] ),
    .D(\ctrl[7] ),
    .X(\$abc$23333$new_n875_ ));
 sky130_fd_sc_hd__o31ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23479  (.A1(\ctrl[4] ),
    .A2(\ctrl[5] ),
    .A3(\ctrl[6] ),
    .B1(\ctrl[7] ),
    .Y(\$abc$23333$new_n876_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23480  (.A1(\$abc$23333$new_n875_ ),
    .A2(\$abc$23333$new_n876_ ),
    .B1(\ctrl[13] ),
    .Y(\$abc$23333$new_n877_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23481  (.A(\$abc$23333$new_n735_ ),
    .B(\$abc$23333$new_n877_ ),
    .Y(\$abc$23333$new_n878_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23482  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n874_ ),
    .B1(\$abc$23333$new_n878_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][3] ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23483  (.A0(\$abc$23333$new_n870_ ),
    .A1(\$abc$23333$new_n871_ ),
    .S(\u_shift.rx_bit_pos[3] ),
    .Y(\$abc$23333$new_n880_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23484  (.A(\$abc$23333$new_n847_ ),
    .B(\$abc$23333$new_n880_ ),
    .Y(\$abc$23333$new_n881_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23485  (.A(\u_shift.rx_bit_pos[4] ),
    .B(\$abc$23333$new_n881_ ),
    .X(\$abc$23333$new_n882_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23487  (.A(\ctrl[8] ),
    .B(\$abc$23333$new_n875_ ),
    .Y(\$abc$23333$new_n884_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23488  (.A(\$abc$23333$new_n859_ ),
    .B(\$abc$23333$new_n884_ ),
    .Y(\$abc$23333$new_n885_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23489  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n882_ ),
    .B1(\$abc$23333$new_n885_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][4] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23490  (.A(\u_shift.rx_bit_pos[3] ),
    .B(\u_shift.rx_bit_pos[4] ),
    .Y(\$abc$23333$new_n887_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23491  (.A(\$abc$23333$new_n871_ ),
    .B(\$abc$23333$new_n887_ ),
    .Y(\$abc$23333$new_n888_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23492  (.A(\u_shift.rx_bit_pos[3] ),
    .B(\u_shift.rx_bit_pos[4] ),
    .C(\$abc$23333$new_n870_ ),
    .Y(\$abc$23333$new_n889_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23493  (.A1(\$abc$23333$new_n888_ ),
    .A2(\$abc$23333$new_n889_ ),
    .B1(\$abc$23333$new_n847_ ),
    .Y(\$abc$23333$new_n890_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23494  (.A(\u_shift.rx_bit_pos[5] ),
    .B(\$abc$23333$new_n890_ ),
    .X(\$abc$23333$new_n891_ ));
 sky130_fd_sc_hd__o21a_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23495  (.A1(\ctrl[8] ),
    .A2(\$abc$23333$new_n875_ ),
    .B1(\ctrl[9] ),
    .X(\$abc$23333$new_n892_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23496  (.A(\ctrl[8] ),
    .B(\ctrl[9] ),
    .C(\$abc$23333$new_n875_ ),
    .Y(\$abc$23333$new_n893_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23497  (.A1(\$abc$23333$new_n892_ ),
    .A2(\$abc$23333$new_n893_ ),
    .B1(\$abc$23333$new_n859_ ),
    .Y(\$abc$23333$new_n894_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23498  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n891_ ),
    .B1(\$abc$23333$new_n894_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][5] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23499  (.A(\u_shift.rx_bit_pos[5] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\u_shift.rx_bit_pos[4] ),
    .Y(\$abc$23333$new_n896_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23500  (.A(\$abc$23333$new_n871_ ),
    .B(\$abc$23333$new_n896_ ),
    .Y(\$abc$23333$new_n897_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23501  (.A(\u_shift.rx_bit_pos[5] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\u_shift.rx_bit_pos[4] ),
    .D(\$abc$23333$new_n870_ ),
    .Y(\$abc$23333$new_n898_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23502  (.A1(\$abc$23333$new_n897_ ),
    .A2(\$abc$23333$new_n898_ ),
    .B1(\$abc$23333$new_n847_ ),
    .Y(\$abc$23333$new_n899_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23503  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\$abc$23333$new_n899_ ),
    .X(\$abc$23333$new_n900_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23504  (.A(\ctrl[10] ),
    .B(\$abc$23333$new_n893_ ),
    .X(\$abc$23333$new_n901_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23505  (.A(\$abc$23333$new_n859_ ),
    .B(\$abc$23333$new_n901_ ),
    .Y(\$abc$23333$new_n902_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23506  (.A1(\$abc$23333$new_n735_ ),
    .A2(\$abc$23333$new_n900_ ),
    .B1(\$abc$23333$new_n902_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][6] ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23508  (.A_N(\u_clgen.pos_edge ),
    .B(\u_shift.counter[0] ),
    .Y(\$abc$23333$new_n905_ ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23509  (.A_N(\u_shift.counter[0] ),
    .B(\u_clgen.pos_edge ),
    .Y(\$abc$23333$new_n906_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23511  (.A(\u_shift.t_progress ),
    .B(\ctrl[4] ),
    .Y(\$abc$23333$new_n908_ ));
 sky130_fd_sc_hd__a31oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23512  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n905_ ),
    .A3(\$abc$23333$new_n906_ ),
    .B1(\$abc$23333$new_n908_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][0] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23513  (.A(\u_shift.counter[1] ),
    .B(\$abc$23333$new_n906_ ),
    .Y(\$abc$23333$new_n910_ ));
 sky130_fd_sc_hd__or2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23514  (.A(\u_shift.counter[1] ),
    .B(\$abc$23333$new_n906_ ),
    .X(\$abc$23333$new_n911_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23515  (.A(\u_shift.t_progress ),
    .B(\ctrl[5] ),
    .Y(\$abc$23333$new_n912_ ));
 sky130_fd_sc_hd__a31oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23516  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n910_ ),
    .A3(\$abc$23333$new_n911_ ),
    .B1(\$abc$23333$new_n912_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][1] ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23517  (.A(\u_shift.counter[2] ),
    .B(\$abc$23333$new_n911_ ),
    .X(\$abc$23333$new_n914_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23518  (.A(\u_shift.t_progress ),
    .B(\ctrl[6] ),
    .Y(\$abc$23333$new_n915_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23519  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n914_ ),
    .B1(\$abc$23333$new_n915_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][2] ));
 sky130_fd_sc_hd__or4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23520  (.A(\u_shift.counter[3] ),
    .B(\u_shift.counter[2] ),
    .C(\u_shift.counter[1] ),
    .D(\$abc$23333$new_n906_ ),
    .X(\$abc$23333$new_n917_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23521  (.A1(\u_shift.counter[2] ),
    .A2(\$abc$23333$new_n911_ ),
    .B1(\u_shift.counter[3] ),
    .Y(\$abc$23333$new_n918_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23522  (.A(\u_shift.t_progress ),
    .B(\ctrl[7] ),
    .Y(\$abc$23333$new_n919_ ));
 sky130_fd_sc_hd__a31oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23523  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n917_ ),
    .A3(\$abc$23333$new_n918_ ),
    .B1(\$abc$23333$new_n919_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][3] ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23524  (.A(\u_shift.counter[4] ),
    .B(\$abc$23333$new_n917_ ),
    .X(\$abc$23333$new_n921_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23525  (.A(\u_shift.t_progress ),
    .B(\ctrl[8] ),
    .Y(\$abc$23333$new_n922_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23526  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n921_ ),
    .B1(\$abc$23333$new_n922_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][4] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23527  (.A(\u_shift.counter[4] ),
    .B(\$abc$23333$new_n917_ ),
    .Y(\$abc$23333$new_n924_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23528  (.A(\u_shift.counter[5] ),
    .B(\$abc$23333$new_n924_ ),
    .Y(\$abc$23333$new_n925_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23529  (.A(\u_shift.t_progress ),
    .B(\ctrl[9] ),
    .Y(\$abc$23333$new_n926_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23530  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n925_ ),
    .B1(\$abc$23333$new_n926_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][5] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23531  (.A(\u_shift.counter[5] ),
    .B(\u_shift.counter[4] ),
    .C(\$abc$23333$new_n917_ ),
    .Y(\$abc$23333$new_n928_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23532  (.A(\u_shift.counter[6] ),
    .B(\$abc$23333$new_n928_ ),
    .Y(\$abc$23333$new_n929_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23533  (.A(\u_shift.t_progress ),
    .B(\ctrl[10] ),
    .Y(\$abc$23333$new_n930_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23534  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n929_ ),
    .B1(\$abc$23333$new_n930_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][6] ));
 sky130_fd_sc_hd__or4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23535  (.A(\u_shift.counter[6] ),
    .B(\u_shift.counter[5] ),
    .C(\u_shift.counter[4] ),
    .D(\u_shift.counter[3] ),
    .X(\$abc$23333$new_n932_ ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23536  (.A(\u_shift.counter[2] ),
    .B(\$abc$23333$new_n911_ ),
    .C(\$abc$23333$new_n932_ ),
    .X(\$abc$23333$new_n933_ ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23537  (.A(\u_shift.counter[7] ),
    .B(\$abc$23333$new_n933_ ),
    .X(\$abc$23333$new_n934_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23538  (.A(\u_shift.t_progress ),
    .B(\ctrl[11] ),
    .Y(\$abc$23333$new_n935_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23539  (.A1(\u_shift.t_progress ),
    .A2(\$abc$23333$new_n934_ ),
    .B1(\$abc$23333$new_n935_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\counter[7:0][7] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23540  (.A(net18),
    .B(\ctrl[12] ),
    .Y(\$abc$23333$new_n937_ ));
 sky130_fd_sc_hd__or3_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23541  (.A(\u_shift.counter[2] ),
    .B(\u_shift.counter[1] ),
    .C(\u_shift.counter[0] ),
    .X(\$abc$23333$new_n938_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23542  (.A(\u_shift.t_progress ),
    .B(\u_clgen.neg_edge ),
    .Y(\$abc$23333$new_n939_ ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23543  (.A(\u_shift.counter[7] ),
    .B(\$abc$23333$new_n938_ ),
    .C(\$abc$23333$new_n932_ ),
    .D(\$abc$23333$new_n939_ ),
    .Y(\$abc$23333$new_n940_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23544  (.A(\$abc$23333$new_n937_ ),
    .B(\$abc$23333$new_n940_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\t_progress[0:0] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23545  (.A(\u_shift.serial_out ),
    .B(\$abc$23333$new_n939_ ),
    .Y(\$abc$23333$new_n942_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23546  (.A1(\$abc$23333$new_n735_ ),
    .A2(\ctrl[12] ),
    .B1(\$abc$23333$new_n942_ ),
    .Y(\$abc$23333$techmap\u_shift.$0\serial_out[0:0] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23547  (.A(\$abc$23333$new_n786_ ),
    .B(\$abc$23333$new_n806_ ),
    .Y(\$abc$23333$new_n944_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23548  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n944_ ),
    .Y(\$abc$23333$new_n945_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23549  (.A0(\u_shift.IN_reg[98] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n945_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][98] ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23550  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\u_shift.rx_bit_pos[5] ),
    .C(\u_shift.rx_bit_pos[4] ),
    .X(\$abc$23333$new_n947_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23553  (.A(\$abc$23333$new_n807_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n950_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23554  (.A0(\u_shift.IN_reg[0] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n950_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][0] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23555  (.A(\$abc$23333$new_n818_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n952_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23556  (.A0(\u_shift.IN_reg[1] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n952_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][1] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23557  (.A(\$abc$23333$new_n944_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n954_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23558  (.A0(\u_shift.IN_reg[2] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n954_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][2] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23559  (.A(\$abc$23333$new_n804_ ),
    .B(\$abc$23333$new_n944_ ),
    .Y(\$abc$23333$new_n956_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23560  (.A0(\u_shift.IN_reg[82] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n956_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][82] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23561  (.A(net15),
    .B(\$abc$23333$new_n800_ ),
    .Y(\$abc$23333$new_n958_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23562  (.A0(\u_shift.IN_reg[124] ),
    .A1(\$abc$23333$new_n835_ ),
    .S(\$abc$23333$new_n958_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][124] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23563  (.A(\$abc$23333$new_n758_ ),
    .B(\$abc$23333$new_n792_ ),
    .Y(\$abc$23333$new_n960_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23564  (.A(\$abc$23333$new_n806_ ),
    .B(\$abc$23333$new_n960_ ),
    .Y(\$abc$23333$new_n961_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23565  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[83] ),
    .S(\$abc$23333$new_n961_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][83] ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23566  (.A_N(\u_shift.rx_bit_pos[3] ),
    .B(\u_shift.rx_bit_pos[2] ),
    .Y(\$abc$23333$new_n963_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23567  (.A(\$abc$23333$new_n792_ ),
    .B(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n964_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23568  (.A(\$abc$23333$new_n794_ ),
    .B(\$abc$23333$new_n964_ ),
    .Y(\$abc$23333$new_n965_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23569  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[84] ),
    .S(\$abc$23333$new_n965_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][84] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23570  (.A(\$abc$23333$new_n810_ ),
    .B(\$abc$23333$new_n964_ ),
    .Y(\$abc$23333$new_n967_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23571  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[85] ),
    .S(\$abc$23333$new_n967_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][85] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23572  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n969_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23573  (.A(net15),
    .B(\$abc$23333$new_n812_ ),
    .Y(\$abc$23333$new_n970_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23574  (.A0(\u_shift.IN_reg[125] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n970_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][125] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23575  (.A(\$abc$23333$new_n785_ ),
    .B(\$abc$23333$new_n964_ ),
    .Y(\$abc$23333$new_n972_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23576  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[86] ),
    .S(\$abc$23333$new_n972_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][86] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23577  (.A(\$abc$23333$new_n758_ ),
    .B(\$abc$23333$new_n792_ ),
    .C(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n974_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23578  (.A0(\u_shift.IN_reg[87] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n974_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][87] ));
 sky130_fd_sc_hd__nand3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23579  (.A_N(PWRITE),
    .B(PSEL),
    .C(PENABLE),
    .Y(\$abc$23333$new_n976_ ));
 sky130_fd_sc_hd__a22o_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23580  (.A1(\ctrl[14] ),
    .A2(\$abc$23333$new_n940_ ),
    .B1(net21),
    .B2(spi_int_o),
    .X(\$0\spi_int_o[0:0] ));
 sky130_fd_sc_hd__and4b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23581  (.A_N(net18),
    .B(PWRITE),
    .C(PSEL),
    .D(PENABLE),
    .X(\$abc$23333$new_n978_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23582  (.A(PADDR[2]),
    .X(\$abc$23333$new_n979_ ));
 sky130_fd_sc_hd__buf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23583  (.A(PADDR[3]),
    .X(\$abc$23333$new_n980_ ));
 sky130_fd_sc_hd__and3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23584  (.A_N(net20),
    .B(\$abc$23333$new_n765_ ),
    .C(net19),
    .X(\$abc$23333$new_n981_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23585  (.A(\$abc$23333$new_n978_ ),
    .SLEEP_B(\$abc$23333$new_n981_ ),
    .X(\$abc$23333$new_n982_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23587  (.A(PSTRB[3]),
    .B(\$abc$23333$new_n982_ ),
    .Y(\$abc$23333$new_n984_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23588  (.A0(PWDATA[24]),
    .A1(\ss[24] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][24] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23589  (.A0(PWDATA[25]),
    .A1(\ss[25] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][25] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23590  (.A0(PWDATA[26]),
    .A1(\ss[26] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][26] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23591  (.A0(PWDATA[27]),
    .A1(\ss[27] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][27] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23592  (.A0(PWDATA[28]),
    .A1(\ss[28] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][28] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23593  (.A0(PWDATA[29]),
    .A1(\ss[29] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][29] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23594  (.A0(PWDATA[30]),
    .A1(\ss[30] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][30] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23595  (.A0(PWDATA[31]),
    .A1(\ss[31] ),
    .S(\$abc$23333$new_n984_ ),
    .X(\$0\ss[31:0][31] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23596  (.A(PSTRB[2]),
    .B(\$abc$23333$new_n982_ ),
    .Y(\$abc$23333$new_n993_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23597  (.A0(PWDATA[16]),
    .A1(\ss[16] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][16] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23598  (.A0(PWDATA[17]),
    .A1(\ss[17] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][17] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23599  (.A0(PWDATA[18]),
    .A1(\ss[18] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][18] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23600  (.A0(PWDATA[19]),
    .A1(\ss[19] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][19] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23601  (.A0(PWDATA[20]),
    .A1(\ss[20] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][20] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23602  (.A0(PWDATA[21]),
    .A1(\ss[21] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][21] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23603  (.A0(PWDATA[22]),
    .A1(\ss[22] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][22] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23604  (.A0(PWDATA[23]),
    .A1(\ss[23] ),
    .S(\$abc$23333$new_n993_ ),
    .X(\$0\ss[31:0][23] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23605  (.A(PSTRB[1]),
    .B(\$abc$23333$new_n982_ ),
    .Y(\$abc$23333$new_n1002_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23606  (.A0(PWDATA[8]),
    .A1(\ss[8] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][8] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23607  (.A0(PWDATA[9]),
    .A1(\ss[9] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][9] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23608  (.A0(PWDATA[10]),
    .A1(\ss[10] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][10] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23609  (.A0(PWDATA[11]),
    .A1(\ss[11] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][11] ));
 sky130_fd_sc_hd__inv_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23610  (.A(PWDATA[12]),
    .Y(\$abc$23333$new_n1007_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23611  (.A(\ss[12] ),
    .B(\$abc$23333$new_n1002_ ),
    .Y(\$abc$23333$new_n1008_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23612  (.A1(\$abc$23333$new_n1007_ ),
    .A2(\$abc$23333$new_n1002_ ),
    .B1(\$abc$23333$new_n1008_ ),
    .Y(\$0\ss[31:0][12] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23613  (.A0(PWDATA[13]),
    .A1(\ss[13] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][13] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23614  (.A0(PWDATA[14]),
    .A1(\ss[14] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][14] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23615  (.A0(PWDATA[15]),
    .A1(\ss[15] ),
    .S(\$abc$23333$new_n1002_ ),
    .X(\$0\ss[31:0][15] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23616  (.A(PSTRB[0]),
    .B(\$abc$23333$new_n982_ ),
    .Y(\$abc$23333$new_n1013_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23617  (.A0(PWDATA[0]),
    .A1(\ss[0] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][0] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23618  (.A0(PWDATA[1]),
    .A1(\ss[1] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][1] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23619  (.A0(PWDATA[2]),
    .A1(\ss[2] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][2] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23620  (.A0(PWDATA[3]),
    .A1(\ss[3] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][3] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23621  (.A0(PWDATA[4]),
    .A1(\ss[4] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][4] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23622  (.A0(PWDATA[5]),
    .A1(\ss[5] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][5] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23623  (.A0(PWDATA[6]),
    .A1(\ss[6] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][6] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23624  (.A0(PWDATA[7]),
    .A1(\ss[7] ),
    .S(\$abc$23333$new_n1013_ ),
    .X(\$0\ss[31:0][7] ));
 sky130_fd_sc_hd__nor3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23625  (.A(net20),
    .B(net19),
    .C_N(\$abc$23333$new_n765_ ),
    .Y(\$abc$23333$new_n1022_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23626  (.A(\$abc$23333$new_n978_ ),
    .SLEEP_B(net17),
    .X(\$abc$23333$new_n1023_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23627  (.A(PSTRB[1]),
    .B(\$abc$23333$new_n1023_ ),
    .Y(\$abc$23333$new_n1024_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23628  (.A0(PWDATA[13]),
    .A1(\ctrl[13] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][13] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23629  (.A0(PWDATA[14]),
    .A1(\ctrl[14] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][14] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23630  (.A0(PWDATA[15]),
    .A1(\ctrl[15] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][15] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23631  (.A(\ctrl[12] ),
    .B(\$abc$23333$new_n1024_ ),
    .Y(\$abc$23333$new_n1028_ ));
 sky130_fd_sc_hd__o22ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23632  (.A1(\$abc$23333$new_n1007_ ),
    .A2(\$abc$23333$new_n1024_ ),
    .B1(\$abc$23333$new_n1028_ ),
    .B2(\$abc$23333$new_n940_ ),
    .Y(\$0\ctrl[15:0][12] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23633  (.A0(PWDATA[8]),
    .A1(\ctrl[8] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][8] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23634  (.A0(PWDATA[9]),
    .A1(\ctrl[9] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][9] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23635  (.A0(PWDATA[10]),
    .A1(\ctrl[10] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][10] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23636  (.A0(PWDATA[11]),
    .A1(\ctrl[11] ),
    .S(\$abc$23333$new_n1024_ ),
    .X(\$0\ctrl[15:0][11] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23637  (.A(PSTRB[0]),
    .B(\$abc$23333$new_n1023_ ),
    .Y(\$abc$23333$new_n1034_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23638  (.A0(PWDATA[0]),
    .A1(\ctrl[0] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][0] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23639  (.A0(PWDATA[1]),
    .A1(\ctrl[1] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][1] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23640  (.A0(PWDATA[2]),
    .A1(\ctrl[2] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][2] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23641  (.A0(PWDATA[3]),
    .A1(\ctrl[3] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][3] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23642  (.A0(PWDATA[4]),
    .A1(\ctrl[4] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][4] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23643  (.A0(PWDATA[5]),
    .A1(\ctrl[5] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][5] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23644  (.A0(PWDATA[6]),
    .A1(\ctrl[6] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][6] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23645  (.A0(PWDATA[7]),
    .A1(\ctrl[7] ),
    .S(\$abc$23333$new_n1034_ ),
    .X(\$0\ctrl[15:0][7] ));
 sky130_fd_sc_hd__buf_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23646  (.A(\$abc$23333$new_n765_ ),
    .X(\$abc$23333$new_n1043_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23647  (.A(net20),
    .SLEEP(\$abc$23333$new_n980_ ),
    .X(\$abc$23333$new_n1044_ ));
 sky130_fd_sc_hd__nand4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23648  (.A(\$abc$23333$new_n1043_ ),
    .B(PSTRB[1]),
    .C(\$abc$23333$new_n978_ ),
    .D(net16),
    .Y(\$abc$23333$new_n1045_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23649  (.A0(PWDATA[8]),
    .A1(\divider[8] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][8] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23650  (.A0(PWDATA[9]),
    .A1(\divider[9] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][9] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23651  (.A0(PWDATA[10]),
    .A1(\divider[10] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][10] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23652  (.A0(PWDATA[11]),
    .A1(\divider[11] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][11] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23653  (.A(\divider[12] ),
    .B(\$abc$23333$new_n1045_ ),
    .Y(\$abc$23333$new_n1050_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23654  (.A1(\$abc$23333$new_n1007_ ),
    .A2(\$abc$23333$new_n1045_ ),
    .B1(\$abc$23333$new_n1050_ ),
    .Y(\$0\divider[15:0][12] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23655  (.A0(PWDATA[13]),
    .A1(\divider[13] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][13] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23656  (.A0(PWDATA[14]),
    .A1(\divider[14] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][14] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23657  (.A0(PWDATA[15]),
    .A1(\divider[15] ),
    .S(\$abc$23333$new_n1045_ ),
    .X(\$0\divider[15:0][15] ));
 sky130_fd_sc_hd__nand4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23658  (.A(\$abc$23333$new_n1043_ ),
    .B(PSTRB[0]),
    .C(\$abc$23333$new_n978_ ),
    .D(net16),
    .Y(\$abc$23333$new_n1055_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23659  (.A0(PWDATA[0]),
    .A1(\divider[0] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][0] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23660  (.A0(PWDATA[1]),
    .A1(\divider[1] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][1] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23661  (.A0(PWDATA[2]),
    .A1(\divider[2] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][2] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23662  (.A0(PWDATA[3]),
    .A1(\divider[3] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][3] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23663  (.A0(PWDATA[4]),
    .A1(\divider[4] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][4] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23664  (.A0(PWDATA[5]),
    .A1(\divider[5] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][5] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23665  (.A0(PWDATA[6]),
    .A1(\divider[6] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][6] ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23666  (.A0(PWDATA[7]),
    .A1(\divider[7] ),
    .S(\$abc$23333$new_n1055_ ),
    .X(\$0\divider[15:0][7] ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23670  (.A(\$abc$23333$new_n980_ ),
    .SLEEP(net20),
    .X(\$abc$23333$new_n1067_ ));
 sky130_fd_sc_hd__buf_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23671  (.A(\$abc$23333$new_n765_ ),
    .X(\$abc$23333$new_n1068_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23672  (.A(\$abc$23333$new_n1068_ ),
    .X(\$abc$23333$new_n1069_ ));
 sky130_fd_sc_hd__lpflow_inputiso0p_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23673  (.A(\$abc$23333$new_n1067_ ),
    .SLEEP(\$abc$23333$new_n1069_ ),
    .X(\$abc$23333$new_n1070_ ));
 sky130_fd_sc_hd__nor3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23676  (.A(\$abc$23333$new_n1068_ ),
    .B(net19),
    .C_N(\u_shift.IN_reg[0] ),
    .Y(\$abc$23333$new_n1073_ ));
 sky130_fd_sc_hd__a31oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23677  (.A1(\$abc$23333$new_n1069_ ),
    .A2(net19),
    .A3(\ss[0] ),
    .B1(\$abc$23333$new_n1073_ ),
    .Y(\$abc$23333$new_n1074_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23678  (.A0(\u_shift.IN_reg[32] ),
    .A1(\u_shift.IN_reg[96] ),
    .A2(\divider[0] ),
    .A3(net18),
    .S0(net19),
    .S1(\$abc$23333$new_n1068_ ),
    .X(\$abc$23333$new_n1075_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23679  (.A(net20),
    .B(\$abc$23333$new_n1075_ ),
    .Y(\$abc$23333$new_n1076_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23680  (.A1(net20),
    .A2(\$abc$23333$new_n1074_ ),
    .B1(\$abc$23333$new_n1076_ ),
    .Y(\$abc$23333$new_n1077_ ));
 sky130_fd_sc_hd__a221oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23681  (.A1(\ctrl[0] ),
    .A2(\$abc$23333$new_n1022_ ),
    .B1(\$abc$23333$new_n1070_ ),
    .B2(\u_shift.IN_reg[64] ),
    .C1(\$abc$23333$new_n1077_ ),
    .Y(\$abc$23333$new_n1078_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23682  (.A(net21),
    .B(\$abc$23333$new_n1078_ ),
    .Y(PRDATA[0]));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23684  (.A(\$abc$23333$new_n1069_ ),
    .X(\$abc$23333$new_n1081_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23687  (.A(\u_shift.counter[7] ),
    .B(\$abc$23333$new_n938_ ),
    .C(\$abc$23333$new_n932_ ),
    .Y(\$abc$23333$new_n1084_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23688  (.A(\$abc$23333$new_n1081_ ),
    .B(net19),
    .C(\$abc$23333$new_n1084_ ),
    .Y(\$abc$23333$new_n1085_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23689  (.A(\$abc$23333$new_n1068_ ),
    .SLEEP(net19),
    .X(\$abc$23333$new_n1086_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23690  (.A(\$abc$23333$new_n1068_ ),
    .X(\$abc$23333$new_n1087_ ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23691  (.A0(\u_shift.IN_reg[33] ),
    .A1(\u_shift.IN_reg[97] ),
    .S(net19),
    .Y(\$abc$23333$new_n1088_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23692  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1088_ ),
    .Y(\$abc$23333$new_n1089_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23693  (.A1(\divider[1] ),
    .A2(\$abc$23333$new_n1086_ ),
    .B1(\$abc$23333$new_n1089_ ),
    .Y(\$abc$23333$new_n1090_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23694  (.A0(\u_shift.IN_reg[1] ),
    .A1(\ctrl[1] ),
    .A2(\u_shift.IN_reg[65] ),
    .A3(\ss[1] ),
    .S0(\$abc$23333$new_n765_ ),
    .S1(net19),
    .X(\$abc$23333$new_n1091_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23695  (.A(net20),
    .B(\$abc$23333$new_n1091_ ),
    .Y(\$abc$23333$new_n1092_ ));
 sky130_fd_sc_hd__a311oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23696  (.A1(net20),
    .A2(\$abc$23333$new_n1085_ ),
    .A3(\$abc$23333$new_n1090_ ),
    .B1(\$abc$23333$new_n1092_ ),
    .C1(net21),
    .Y(PRDATA[1]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23697  (.A0(\u_shift.IN_reg[34] ),
    .A1(\u_shift.IN_reg[98] ),
    .S(net19),
    .Y(\$abc$23333$new_n1094_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23698  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1094_ ),
    .Y(\$abc$23333$new_n1095_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23699  (.A1(\divider[2] ),
    .A2(\$abc$23333$new_n1086_ ),
    .B1(\$abc$23333$new_n1095_ ),
    .Y(\$abc$23333$new_n1096_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23700  (.A0(\u_shift.IN_reg[2] ),
    .A1(\ctrl[2] ),
    .A2(\u_shift.IN_reg[66] ),
    .A3(\ss[2] ),
    .S0(\$abc$23333$new_n1068_ ),
    .S1(net19),
    .X(\$abc$23333$new_n1097_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23701  (.A(net20),
    .B(\$abc$23333$new_n1097_ ),
    .Y(\$abc$23333$new_n1098_ ));
 sky130_fd_sc_hd__a211oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23703  (.A1(net20),
    .A2(\$abc$23333$new_n1096_ ),
    .B1(\$abc$23333$new_n1098_ ),
    .C1(net21),
    .Y(PRDATA[2]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23704  (.A0(\u_shift.IN_reg[35] ),
    .A1(\u_shift.IN_reg[99] ),
    .S(net19),
    .Y(\$abc$23333$new_n1101_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23705  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1101_ ),
    .Y(\$abc$23333$new_n1102_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23706  (.A1(\divider[3] ),
    .A2(\$abc$23333$new_n1086_ ),
    .B1(\$abc$23333$new_n1102_ ),
    .Y(\$abc$23333$new_n1103_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23707  (.A0(\u_shift.IN_reg[3] ),
    .A1(\u_shift.IN_reg[67] ),
    .A2(\ctrl[3] ),
    .A3(\ss[3] ),
    .S0(net19),
    .S1(\$abc$23333$new_n1069_ ),
    .X(\$abc$23333$new_n1104_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23708  (.A(net20),
    .B(\$abc$23333$new_n1104_ ),
    .Y(\$abc$23333$new_n1105_ ));
 sky130_fd_sc_hd__a211oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23709  (.A1(net20),
    .A2(\$abc$23333$new_n1103_ ),
    .B1(\$abc$23333$new_n1105_ ),
    .C1(net21),
    .Y(PRDATA[3]));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23710  (.A(net20),
    .B(\$abc$23333$new_n765_ ),
    .C(net19),
    .Y(\$abc$23333$new_n1107_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23713  (.A1(\divider[4] ),
    .A2(net16),
    .B1(\$abc$23333$new_n1067_ ),
    .B2(\ss[4] ),
    .Y(\$abc$23333$new_n1110_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23714  (.A0(\u_shift.IN_reg[36] ),
    .A1(\u_shift.IN_reg[100] ),
    .S(net19),
    .X(\$abc$23333$new_n1111_ ));
 sky130_fd_sc_hd__a221oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23715  (.A1(\u_shift.IN_reg[68] ),
    .A2(\$abc$23333$new_n1067_ ),
    .B1(\$abc$23333$new_n1111_ ),
    .B2(net20),
    .C1(\$abc$23333$new_n1069_ ),
    .Y(\$abc$23333$new_n1112_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23716  (.A1(\$abc$23333$new_n1087_ ),
    .A2(\$abc$23333$new_n1110_ ),
    .B1(\$abc$23333$new_n1112_ ),
    .Y(\$abc$23333$new_n1113_ ));
 sky130_fd_sc_hd__a221oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23717  (.A1(\ctrl[4] ),
    .A2(net17),
    .B1(net14),
    .B2(\u_shift.IN_reg[4] ),
    .C1(\$abc$23333$new_n1113_ ),
    .Y(\$abc$23333$new_n1114_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23718  (.A(net21),
    .B(\$abc$23333$new_n1114_ ),
    .Y(PRDATA[4]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23719  (.A0(\u_shift.IN_reg[5] ),
    .A1(\u_shift.IN_reg[69] ),
    .S(net19),
    .Y(\$abc$23333$new_n1116_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23720  (.A(\u_shift.IN_reg[37] ),
    .B(net16),
    .Y(\$abc$23333$new_n1117_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23721  (.A1(net20),
    .A2(\$abc$23333$new_n1116_ ),
    .B1(\$abc$23333$new_n1117_ ),
    .Y(\$abc$23333$new_n1118_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23722  (.A1(\divider[5] ),
    .A2(net16),
    .B1(\$abc$23333$new_n1067_ ),
    .B2(\ss[5] ),
    .Y(\$abc$23333$new_n1119_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23723  (.A(\$abc$23333$new_n1081_ ),
    .B(\$abc$23333$new_n1119_ ),
    .Y(\$abc$23333$new_n1120_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23724  (.A1(\$abc$23333$new_n1081_ ),
    .A2(\$abc$23333$new_n1118_ ),
    .B1(\$abc$23333$new_n1120_ ),
    .Y(\$abc$23333$new_n1121_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23725  (.A(net20),
    .SLEEP(\$abc$23333$new_n765_ ),
    .X(\$abc$23333$new_n1122_ ));
 sky130_fd_sc_hd__lpflow_inputiso0n_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23726  (.A(net19),
    .SLEEP_B(\$abc$23333$new_n1122_ ),
    .X(\$abc$23333$new_n1123_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23728  (.A1(\ctrl[5] ),
    .A2(net17),
    .B1(\$abc$23333$new_n1123_ ),
    .B2(\u_shift.IN_reg[101] ),
    .Y(\$abc$23333$new_n1125_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23730  (.A1(\$abc$23333$new_n1121_ ),
    .A2(\$abc$23333$new_n1125_ ),
    .B1(net21),
    .Y(PRDATA[5]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23731  (.A0(\ctrl[6] ),
    .A1(\ss[6] ),
    .S(net19),
    .Y(\$abc$23333$new_n1128_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23732  (.A(\divider[6] ),
    .B(net16),
    .Y(\$abc$23333$new_n1129_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23733  (.A1(net20),
    .A2(\$abc$23333$new_n1128_ ),
    .B1(\$abc$23333$new_n1129_ ),
    .Y(\$abc$23333$new_n1130_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23734  (.A0(\u_shift.IN_reg[38] ),
    .A1(\u_shift.IN_reg[102] ),
    .S(net19),
    .X(\$abc$23333$new_n1131_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23735  (.A(net20),
    .B(net19),
    .Y(\$abc$23333$new_n1132_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23736  (.A1(net20),
    .A2(\$abc$23333$new_n1131_ ),
    .B1(\$abc$23333$new_n1132_ ),
    .B2(\u_shift.IN_reg[6] ),
    .Y(\$abc$23333$new_n1133_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23737  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1133_ ),
    .Y(\$abc$23333$new_n1134_ ));
 sky130_fd_sc_hd__a221oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23738  (.A1(\u_shift.IN_reg[70] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(\$abc$23333$new_n1130_ ),
    .B2(\$abc$23333$new_n1081_ ),
    .C1(\$abc$23333$new_n1134_ ),
    .Y(\$abc$23333$new_n1135_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23739  (.A(net21),
    .B(\$abc$23333$new_n1135_ ),
    .Y(PRDATA[6]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23741  (.A0(\u_shift.IN_reg[71] ),
    .A1(\ss[7] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1138_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23742  (.A(\u_shift.IN_reg[103] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1139_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23743  (.A1(net20),
    .A2(\$abc$23333$new_n1138_ ),
    .B1(\$abc$23333$new_n1139_ ),
    .Y(\$abc$23333$new_n1140_ ));
 sky130_fd_sc_hd__nor3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23744  (.A(net20),
    .B(\$abc$23333$new_n1069_ ),
    .C_N(\u_shift.IN_reg[7] ),
    .Y(\$abc$23333$new_n1141_ ));
 sky130_fd_sc_hd__a31oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23745  (.A1(net20),
    .A2(\$abc$23333$new_n1069_ ),
    .A3(\divider[7] ),
    .B1(\$abc$23333$new_n1141_ ),
    .Y(\$abc$23333$new_n1142_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23746  (.A(net19),
    .B(\$abc$23333$new_n1142_ ),
    .Y(\$abc$23333$new_n1143_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23747  (.A1(net19),
    .A2(\$abc$23333$new_n1140_ ),
    .B1(\$abc$23333$new_n1143_ ),
    .Y(\$abc$23333$new_n1144_ ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23749  (.A_N(\$abc$23333$new_n765_ ),
    .B(net20),
    .Y(\$abc$23333$new_n1146_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23751  (.A(net19),
    .B(\$abc$23333$new_n1146_ ),
    .Y(\$abc$23333$new_n1148_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23752  (.A1(\ctrl[7] ),
    .A2(net17),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[39] ),
    .Y(\$abc$23333$new_n1149_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23753  (.A1(\$abc$23333$new_n1144_ ),
    .A2(\$abc$23333$new_n1149_ ),
    .B1(net21),
    .Y(PRDATA[7]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23754  (.A0(\u_shift.IN_reg[8] ),
    .A1(\u_shift.IN_reg[72] ),
    .S(net19),
    .Y(\$abc$23333$new_n1151_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23755  (.A(\ctrl[8] ),
    .B(\$abc$23333$new_n1086_ ),
    .Y(\$abc$23333$new_n1152_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23756  (.A1(\$abc$23333$new_n1087_ ),
    .A2(\$abc$23333$new_n1151_ ),
    .B1(\$abc$23333$new_n1152_ ),
    .Y(\$abc$23333$new_n1153_ ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23757  (.A0(\u_shift.IN_reg[40] ),
    .A1(\u_shift.IN_reg[104] ),
    .S(\$abc$23333$new_n980_ ),
    .Y(\$abc$23333$new_n1154_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23758  (.A(\divider[8] ),
    .B(\$abc$23333$new_n1086_ ),
    .Y(\$abc$23333$new_n1155_ ));
 sky130_fd_sc_hd__o211ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23759  (.A1(\$abc$23333$new_n1087_ ),
    .A2(\$abc$23333$new_n1154_ ),
    .B1(\$abc$23333$new_n1155_ ),
    .C1(net20),
    .Y(\$abc$23333$new_n1156_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23760  (.A1(net20),
    .A2(\$abc$23333$new_n1153_ ),
    .B1(\$abc$23333$new_n1156_ ),
    .Y(\$abc$23333$new_n1157_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23762  (.A(\ss[8] ),
    .B(\$abc$23333$new_n981_ ),
    .Y(\$abc$23333$new_n1159_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23763  (.A1(\$abc$23333$new_n1157_ ),
    .A2(\$abc$23333$new_n1159_ ),
    .B1(net21),
    .Y(PRDATA[8]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23764  (.A0(\u_shift.IN_reg[9] ),
    .A1(\u_shift.IN_reg[73] ),
    .S(net19),
    .Y(\$abc$23333$new_n1161_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23765  (.A(\u_shift.IN_reg[41] ),
    .B(net16),
    .Y(\$abc$23333$new_n1162_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23766  (.A1(net20),
    .A2(\$abc$23333$new_n1161_ ),
    .B1(\$abc$23333$new_n1162_ ),
    .Y(\$abc$23333$new_n1163_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23767  (.A1(\divider[9] ),
    .A2(net16),
    .B1(\$abc$23333$new_n1067_ ),
    .B2(\ss[9] ),
    .Y(\$abc$23333$new_n1164_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23768  (.A(\$abc$23333$new_n1081_ ),
    .B(\$abc$23333$new_n1164_ ),
    .Y(\$abc$23333$new_n1165_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23769  (.A1(\$abc$23333$new_n1081_ ),
    .A2(\$abc$23333$new_n1163_ ),
    .B1(\$abc$23333$new_n1165_ ),
    .Y(\$abc$23333$new_n1166_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23770  (.A1(\ctrl[9] ),
    .A2(net17),
    .B1(\$abc$23333$new_n1123_ ),
    .B2(\u_shift.IN_reg[105] ),
    .Y(\$abc$23333$new_n1167_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23771  (.A1(\$abc$23333$new_n1166_ ),
    .A2(\$abc$23333$new_n1167_ ),
    .B1(net21),
    .Y(PRDATA[9]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23772  (.A0(\u_shift.IN_reg[42] ),
    .A1(\u_shift.IN_reg[106] ),
    .S(\$abc$23333$new_n980_ ),
    .Y(\$abc$23333$new_n1169_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23773  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1169_ ),
    .Y(\$abc$23333$new_n1170_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23774  (.A1(\divider[10] ),
    .A2(\$abc$23333$new_n1086_ ),
    .B1(\$abc$23333$new_n1170_ ),
    .Y(\$abc$23333$new_n1171_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23775  (.A0(\u_shift.IN_reg[10] ),
    .A1(\u_shift.IN_reg[74] ),
    .A2(\ctrl[10] ),
    .A3(\ss[10] ),
    .S0(net19),
    .S1(\$abc$23333$new_n1069_ ),
    .X(\$abc$23333$new_n1172_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23776  (.A(net20),
    .B(\$abc$23333$new_n1172_ ),
    .Y(\$abc$23333$new_n1173_ ));
 sky130_fd_sc_hd__a211oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23777  (.A1(net20),
    .A2(\$abc$23333$new_n1171_ ),
    .B1(\$abc$23333$new_n1173_ ),
    .C1(net21),
    .Y(PRDATA[10]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23778  (.A0(\u_shift.IN_reg[43] ),
    .A1(\u_shift.IN_reg[107] ),
    .S(\$abc$23333$new_n980_ ),
    .Y(\$abc$23333$new_n1175_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23779  (.A(\$abc$23333$new_n1087_ ),
    .B(\$abc$23333$new_n1175_ ),
    .Y(\$abc$23333$new_n1176_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23780  (.A1(\divider[11] ),
    .A2(\$abc$23333$new_n1086_ ),
    .B1(\$abc$23333$new_n1176_ ),
    .Y(\$abc$23333$new_n1177_ ));
 sky130_fd_sc_hd__mux4_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23781  (.A0(\u_shift.IN_reg[11] ),
    .A1(\ctrl[11] ),
    .A2(\u_shift.IN_reg[75] ),
    .A3(\ss[11] ),
    .S0(\$abc$23333$new_n1068_ ),
    .S1(net19),
    .X(\$abc$23333$new_n1178_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23782  (.A(net20),
    .B(\$abc$23333$new_n1178_ ),
    .Y(\$abc$23333$new_n1179_ ));
 sky130_fd_sc_hd__a211oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23783  (.A1(net20),
    .A2(\$abc$23333$new_n1177_ ),
    .B1(\$abc$23333$new_n1179_ ),
    .C1(net21),
    .Y(PRDATA[11]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23784  (.A0(\u_shift.IN_reg[12] ),
    .A1(\u_shift.IN_reg[76] ),
    .S(net19),
    .Y(\$abc$23333$new_n1181_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23785  (.A(\u_shift.IN_reg[44] ),
    .B(net16),
    .Y(\$abc$23333$new_n1182_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23786  (.A1(net20),
    .A2(\$abc$23333$new_n1181_ ),
    .B1(\$abc$23333$new_n1182_ ),
    .Y(\$abc$23333$new_n1183_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23787  (.A1(\divider[12] ),
    .A2(net16),
    .B1(\$abc$23333$new_n1067_ ),
    .B2(\ss[12] ),
    .Y(\$abc$23333$new_n1184_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23788  (.A(\$abc$23333$new_n1081_ ),
    .B(\$abc$23333$new_n1184_ ),
    .Y(\$abc$23333$new_n1185_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23789  (.A1(\$abc$23333$new_n1081_ ),
    .A2(\$abc$23333$new_n1183_ ),
    .B1(\$abc$23333$new_n1185_ ),
    .Y(\$abc$23333$new_n1186_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23790  (.A1(\ctrl[12] ),
    .A2(net17),
    .B1(\$abc$23333$new_n1123_ ),
    .B2(\u_shift.IN_reg[108] ),
    .Y(\$abc$23333$new_n1187_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23791  (.A1(\$abc$23333$new_n1186_ ),
    .A2(\$abc$23333$new_n1187_ ),
    .B1(net21),
    .Y(PRDATA[12]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23792  (.A0(\u_shift.IN_reg[45] ),
    .A1(\u_shift.IN_reg[109] ),
    .S(\$abc$23333$new_n980_ ),
    .Y(\$abc$23333$new_n1189_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23793  (.A(\divider[13] ),
    .B(\$abc$23333$new_n1086_ ),
    .Y(\$abc$23333$new_n1190_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23794  (.A1(\$abc$23333$new_n1087_ ),
    .A2(\$abc$23333$new_n1189_ ),
    .B1(\$abc$23333$new_n1190_ ),
    .Y(\$abc$23333$new_n1191_ ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23795  (.A0(\u_shift.IN_reg[13] ),
    .A1(\u_shift.IN_reg[77] ),
    .S(net19),
    .Y(\$abc$23333$new_n1192_ ));
 sky130_fd_sc_hd__a2bb2oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23796  (.A1_N(\$abc$23333$new_n1069_ ),
    .A2_N(\$abc$23333$new_n1192_ ),
    .B1(\$abc$23333$new_n1086_ ),
    .B2(\ctrl[13] ),
    .Y(\$abc$23333$new_n1193_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23797  (.A(net20),
    .B(\$abc$23333$new_n1193_ ),
    .Y(\$abc$23333$new_n1194_ ));
 sky130_fd_sc_hd__a221oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23798  (.A1(\ss[13] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1191_ ),
    .B2(net20),
    .C1(\$abc$23333$new_n1194_ ),
    .Y(\$abc$23333$new_n1195_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23799  (.A(net21),
    .B(\$abc$23333$new_n1195_ ),
    .Y(PRDATA[13]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23800  (.A0(\u_shift.IN_reg[14] ),
    .A1(\u_shift.IN_reg[78] ),
    .S(net19),
    .Y(\$abc$23333$new_n1197_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23801  (.A(\u_shift.IN_reg[46] ),
    .B(net16),
    .Y(\$abc$23333$new_n1198_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23802  (.A1(net20),
    .A2(\$abc$23333$new_n1197_ ),
    .B1(\$abc$23333$new_n1198_ ),
    .Y(\$abc$23333$new_n1199_ ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23803  (.A0(\ctrl[14] ),
    .A1(\ss[14] ),
    .S(\$abc$23333$new_n980_ ),
    .Y(\$abc$23333$new_n1200_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23804  (.A(\divider[14] ),
    .B(net16),
    .Y(\$abc$23333$new_n1201_ ));
 sky130_fd_sc_hd__o211ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23805  (.A1(net20),
    .A2(\$abc$23333$new_n1200_ ),
    .B1(\$abc$23333$new_n1201_ ),
    .C1(\$abc$23333$new_n1081_ ),
    .Y(\$abc$23333$new_n1202_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23806  (.A1(\$abc$23333$new_n1081_ ),
    .A2(\$abc$23333$new_n1199_ ),
    .B1(\$abc$23333$new_n1202_ ),
    .Y(\$abc$23333$new_n1203_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23807  (.A(\u_shift.IN_reg[110] ),
    .B(\$abc$23333$new_n1123_ ),
    .Y(\$abc$23333$new_n1204_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23808  (.A1(\$abc$23333$new_n1203_ ),
    .A2(\$abc$23333$new_n1204_ ),
    .B1(net21),
    .Y(PRDATA[14]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23809  (.A(net19),
    .B(\u_shift.IN_reg[111] ),
    .Y(\$abc$23333$new_n1206_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23810  (.A(\divider[15] ),
    .B(\$abc$23333$new_n1086_ ),
    .Y(\$abc$23333$new_n1207_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23811  (.A1(\$abc$23333$new_n1069_ ),
    .A2(\$abc$23333$new_n1206_ ),
    .B1(\$abc$23333$new_n1207_ ),
    .Y(\$abc$23333$new_n1208_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23812  (.A0(\u_shift.IN_reg[79] ),
    .A1(\ss[15] ),
    .S(\$abc$23333$new_n1043_ ),
    .X(\$abc$23333$new_n1209_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23813  (.A1(net20),
    .A2(\$abc$23333$new_n1208_ ),
    .B1(\$abc$23333$new_n1209_ ),
    .B2(\$abc$23333$new_n1067_ ),
    .Y(\$abc$23333$new_n1210_ ));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23814  (.A0(\u_shift.IN_reg[15] ),
    .A1(\ctrl[15] ),
    .S(\$abc$23333$new_n1068_ ),
    .Y(\$abc$23333$new_n1211_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23815  (.A(net20),
    .B(\$abc$23333$new_n1211_ ),
    .Y(\$abc$23333$new_n1212_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23816  (.A1(\u_shift.IN_reg[47] ),
    .A2(\$abc$23333$new_n1122_ ),
    .B1(\$abc$23333$new_n1212_ ),
    .Y(\$abc$23333$new_n1213_ ));
 sky130_fd_sc_hd__or2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23817  (.A(net19),
    .B(\$abc$23333$new_n1213_ ),
    .X(\$abc$23333$new_n1214_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23818  (.A1(\$abc$23333$new_n1210_ ),
    .A2(\$abc$23333$new_n1214_ ),
    .B1(net21),
    .Y(PRDATA[15]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23819  (.A0(\u_shift.IN_reg[48] ),
    .A1(\u_shift.IN_reg[112] ),
    .S(net19),
    .Y(\$abc$23333$new_n1216_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23820  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1216_ ),
    .Y(\$abc$23333$new_n1217_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23821  (.A1(\ss[16] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1217_ ),
    .Y(\$abc$23333$new_n1218_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23822  (.A1(\u_shift.IN_reg[80] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[16] ),
    .Y(\$abc$23333$new_n1219_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23823  (.A1(\$abc$23333$new_n1218_ ),
    .A2(\$abc$23333$new_n1219_ ),
    .B1(net21),
    .Y(PRDATA[16]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23824  (.A0(\u_shift.IN_reg[81] ),
    .A1(\ss[17] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1221_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23825  (.A(\u_shift.IN_reg[113] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1222_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23826  (.A1(net20),
    .A2(\$abc$23333$new_n1221_ ),
    .B1(\$abc$23333$new_n1222_ ),
    .Y(\$abc$23333$new_n1223_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23827  (.A1(\u_shift.IN_reg[17] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[49] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1223_ ),
    .Y(\$abc$23333$new_n1224_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23828  (.A(net21),
    .B(\$abc$23333$new_n1224_ ),
    .Y(PRDATA[17]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23829  (.A0(\u_shift.IN_reg[82] ),
    .A1(\ss[18] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1226_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23830  (.A(\u_shift.IN_reg[114] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1227_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23831  (.A1(net20),
    .A2(\$abc$23333$new_n1226_ ),
    .B1(\$abc$23333$new_n1227_ ),
    .Y(\$abc$23333$new_n1228_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23832  (.A1(\u_shift.IN_reg[18] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[50] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1228_ ),
    .Y(\$abc$23333$new_n1229_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23833  (.A(net21),
    .B(\$abc$23333$new_n1229_ ),
    .Y(PRDATA[18]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23834  (.A0(\u_shift.IN_reg[51] ),
    .A1(\u_shift.IN_reg[115] ),
    .S(net19),
    .Y(\$abc$23333$new_n1231_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23835  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1231_ ),
    .Y(\$abc$23333$new_n1232_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23836  (.A1(\ss[19] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1232_ ),
    .Y(\$abc$23333$new_n1233_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23837  (.A1(\u_shift.IN_reg[83] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[19] ),
    .Y(\$abc$23333$new_n1234_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23838  (.A1(\$abc$23333$new_n1233_ ),
    .A2(\$abc$23333$new_n1234_ ),
    .B1(net21),
    .Y(PRDATA[19]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23839  (.A0(\u_shift.IN_reg[84] ),
    .A1(\ss[20] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1236_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23840  (.A(\u_shift.IN_reg[116] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1237_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23841  (.A1(net20),
    .A2(\$abc$23333$new_n1236_ ),
    .B1(\$abc$23333$new_n1237_ ),
    .Y(\$abc$23333$new_n1238_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23842  (.A1(\u_shift.IN_reg[20] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[52] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1238_ ),
    .Y(\$abc$23333$new_n1239_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23843  (.A(net21),
    .B(\$abc$23333$new_n1239_ ),
    .Y(PRDATA[20]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23844  (.A0(\u_shift.IN_reg[53] ),
    .A1(\u_shift.IN_reg[117] ),
    .S(net19),
    .Y(\$abc$23333$new_n1241_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23845  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1241_ ),
    .Y(\$abc$23333$new_n1242_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23846  (.A1(\ss[21] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1242_ ),
    .Y(\$abc$23333$new_n1243_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23847  (.A1(\u_shift.IN_reg[85] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[21] ),
    .Y(\$abc$23333$new_n1244_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23848  (.A1(\$abc$23333$new_n1243_ ),
    .A2(\$abc$23333$new_n1244_ ),
    .B1(net21),
    .Y(PRDATA[21]));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23849  (.A0(\u_shift.IN_reg[86] ),
    .A1(\ss[22] ),
    .S(\$abc$23333$new_n1068_ ),
    .X(\$abc$23333$new_n1246_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23850  (.A1(\u_shift.IN_reg[54] ),
    .A2(\$abc$23333$new_n1148_ ),
    .B1(\$abc$23333$new_n1246_ ),
    .B2(\$abc$23333$new_n1067_ ),
    .Y(\$abc$23333$new_n1247_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23851  (.A1(\u_shift.IN_reg[22] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1123_ ),
    .B2(\u_shift.IN_reg[118] ),
    .Y(\$abc$23333$new_n1248_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23852  (.A1(\$abc$23333$new_n1247_ ),
    .A2(\$abc$23333$new_n1248_ ),
    .B1(net21),
    .Y(PRDATA[22]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23853  (.A0(\u_shift.IN_reg[55] ),
    .A1(\u_shift.IN_reg[119] ),
    .S(net19),
    .Y(\$abc$23333$new_n1250_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23854  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1250_ ),
    .Y(\$abc$23333$new_n1251_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23855  (.A1(\ss[23] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1251_ ),
    .Y(\$abc$23333$new_n1252_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23856  (.A1(\u_shift.IN_reg[87] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[23] ),
    .Y(\$abc$23333$new_n1253_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23857  (.A1(\$abc$23333$new_n1252_ ),
    .A2(\$abc$23333$new_n1253_ ),
    .B1(net21),
    .Y(PRDATA[23]));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23858  (.A0(\u_shift.IN_reg[88] ),
    .A1(\ss[24] ),
    .S(\$abc$23333$new_n1068_ ),
    .X(\$abc$23333$new_n1255_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23859  (.A1(\u_shift.IN_reg[56] ),
    .A2(\$abc$23333$new_n1148_ ),
    .B1(\$abc$23333$new_n1255_ ),
    .B2(\$abc$23333$new_n1067_ ),
    .Y(\$abc$23333$new_n1256_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23860  (.A1(\u_shift.IN_reg[24] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1123_ ),
    .B2(\u_shift.IN_reg[120] ),
    .Y(\$abc$23333$new_n1257_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23861  (.A1(\$abc$23333$new_n1256_ ),
    .A2(\$abc$23333$new_n1257_ ),
    .B1(net21),
    .Y(PRDATA[24]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23862  (.A0(\u_shift.IN_reg[89] ),
    .A1(\ss[25] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1259_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23863  (.A(\u_shift.IN_reg[121] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1260_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23864  (.A1(net20),
    .A2(\$abc$23333$new_n1259_ ),
    .B1(\$abc$23333$new_n1260_ ),
    .Y(\$abc$23333$new_n1261_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23865  (.A1(\u_shift.IN_reg[25] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[57] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1261_ ),
    .Y(\$abc$23333$new_n1262_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23866  (.A(net21),
    .B(\$abc$23333$new_n1262_ ),
    .Y(PRDATA[25]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23867  (.A0(\u_shift.IN_reg[90] ),
    .A1(\ss[26] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1264_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23868  (.A(\u_shift.IN_reg[122] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1265_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23869  (.A1(net20),
    .A2(\$abc$23333$new_n1264_ ),
    .B1(\$abc$23333$new_n1265_ ),
    .Y(\$abc$23333$new_n1266_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23870  (.A1(\u_shift.IN_reg[26] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[58] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1266_ ),
    .Y(\$abc$23333$new_n1267_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23871  (.A(net21),
    .B(\$abc$23333$new_n1267_ ),
    .Y(PRDATA[26]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23872  (.A0(\u_shift.IN_reg[59] ),
    .A1(\u_shift.IN_reg[123] ),
    .S(net19),
    .Y(\$abc$23333$new_n1269_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23873  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1269_ ),
    .Y(\$abc$23333$new_n1270_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23874  (.A1(\ss[27] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1270_ ),
    .Y(\$abc$23333$new_n1271_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23875  (.A1(\u_shift.IN_reg[91] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[27] ),
    .Y(\$abc$23333$new_n1272_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23876  (.A1(\$abc$23333$new_n1271_ ),
    .A2(\$abc$23333$new_n1272_ ),
    .B1(net21),
    .Y(PRDATA[27]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23877  (.A0(\u_shift.IN_reg[60] ),
    .A1(\u_shift.IN_reg[124] ),
    .S(net19),
    .Y(\$abc$23333$new_n1274_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23878  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1274_ ),
    .Y(\$abc$23333$new_n1275_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23879  (.A1(\ss[28] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1275_ ),
    .Y(\$abc$23333$new_n1276_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23880  (.A1(\u_shift.IN_reg[92] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[28] ),
    .Y(\$abc$23333$new_n1277_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23881  (.A1(\$abc$23333$new_n1276_ ),
    .A2(\$abc$23333$new_n1277_ ),
    .B1(net21),
    .Y(PRDATA[28]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23882  (.A0(\u_shift.IN_reg[61] ),
    .A1(\u_shift.IN_reg[125] ),
    .S(net19),
    .Y(\$abc$23333$new_n1279_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23883  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1279_ ),
    .Y(\$abc$23333$new_n1280_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23884  (.A1(\ss[29] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1280_ ),
    .Y(\$abc$23333$new_n1281_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23885  (.A1(\u_shift.IN_reg[93] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[29] ),
    .Y(\$abc$23333$new_n1282_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23886  (.A1(\$abc$23333$new_n1281_ ),
    .A2(\$abc$23333$new_n1282_ ),
    .B1(net21),
    .Y(PRDATA[29]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23887  (.A0(\u_shift.IN_reg[94] ),
    .A1(\ss[30] ),
    .S(\$abc$23333$new_n1043_ ),
    .Y(\$abc$23333$new_n1284_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23888  (.A(\u_shift.IN_reg[126] ),
    .B(\$abc$23333$new_n1122_ ),
    .Y(\$abc$23333$new_n1285_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$23889  (.A1(net20),
    .A2(\$abc$23333$new_n1284_ ),
    .B1(\$abc$23333$new_n1285_ ),
    .Y(\$abc$23333$new_n1286_ ));
 sky130_fd_sc_hd__a222oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23890  (.A1(\u_shift.IN_reg[30] ),
    .A2(net14),
    .B1(\$abc$23333$new_n1148_ ),
    .B2(\u_shift.IN_reg[62] ),
    .C1(net19),
    .C2(\$abc$23333$new_n1286_ ),
    .Y(\$abc$23333$new_n1287_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23891  (.A(net21),
    .B(\$abc$23333$new_n1287_ ),
    .Y(PRDATA[30]));
 sky130_fd_sc_hd__mux2i_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23892  (.A0(\u_shift.IN_reg[63] ),
    .A1(\u_shift.IN_reg[127] ),
    .S(net19),
    .Y(\$abc$23333$new_n1289_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23893  (.A(\$abc$23333$new_n1146_ ),
    .B(\$abc$23333$new_n1289_ ),
    .Y(\$abc$23333$new_n1290_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23894  (.A1(\ss[31] ),
    .A2(\$abc$23333$new_n981_ ),
    .B1(\$abc$23333$new_n1290_ ),
    .Y(\$abc$23333$new_n1291_ ));
 sky130_fd_sc_hd__a22oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23895  (.A1(\u_shift.IN_reg[95] ),
    .A2(\$abc$23333$new_n1070_ ),
    .B1(net14),
    .B2(\u_shift.IN_reg[31] ),
    .Y(\$abc$23333$new_n1292_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23896  (.A1(\$abc$23333$new_n1291_ ),
    .A2(\$abc$23333$new_n1292_ ),
    .B1(net21),
    .Y(PRDATA[31]));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23897  (.A(\$abc$23333$new_n764_ ),
    .B(\$abc$23333$new_n778_ ),
    .Y(\$abc$23333$new_n1294_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23898  (.A0(\u_shift.IN_reg[75] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1294_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][75] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23899  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n815_ ),
    .Y(\$abc$23333$new_n1296_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23900  (.A0(\u_shift.IN_reg[74] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1296_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][74] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23901  (.A(\$abc$23333$new_n763_ ),
    .B(\$abc$23333$new_n811_ ),
    .Y(\$abc$23333$new_n1298_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23902  (.A(net15),
    .B(\$abc$23333$new_n1298_ ),
    .Y(\$abc$23333$new_n1299_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23903  (.A0(\u_shift.IN_reg[121] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1299_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][121] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23904  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1298_ ),
    .Y(\$abc$23333$new_n1301_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23905  (.A0(\u_shift.IN_reg[73] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1301_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][73] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23906  (.A(\$abc$23333$new_n763_ ),
    .B(\$abc$23333$new_n799_ ),
    .Y(\$abc$23333$new_n1303_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23907  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1304_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23908  (.A0(\u_shift.IN_reg[72] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1304_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][72] ));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23909  (.A(\u_shift.rx_bit_pos[2] ),
    .SLEEP(\u_shift.rx_bit_pos[3] ),
    .X(\$abc$23333$new_n1306_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23910  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n1306_ ),
    .Y(\$abc$23333$new_n1307_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23911  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1307_ ),
    .Y(\$abc$23333$new_n1308_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23912  (.A0(\u_shift.IN_reg[71] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1308_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][71] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23913  (.A(\$abc$23333$new_n786_ ),
    .B(\$abc$23333$new_n1306_ ),
    .Y(\$abc$23333$new_n1310_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23914  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1310_ ),
    .Y(\$abc$23333$new_n1311_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23915  (.A0(\u_shift.IN_reg[70] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1311_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][70] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23916  (.A(net15),
    .B(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1313_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23917  (.A0(\u_shift.IN_reg[120] ),
    .A1(\$abc$23333$new_n969_ ),
    .S(\$abc$23333$new_n1313_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][120] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23918  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1315_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23919  (.A(\$abc$23333$new_n811_ ),
    .B(\$abc$23333$new_n1306_ ),
    .Y(\$abc$23333$new_n1316_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23920  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1316_ ),
    .Y(\$abc$23333$new_n1317_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23921  (.A0(\u_shift.IN_reg[69] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1317_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][69] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23922  (.A(\$abc$23333$new_n799_ ),
    .B(\$abc$23333$new_n1306_ ),
    .Y(\$abc$23333$new_n1319_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23923  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1319_ ),
    .Y(\$abc$23333$new_n1320_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23924  (.A0(\u_shift.IN_reg[68] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1320_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][68] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23925  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n806_ ),
    .Y(\$abc$23333$new_n1322_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23926  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n1322_ ),
    .Y(\$abc$23333$new_n1323_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23927  (.A0(\u_shift.IN_reg[67] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1323_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][67] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23928  (.A(net15),
    .B(\$abc$23333$new_n1307_ ),
    .Y(\$abc$23333$new_n1325_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23929  (.A0(\u_shift.IN_reg[119] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1325_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][119] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23930  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n944_ ),
    .Y(\$abc$23333$new_n1327_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23931  (.A0(\u_shift.IN_reg[66] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1327_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][66] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23932  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n818_ ),
    .Y(\$abc$23333$new_n1329_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23933  (.A0(\u_shift.IN_reg[65] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1329_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][65] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23934  (.A(\$abc$23333$new_n778_ ),
    .B(\$abc$23333$new_n807_ ),
    .Y(\$abc$23333$new_n1331_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23935  (.A0(\u_shift.IN_reg[64] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1331_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][64] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23936  (.A(net15),
    .B(\$abc$23333$new_n1310_ ),
    .Y(\$abc$23333$new_n1333_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23937  (.A0(\u_shift.IN_reg[118] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1333_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][118] ));
 sky130_fd_sc_hd__nand3b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23938  (.A_N(\u_shift.rx_bit_pos[6] ),
    .B(\u_shift.rx_bit_pos[5] ),
    .C(\u_shift.rx_bit_pos[4] ),
    .Y(\$abc$23333$new_n1335_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23940  (.A(\$abc$23333$new_n776_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1337_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23941  (.A0(\u_shift.IN_reg[63] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1337_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][63] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23942  (.A(\$abc$23333$new_n787_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1339_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23943  (.A0(\u_shift.IN_reg[62] ),
    .A1(\$abc$23333$new_n1315_ ),
    .S(\$abc$23333$new_n1339_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][62] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23944  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1341_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23945  (.A(\$abc$23333$new_n812_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1342_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23946  (.A0(\u_shift.IN_reg[61] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1342_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][61] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23947  (.A(net15),
    .B(\$abc$23333$new_n1316_ ),
    .Y(\$abc$23333$new_n1344_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23948  (.A0(\u_shift.IN_reg[117] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1344_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][117] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23949  (.A(\$abc$23333$new_n800_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1346_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23950  (.A0(\u_shift.IN_reg[60] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1346_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][60] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23951  (.A(\$abc$23333$new_n764_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1348_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23952  (.A0(\u_shift.IN_reg[59] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1348_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][59] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23953  (.A(\$abc$23333$new_n815_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1350_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23954  (.A0(\u_shift.IN_reg[58] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1350_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][58] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23955  (.A(net15),
    .B(\$abc$23333$new_n1319_ ),
    .Y(\$abc$23333$new_n1352_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23956  (.A0(\u_shift.IN_reg[116] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1352_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][116] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23957  (.A(\$abc$23333$new_n1298_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1354_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23958  (.A0(\u_shift.IN_reg[57] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1354_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][57] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23959  (.A(\$abc$23333$new_n1303_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1356_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23960  (.A0(\u_shift.IN_reg[56] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1356_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][56] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23961  (.A(\$abc$23333$new_n1307_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1358_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23962  (.A0(\u_shift.IN_reg[55] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1358_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][55] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23963  (.A(\$abc$23333$new_n1310_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1360_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23964  (.A0(\u_shift.IN_reg[54] ),
    .A1(\$abc$23333$new_n1341_ ),
    .S(\$abc$23333$new_n1360_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][54] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23965  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1362_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23966  (.A(net15),
    .B(\$abc$23333$new_n1322_ ),
    .Y(\$abc$23333$new_n1363_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23967  (.A0(\u_shift.IN_reg[115] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1363_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][115] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23968  (.A(\$abc$23333$new_n1316_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1365_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23969  (.A0(\u_shift.IN_reg[53] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1365_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][53] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23970  (.A(\$abc$23333$new_n1319_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1367_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23971  (.A0(\u_shift.IN_reg[52] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1367_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][52] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23972  (.A(\$abc$23333$new_n1322_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1369_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23973  (.A0(\u_shift.IN_reg[51] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1369_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][51] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23974  (.A(net15),
    .B(\$abc$23333$new_n944_ ),
    .Y(\$abc$23333$new_n1371_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23975  (.A0(\u_shift.IN_reg[114] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1371_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][114] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23976  (.A(\$abc$23333$new_n944_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1373_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23977  (.A0(\u_shift.IN_reg[50] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1373_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][50] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23978  (.A(\$abc$23333$new_n818_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1375_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23979  (.A0(\u_shift.IN_reg[49] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1375_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][49] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23980  (.A(\$abc$23333$new_n807_ ),
    .B(\$abc$23333$new_n1335_ ),
    .Y(\$abc$23333$new_n1377_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23981  (.A0(\u_shift.IN_reg[48] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1377_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][48] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23982  (.A(net15),
    .B(\$abc$23333$new_n818_ ),
    .Y(\$abc$23333$new_n1379_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23983  (.A0(\u_shift.IN_reg[113] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1379_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][113] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23984  (.A(\u_shift.rx_bit_pos[1] ),
    .B(\u_shift.rx_bit_pos[0] ),
    .C(\$abc$23333$new_n783_ ),
    .Y(\$abc$23333$new_n1381_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23985  (.A(\$abc$23333$new_n1381_ ),
    .B(\$abc$23333$new_n838_ ),
    .Y(\$abc$23333$new_n1382_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23986  (.A(\$abc$23333$new_n765_ ),
    .B(\$abc$23333$new_n766_ ),
    .Y(\$abc$23333$new_n1383_ ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23987  (.A_N(\u_shift.rx_bit_pos[4] ),
    .B(\u_shift.rx_bit_pos[5] ),
    .Y(\$abc$23333$new_n1384_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23988  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\$abc$23333$new_n1383_ ),
    .C(\$abc$23333$new_n1384_ ),
    .Y(\$abc$23333$new_n1385_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23990  (.A(\$abc$23333$new_n1382_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1387_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23991  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[47] ),
    .S(\$abc$23333$new_n1387_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][47] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23992  (.A(\$abc$23333$new_n783_ ),
    .B(\$abc$23333$new_n785_ ),
    .Y(\$abc$23333$new_n1389_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23993  (.A(\$abc$23333$new_n838_ ),
    .B(\$abc$23333$new_n1389_ ),
    .Y(\$abc$23333$new_n1390_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23994  (.A(\$abc$23333$new_n1390_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1391_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23995  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[46] ),
    .S(\$abc$23333$new_n1391_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][46] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23996  (.A(\$abc$23333$new_n783_ ),
    .B(\$abc$23333$new_n810_ ),
    .Y(\$abc$23333$new_n1393_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23997  (.A(\$abc$23333$new_n838_ ),
    .B(\$abc$23333$new_n1393_ ),
    .Y(\$abc$23333$new_n1394_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$23998  (.A(\$abc$23333$new_n1394_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1395_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$23999  (.A0(\$abc$23333$new_n790_ ),
    .A1(\u_shift.IN_reg[45] ),
    .S(\$abc$23333$new_n1395_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][45] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24000  (.A(net15),
    .B(\$abc$23333$new_n807_ ),
    .Y(\$abc$23333$new_n1397_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24001  (.A0(\u_shift.IN_reg[112] ),
    .A1(\$abc$23333$new_n1362_ ),
    .S(\$abc$23333$new_n1397_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][112] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24002  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1399_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24003  (.A(\$abc$23333$new_n783_ ),
    .B(\$abc$23333$new_n794_ ),
    .Y(\$abc$23333$new_n1400_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24004  (.A(\$abc$23333$new_n838_ ),
    .B(\$abc$23333$new_n1400_ ),
    .Y(\$abc$23333$new_n1401_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24005  (.A(\$abc$23333$new_n1401_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1402_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24006  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[44] ),
    .S(\$abc$23333$new_n1402_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][44] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24007  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n763_ ),
    .C(net13),
    .Y(\$abc$23333$new_n1404_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24008  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[43] ),
    .S(\$abc$23333$new_n1404_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][43] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24009  (.A(\$abc$23333$new_n791_ ),
    .B(\$abc$23333$new_n1389_ ),
    .Y(\$abc$23333$new_n1406_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24010  (.A(\$abc$23333$new_n1406_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1407_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24011  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[42] ),
    .S(\$abc$23333$new_n1407_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][42] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24012  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1409_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24013  (.A(\$abc$23333$new_n776_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n1410_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24014  (.A0(\u_shift.IN_reg[111] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1410_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][111] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24015  (.A(\$abc$23333$new_n791_ ),
    .B(\$abc$23333$new_n1393_ ),
    .Y(\$abc$23333$new_n1412_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24016  (.A(\$abc$23333$new_n1412_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1413_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24017  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[41] ),
    .S(\$abc$23333$new_n1413_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][41] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24018  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\$abc$23333$new_n1384_ ),
    .C(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1415_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24019  (.A0(\u_shift.IN_reg[40] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1415_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][40] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24020  (.A(\$abc$23333$new_n1381_ ),
    .B(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n1417_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24021  (.A(\$abc$23333$new_n1417_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1418_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24022  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[39] ),
    .S(\$abc$23333$new_n1418_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][39] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24023  (.A(\$abc$23333$new_n787_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n1420_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24024  (.A0(\u_shift.IN_reg[110] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1420_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][110] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24025  (.A(\$abc$23333$new_n1389_ ),
    .B(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n1422_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24026  (.A(\$abc$23333$new_n1422_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1423_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24027  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[38] ),
    .S(\$abc$23333$new_n1423_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][38] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24028  (.A(\$abc$23333$new_n1393_ ),
    .B(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n1425_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24029  (.A(\$abc$23333$new_n1425_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1426_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24030  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[37] ),
    .S(\$abc$23333$new_n1426_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][37] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24031  (.A(\$abc$23333$new_n1400_ ),
    .B(\$abc$23333$new_n963_ ),
    .Y(\$abc$23333$new_n1428_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24032  (.A(\$abc$23333$new_n1428_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1429_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24033  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[36] ),
    .S(\$abc$23333$new_n1429_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][36] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24034  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n806_ ),
    .C(net13),
    .Y(\$abc$23333$new_n1431_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24035  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[35] ),
    .S(\$abc$23333$new_n1431_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][35] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24036  (.A(\$abc$23333$new_n812_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n1433_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24037  (.A0(\u_shift.IN_reg[109] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1433_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][109] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24038  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n1389_ ),
    .Y(\$abc$23333$new_n1435_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24039  (.A(\$abc$23333$new_n1435_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1436_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24040  (.A0(\$abc$23333$new_n1399_ ),
    .A1(\u_shift.IN_reg[34] ),
    .S(\$abc$23333$new_n1436_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][34] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24041  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1438_ ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24042  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n1393_ ),
    .Y(\$abc$23333$new_n1439_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24043  (.A(\$abc$23333$new_n1439_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1440_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24044  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[33] ),
    .S(\$abc$23333$new_n1440_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][33] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24045  (.A(\u_shift.rx_bit_pos[2] ),
    .B(\u_shift.rx_bit_pos[3] ),
    .C(\$abc$23333$new_n1400_ ),
    .Y(\$abc$23333$new_n1442_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24046  (.A(\$abc$23333$new_n1442_ ),
    .B(net13),
    .Y(\$abc$23333$new_n1443_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24047  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[32] ),
    .S(\$abc$23333$new_n1443_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][32] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24048  (.A(\$abc$23333$new_n800_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n1445_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24049  (.A0(\u_shift.IN_reg[108] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1445_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][108] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24050  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\$abc$23333$new_n1383_ ),
    .C(\$abc$23333$new_n803_ ),
    .Y(\$abc$23333$new_n1447_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24052  (.A(\$abc$23333$new_n1382_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1449_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24053  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[31] ),
    .S(\$abc$23333$new_n1449_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][31] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24054  (.A(\$abc$23333$new_n1390_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1451_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24055  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[30] ),
    .S(\$abc$23333$new_n1451_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][30] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24056  (.A(\$abc$23333$new_n1394_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1453_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24057  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[29] ),
    .S(\$abc$23333$new_n1453_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][29] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24058  (.A(\$abc$23333$new_n764_ ),
    .B(\$abc$23333$new_n777_ ),
    .C(\$abc$23333$new_n1384_ ),
    .Y(\$abc$23333$new_n1455_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24059  (.A0(\u_shift.IN_reg[107] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1455_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][107] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24060  (.A(\$abc$23333$new_n1401_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1457_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24061  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[28] ),
    .S(\$abc$23333$new_n1457_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][28] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24062  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n763_ ),
    .C(net12),
    .Y(\$abc$23333$new_n1459_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24063  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[27] ),
    .S(\$abc$23333$new_n1459_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][27] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24064  (.A(\$abc$23333$new_n1406_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1461_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24065  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[26] ),
    .S(\$abc$23333$new_n1461_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][26] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24066  (.A(\$abc$23333$new_n815_ ),
    .B(\$abc$23333$new_n841_ ),
    .Y(\$abc$23333$new_n1463_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24067  (.A0(\u_shift.IN_reg[106] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1463_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][106] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24068  (.A(\$abc$23333$new_n1412_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1465_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24069  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[25] ),
    .S(\$abc$23333$new_n1465_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][25] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24070  (.A(\u_shift.rx_bit_pos[6] ),
    .B(\$abc$23333$new_n803_ ),
    .C(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1467_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24071  (.A0(\u_shift.IN_reg[24] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1467_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][24] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24072  (.A(\$abc$23333$new_n1417_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1469_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24073  (.A0(\$abc$23333$new_n1438_ ),
    .A1(\u_shift.IN_reg[23] ),
    .S(\$abc$23333$new_n1469_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][23] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24074  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1298_ ),
    .Y(\$abc$23333$new_n1471_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24075  (.A0(\u_shift.IN_reg[105] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1471_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][105] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24076  (.A(\$abc$23333$new_n1422_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1473_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24077  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[22] ),
    .S(\$abc$23333$new_n1473_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][22] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24078  (.A(\$abc$23333$new_n1425_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1475_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24079  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[21] ),
    .S(\$abc$23333$new_n1475_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][21] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24080  (.A(\$abc$23333$new_n1428_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1477_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24081  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[20] ),
    .S(\$abc$23333$new_n1477_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][20] ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24082  (.A(\$abc$23333$new_n760_ ),
    .B(\$abc$23333$new_n806_ ),
    .C(net12),
    .Y(\$abc$23333$new_n1479_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24083  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[19] ),
    .S(\$abc$23333$new_n1479_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][19] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24084  (.A(\$abc$23333$new_n777_ ),
    .B(\$abc$23333$new_n1384_ ),
    .C(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1481_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24085  (.A0(\u_shift.IN_reg[104] ),
    .A1(\$abc$23333$new_n1409_ ),
    .S(\$abc$23333$new_n1481_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][104] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24086  (.A(\$abc$23333$new_n1435_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1483_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24087  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[18] ),
    .S(\$abc$23333$new_n1483_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][18] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24088  (.A(\$abc$23333$new_n1439_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1485_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24089  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[17] ),
    .S(\$abc$23333$new_n1485_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][17] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24090  (.A(\$abc$23333$new_n1442_ ),
    .B(net12),
    .Y(\$abc$23333$new_n1487_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24091  (.A0(\$abc$23333$new_n755_ ),
    .A1(\u_shift.IN_reg[16] ),
    .S(\$abc$23333$new_n1487_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][16] ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24092  (.A(\$abc$23333$new_n754_ ),
    .X(\$abc$23333$new_n1489_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24093  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1307_ ),
    .Y(\$abc$23333$new_n1490_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24094  (.A0(\u_shift.IN_reg[103] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1490_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][103] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24095  (.A(\$abc$23333$new_n776_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1492_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24096  (.A0(\u_shift.IN_reg[15] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1492_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][15] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24097  (.A(\$abc$23333$new_n787_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1494_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24098  (.A0(\u_shift.IN_reg[14] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1494_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][14] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24099  (.A(\$abc$23333$new_n812_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1496_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24100  (.A0(\u_shift.IN_reg[13] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1496_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][13] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24101  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1310_ ),
    .Y(\$abc$23333$new_n1498_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24102  (.A0(\u_shift.IN_reg[102] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1498_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][102] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24103  (.A(\$abc$23333$new_n800_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1500_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24104  (.A0(\u_shift.IN_reg[12] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1500_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][12] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24105  (.A(\$abc$23333$new_n764_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1502_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24106  (.A0(\u_shift.IN_reg[11] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1502_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][11] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24107  (.A(\$abc$23333$new_n815_ ),
    .B(\$abc$23333$new_n947_ ),
    .Y(\$abc$23333$new_n1504_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24108  (.A0(\u_shift.IN_reg[10] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1504_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][10] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24109  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1316_ ),
    .Y(\$abc$23333$new_n1506_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24110  (.A0(\u_shift.IN_reg[101] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1506_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][101] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24111  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1298_ ),
    .Y(\$abc$23333$new_n1508_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24112  (.A0(\u_shift.IN_reg[9] ),
    .A1(\$abc$23333$new_n1489_ ),
    .S(\$abc$23333$new_n1508_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][9] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24113  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1303_ ),
    .Y(\$abc$23333$new_n1510_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24114  (.A0(\u_shift.IN_reg[8] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1510_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][8] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24115  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1307_ ),
    .Y(\$abc$23333$new_n1512_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24116  (.A0(\u_shift.IN_reg[7] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1512_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][7] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24117  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1319_ ),
    .Y(\$abc$23333$new_n1514_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24118  (.A0(\u_shift.IN_reg[100] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1514_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][100] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24119  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1310_ ),
    .Y(\$abc$23333$new_n1516_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24120  (.A0(\u_shift.IN_reg[6] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1516_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][6] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24121  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1316_ ),
    .Y(\$abc$23333$new_n1518_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24122  (.A0(\u_shift.IN_reg[5] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1518_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][5] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24123  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1319_ ),
    .Y(\$abc$23333$new_n1520_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24124  (.A0(\u_shift.IN_reg[4] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1520_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][4] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24125  (.A(\$abc$23333$new_n841_ ),
    .B(\$abc$23333$new_n1322_ ),
    .Y(\$abc$23333$new_n1522_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24126  (.A0(\u_shift.IN_reg[99] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1522_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][99] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24127  (.A(\$abc$23333$new_n947_ ),
    .B(\$abc$23333$new_n1322_ ),
    .Y(\$abc$23333$new_n1524_ ));
 sky130_fd_sc_hd__mux2_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24128  (.A0(\u_shift.IN_reg[3] ),
    .A1(\$abc$23333$new_n797_ ),
    .S(\$abc$23333$new_n1524_ ),
    .X(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][3] ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24129  (.A(\u_clgen.counter[1] ),
    .B(\u_clgen.counter[2] ),
    .C(\u_clgen.counter[3] ),
    .D(\u_clgen.counter[0] ),
    .Y(\$abc$23333$new_n1526_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24130  (.A(\$abc$23333$new_n740_ ),
    .B(\$abc$23333$new_n1526_ ),
    .Y(\$abc$23333$new_n1527_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24131  (.A1(\$abc$23333$new_n738_ ),
    .A2(\$abc$23333$new_n1527_ ),
    .B1(net18),
    .Y(\$abc$23333$new_n1528_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24134  (.A(\divider[0] ),
    .B(net10),
    .Y(\$abc$23333$new_n1531_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24135  (.A1(\u_clgen.counter[0] ),
    .A2(net10),
    .B1(\$abc$23333$new_n1531_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][0] ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24137  (.A(\u_clgen.counter[1] ),
    .B(\u_clgen.counter[0] ),
    .X(\$abc$23333$new_n1534_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24138  (.A(\divider[1] ),
    .B(net10),
    .Y(\$abc$23333$new_n1535_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24139  (.A1(net10),
    .A2(\$abc$23333$new_n1534_ ),
    .B1(\$abc$23333$new_n1535_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][1] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24140  (.A(\u_clgen.counter[1] ),
    .B(\u_clgen.counter[0] ),
    .Y(\$abc$23333$new_n1537_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24141  (.A(\u_clgen.counter[2] ),
    .B(\$abc$23333$new_n1537_ ),
    .Y(\$abc$23333$new_n1538_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24142  (.A(\divider[2] ),
    .B(net10),
    .Y(\$abc$23333$new_n1539_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24143  (.A1(net10),
    .A2(\$abc$23333$new_n1538_ ),
    .B1(\$abc$23333$new_n1539_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][2] ));
 sky130_fd_sc_hd__nand2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24144  (.A_N(\u_clgen.counter[0] ),
    .B(\$abc$23333$new_n741_ ),
    .Y(\$abc$23333$new_n1541_ ));
 sky130_fd_sc_hd__o31ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24145  (.A1(\u_clgen.counter[1] ),
    .A2(\u_clgen.counter[2] ),
    .A3(\u_clgen.counter[0] ),
    .B1(\u_clgen.counter[3] ),
    .Y(\$abc$23333$new_n1542_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24146  (.A1(\$abc$23333$new_n1541_ ),
    .A2(\$abc$23333$new_n1542_ ),
    .B1(net10),
    .Y(\$abc$23333$new_n1543_ ));
 sky130_fd_sc_hd__a21o_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24147  (.A1(\divider[3] ),
    .A2(net10),
    .B1(\$abc$23333$new_n1543_ ),
    .X(\$abc$23333$techmap\u_clgen.$0\counter[15:0][3] ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24148  (.A(\u_clgen.counter[4] ),
    .B(\$abc$23333$new_n1526_ ),
    .Y(\$abc$23333$new_n1545_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24149  (.A(\divider[4] ),
    .B(net10),
    .Y(\$abc$23333$new_n1546_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24150  (.A1(net10),
    .A2(\$abc$23333$new_n1545_ ),
    .B1(\$abc$23333$new_n1546_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][4] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24151  (.A(\u_clgen.counter[4] ),
    .B(\u_clgen.counter[5] ),
    .C(\$abc$23333$new_n1541_ ),
    .Y(\$abc$23333$new_n1548_ ));
 sky130_fd_sc_hd__o21a_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24152  (.A1(\u_clgen.counter[4] ),
    .A2(\$abc$23333$new_n1541_ ),
    .B1(\u_clgen.counter[5] ),
    .X(\$abc$23333$new_n1549_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24153  (.A(\$abc$23333$new_n1548_ ),
    .B(\$abc$23333$new_n1549_ ),
    .Y(\$abc$23333$new_n1550_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24154  (.A(\divider[5] ),
    .B(net10),
    .Y(\$abc$23333$new_n1551_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24155  (.A1(net10),
    .A2(\$abc$23333$new_n1550_ ),
    .B1(\$abc$23333$new_n1551_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][5] ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24156  (.A(\u_clgen.counter[6] ),
    .B(\$abc$23333$new_n1548_ ),
    .Y(\$abc$23333$new_n1553_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24157  (.A(\divider[6] ),
    .B(net10),
    .Y(\$abc$23333$new_n1554_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24158  (.A1(net10),
    .A2(\$abc$23333$new_n1553_ ),
    .B1(\$abc$23333$new_n1554_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][6] ));
 sky130_fd_sc_hd__o41ai_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24159  (.A1(\u_clgen.counter[4] ),
    .A2(\u_clgen.counter[5] ),
    .A3(\u_clgen.counter[6] ),
    .A4(\$abc$23333$new_n1541_ ),
    .B1(\u_clgen.counter[7] ),
    .Y(\$abc$23333$new_n1556_ ));
 sky130_fd_sc_hd__inv_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24160  (.A(\divider[7] ),
    .Y(\$abc$23333$new_n1557_ ));
 sky130_fd_sc_hd__a32oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24161  (.A1(net18),
    .A2(\$abc$23333$new_n1527_ ),
    .A3(\$abc$23333$new_n1556_ ),
    .B1(net10),
    .B2(\$abc$23333$new_n1557_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][7] ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24162  (.A(\u_clgen.counter[8] ),
    .B(\$abc$23333$new_n1527_ ),
    .X(\$abc$23333$new_n1559_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24163  (.A(\divider[8] ),
    .B(net10),
    .Y(\$abc$23333$new_n1560_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24164  (.A1(net10),
    .A2(\$abc$23333$new_n1559_ ),
    .B1(\$abc$23333$new_n1560_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][8] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24165  (.A(\u_clgen.counter[8] ),
    .B(\u_clgen.counter[9] ),
    .Y(\$abc$23333$new_n1562_ ));
 sky130_fd_sc_hd__nand3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24166  (.A(\$abc$23333$new_n1562_ ),
    .B(\$abc$23333$new_n740_ ),
    .C(\$abc$23333$new_n1526_ ),
    .Y(\$abc$23333$new_n1563_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24167  (.A1(\u_clgen.counter[8] ),
    .A2(\$abc$23333$new_n1527_ ),
    .B1(\u_clgen.counter[9] ),
    .Y(\$abc$23333$new_n1564_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24168  (.A1(\$abc$23333$new_n1563_ ),
    .A2(\$abc$23333$new_n1564_ ),
    .B1(net10),
    .Y(\$abc$23333$new_n1565_ ));
 sky130_fd_sc_hd__a21o_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24169  (.A1(\divider[9] ),
    .A2(net10),
    .B1(\$abc$23333$new_n1565_ ),
    .X(\$abc$23333$techmap\u_clgen.$0\counter[15:0][9] ));
 sky130_fd_sc_hd__xor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24170  (.A(\u_clgen.counter[10] ),
    .B(\$abc$23333$new_n1563_ ),
    .X(\$abc$23333$new_n1567_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24171  (.A(\divider[10] ),
    .B(net10),
    .Y(\$abc$23333$new_n1568_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24172  (.A1(net10),
    .A2(\$abc$23333$new_n1567_ ),
    .B1(\$abc$23333$new_n1568_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][10] ));
 sky130_fd_sc_hd__nor3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24173  (.A(\u_clgen.counter[10] ),
    .B(\u_clgen.counter[11] ),
    .C(\$abc$23333$new_n1563_ ),
    .Y(\$abc$23333$new_n1570_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24174  (.A1(\u_clgen.counter[10] ),
    .A2(\$abc$23333$new_n1563_ ),
    .B1(\u_clgen.counter[11] ),
    .Y(\$abc$23333$new_n1571_ ));
 sky130_fd_sc_hd__nor2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24175  (.A(\$abc$23333$new_n1570_ ),
    .B_N(\$abc$23333$new_n1571_ ),
    .Y(\$abc$23333$new_n1572_ ));
 sky130_fd_sc_hd__nor2b_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24176  (.A(\divider[11] ),
    .B_N(net10),
    .Y(\$abc$23333$new_n1573_ ));
 sky130_fd_sc_hd__a21oi_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24177  (.A1(net18),
    .A2(\$abc$23333$new_n1572_ ),
    .B1(\$abc$23333$new_n1573_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][11] ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24178  (.A(\u_clgen.counter[12] ),
    .B(\$abc$23333$new_n1570_ ),
    .Y(\$abc$23333$new_n1575_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24179  (.A(\divider[12] ),
    .B(net10),
    .Y(\$abc$23333$new_n1576_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24180  (.A1(net10),
    .A2(\$abc$23333$new_n1575_ ),
    .B1(\$abc$23333$new_n1576_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][12] ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24181  (.A(\$abc$23333$new_n736_ ),
    .B(\$abc$23333$new_n1563_ ),
    .Y(\$abc$23333$new_n1578_ ));
 sky130_fd_sc_hd__xnor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24182  (.A(\u_clgen.counter[13] ),
    .B(\$abc$23333$new_n1578_ ),
    .Y(\$abc$23333$new_n1579_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24183  (.A(\divider[13] ),
    .B(net10),
    .Y(\$abc$23333$new_n1580_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24184  (.A1(net10),
    .A2(\$abc$23333$new_n1579_ ),
    .B1(\$abc$23333$new_n1580_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][13] ));
 sky130_fd_sc_hd__nor4_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24185  (.A(\u_clgen.counter[13] ),
    .B(\u_clgen.counter[14] ),
    .C(\$abc$23333$new_n736_ ),
    .D(\$abc$23333$new_n1563_ ),
    .Y(\$abc$23333$new_n1582_ ));
 sky130_fd_sc_hd__o31a_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24186  (.A1(\u_clgen.counter[13] ),
    .A2(\$abc$23333$new_n736_ ),
    .A3(\$abc$23333$new_n1563_ ),
    .B1(\u_clgen.counter[14] ),
    .X(\$abc$23333$new_n1583_ ));
 sky130_fd_sc_hd__nor2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24187  (.A(\$abc$23333$new_n1582_ ),
    .B(\$abc$23333$new_n1583_ ),
    .Y(\$abc$23333$new_n1584_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24188  (.A(\divider[14] ),
    .B(net10),
    .Y(\$abc$23333$new_n1585_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24189  (.A1(net10),
    .A2(\$abc$23333$new_n1584_ ),
    .B1(\$abc$23333$new_n1585_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][14] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24190  (.A(\u_clgen.counter[15] ),
    .B(net18),
    .Y(\$abc$23333$new_n1587_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24191  (.A(\divider[15] ),
    .B(net10),
    .Y(\$abc$23333$new_n1588_ ));
 sky130_fd_sc_hd__o21ai_0 \$abc$23333$auto$blifparse.cc:371:parse_blif$24192  (.A1(\$abc$23333$new_n1582_ ),
    .A2(\$abc$23333$new_n1587_ ),
    .B1(\$abc$23333$new_n1588_ ),
    .Y(\$abc$23333$techmap\u_clgen.$0\counter[15:0][15] ));
 sky130_fd_sc_hd__or3_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24193  (.A(\$abc$23333$new_n735_ ),
    .B(\$abc$23333$new_n738_ ),
    .C(\$abc$23333$new_n1527_ ),
    .X(\$abc$23333$new_n1590_ ));
 sky130_fd_sc_hd__nor3_2 \$abc$23333$auto$blifparse.cc:371:parse_blif$24194  (.A(\u_clgen.clk_out ),
    .B(\$abc$23333$new_n1084_ ),
    .C(\$abc$23333$new_n1590_ ),
    .Y(\$abc$23333$new_n1591_ ));
 sky130_fd_sc_hd__a21o_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24195  (.A1(\u_clgen.clk_out ),
    .A2(\$abc$23333$new_n1590_ ),
    .B1(\$abc$23333$new_n1591_ ),
    .X(\$abc$23333$techmap\u_clgen.$0\clk_out[0:0] ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24196  (.A(\$abc$23333$new_n735_ ),
    .B(\ctrl[15] ),
    .Y(\$abc$23333$new_n1593_ ));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24198  (.A(\ss[0] ),
    .B(net11),
    .Y(ss_pad_o[0]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24199  (.A(\ss[1] ),
    .B(net11),
    .Y(ss_pad_o[1]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24200  (.A(\ss[2] ),
    .B(net11),
    .Y(ss_pad_o[2]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24201  (.A(\ss[3] ),
    .B(net11),
    .Y(ss_pad_o[3]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24202  (.A(\ss[4] ),
    .B(net11),
    .Y(ss_pad_o[4]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24203  (.A(\ss[5] ),
    .B(net11),
    .Y(ss_pad_o[5]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24204  (.A(\ss[6] ),
    .B(net11),
    .Y(ss_pad_o[6]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24205  (.A(\ss[7] ),
    .B(net11),
    .Y(ss_pad_o[7]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24206  (.A(\ss[8] ),
    .B(net11),
    .Y(ss_pad_o[8]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24207  (.A(\ss[9] ),
    .B(net11),
    .Y(ss_pad_o[9]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24209  (.A(\ss[10] ),
    .B(net11),
    .Y(ss_pad_o[10]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24210  (.A(\ss[11] ),
    .B(net11),
    .Y(ss_pad_o[11]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24211  (.A(\ss[12] ),
    .B(net11),
    .Y(ss_pad_o[12]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24212  (.A(\ss[13] ),
    .B(net11),
    .Y(ss_pad_o[13]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24213  (.A(\ss[14] ),
    .B(net11),
    .Y(ss_pad_o[14]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24214  (.A(\ss[15] ),
    .B(net11),
    .Y(ss_pad_o[15]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24215  (.A(\ss[16] ),
    .B(net11),
    .Y(ss_pad_o[16]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24216  (.A(\ss[17] ),
    .B(net11),
    .Y(ss_pad_o[17]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24217  (.A(\ss[18] ),
    .B(net11),
    .Y(ss_pad_o[18]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24218  (.A(\ss[19] ),
    .B(net11),
    .Y(ss_pad_o[19]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24220  (.A(\ss[20] ),
    .B(net11),
    .Y(ss_pad_o[20]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24221  (.A(\ss[21] ),
    .B(net11),
    .Y(ss_pad_o[21]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24222  (.A(\ss[22] ),
    .B(net11),
    .Y(ss_pad_o[22]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24223  (.A(\ss[23] ),
    .B(net11),
    .Y(ss_pad_o[23]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24224  (.A(\ss[24] ),
    .B(net11),
    .Y(ss_pad_o[24]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24225  (.A(\ss[25] ),
    .B(net11),
    .Y(ss_pad_o[25]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24226  (.A(\ss[26] ),
    .B(net11),
    .Y(ss_pad_o[26]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24227  (.A(\ss[27] ),
    .B(net11),
    .Y(ss_pad_o[27]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24228  (.A(\ss[28] ),
    .B(net11),
    .Y(ss_pad_o[28]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24229  (.A(\ss[29] ),
    .B(net11),
    .Y(ss_pad_o[29]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24230  (.A(\ss[30] ),
    .B(net11),
    .Y(ss_pad_o[30]));
 sky130_fd_sc_hd__nand2_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24231  (.A(\ss[31] ),
    .B(net11),
    .Y(ss_pad_o[31]));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24232  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23006 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24233  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23008 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24234  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23010 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24235  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23012 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24236  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23014 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24237  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23016 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24238  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23018 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24239  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23020 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24240  (.A(\$abc$23333$new_n732_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23022 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24241  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n1638_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24242  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23024 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24243  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23026 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24244  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23028 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24245  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23030 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24246  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23032 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24247  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23034 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24248  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23036 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24249  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23038 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24250  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23040 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24251  (.A(\$abc$23333$new_n1638_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23042 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24252  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n1649_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24253  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23044 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24254  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23046 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24255  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23048 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24256  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23050 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24257  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23052 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24258  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23054 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24259  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23056 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24260  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23058 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24261  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23060 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24262  (.A(\$abc$23333$new_n1649_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23062 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24263  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n1660_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24264  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23064 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24265  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23066 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24266  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23068 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24267  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23070 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24268  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23072 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24269  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23074 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24270  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23076 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24271  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23078 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24272  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23080 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24273  (.A(\$abc$23333$new_n1660_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23082 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24274  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n1671_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24275  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23084 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24276  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23086 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24277  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23088 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24278  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23090 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24279  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23092 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24280  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23094 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24281  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23096 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24282  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23098 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24283  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23100 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24284  (.A(\$abc$23333$new_n1671_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23102 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24285  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$new_n1682_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24286  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23104 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24287  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23106 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24288  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23108 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24289  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23110 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24290  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23112 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24291  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23114 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24292  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23116 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24293  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23118 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24294  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23120 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24295  (.A(\$abc$23333$new_n1682_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23122 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24296  (.A(PRESETn),
    .X(\$abc$23333$new_n1693_ ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24297  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1694_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24298  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23124 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24299  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23126 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24300  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23128 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24301  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23130 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24302  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23132 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24303  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23134 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24304  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23136 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24305  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23138 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24306  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23140 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24307  (.A(\$abc$23333$new_n1694_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23142 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24308  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1705_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24309  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23144 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24310  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23146 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24311  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23148 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24312  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23150 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24313  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23152 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24314  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23154 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24315  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23156 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24316  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23158 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24317  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23160 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24318  (.A(\$abc$23333$new_n1705_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23162 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24319  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1716_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24320  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23164 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24321  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23166 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24322  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23168 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24323  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23170 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24324  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23172 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24325  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23174 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24326  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23176 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24327  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23178 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24328  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23180 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24329  (.A(\$abc$23333$new_n1716_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23182 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24330  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1727_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24331  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23184 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24332  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23186 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24333  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23188 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24334  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23190 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24335  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23192 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24336  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23194 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24337  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23196 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24338  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23198 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24339  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23200 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24340  (.A(\$abc$23333$new_n1727_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23202 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24341  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1738_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24342  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23204 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24343  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23206 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24344  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23208 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24345  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23210 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24346  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23212 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24347  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23214 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24348  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23216 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24349  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23218 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24350  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23220 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24351  (.A(\$abc$23333$new_n1738_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23222 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24352  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1749_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24353  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23224 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24354  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23226 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24355  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23228 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24356  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23230 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24357  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23232 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24358  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23234 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24359  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23236 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24360  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23238 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24361  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23240 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24362  (.A(\$abc$23333$new_n1749_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23242 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24363  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1760_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24364  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23244 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24365  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23246 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24366  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23248 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24367  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23250 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24368  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23252 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24369  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23254 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24370  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23256 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24371  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23258 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24372  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23260 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24373  (.A(\$abc$23333$new_n1760_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23262 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24374  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1771_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24375  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23264 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24376  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23266 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24377  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23268 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24378  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23270 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24379  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23272 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24380  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23274 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24381  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23276 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24382  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23278 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24383  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23280 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24384  (.A(\$abc$23333$new_n1771_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23282 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24385  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1782_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24386  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23284 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24387  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23286 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24388  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23288 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24389  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23290 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24390  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23292 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24391  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23294 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24392  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23296 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24393  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23298 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24394  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23300 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24395  (.A(\$abc$23333$new_n1782_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23302 ));
 sky130_fd_sc_hd__lpflow_clkbufkapwr_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24396  (.A(\$abc$23333$new_n1693_ ),
    .X(\$abc$23333$new_n1793_ ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24397  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23304 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24398  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23306 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24399  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23308 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24400  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23310 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24401  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23312 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24402  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23314 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24403  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23316 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24404  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23318 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24405  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23320 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24406  (.A(\$abc$23333$new_n1793_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23322 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24407  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23324 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24408  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23326 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24409  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23328 ));
 sky130_fd_sc_hd__clkbuf_1 \$abc$23333$auto$blifparse.cc:371:parse_blif$24410  (.A(\$abc$23333$new_n731_ ),
    .X(\$abc$23333$auto$rtlil.cc:1969:NotGate$23330 ));
 sky130_fd_sc_hd__conb_1 \$auto$hilomap.cc:40:hilomap_worker$24722  (.HI(PREADY));
 sky130_fd_sc_hd__conb_1 \$auto$hilomap.cc:48:hilomap_worker$24724  (.LO(PSLVERR));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11431  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][0] ),
    .Q(\u_shift.counter[0] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23006 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11432  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][1] ),
    .Q(\u_shift.counter[1] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23008 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11433  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][2] ),
    .Q(\u_shift.counter[2] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23010 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11434  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][3] ),
    .Q(\u_shift.counter[3] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23012 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11435  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][4] ),
    .Q(\u_shift.counter[4] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23014 ),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11436  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][5] ),
    .Q(\u_shift.counter[5] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23016 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11437  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][6] ),
    .Q(\u_shift.counter[6] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23018 ),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11438  (.D(\$abc$23333$techmap\u_shift.$0\counter[7:0][7] ),
    .Q(\u_shift.counter[7] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23020 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11439  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][0] ),
    .Q(\u_shift.rx_bit_pos[0] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23022 ),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11440  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][1] ),
    .Q(\u_shift.rx_bit_pos[1] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23024 ),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11441  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][2] ),
    .Q(\u_shift.rx_bit_pos[2] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23026 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11442  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][3] ),
    .Q(\u_shift.rx_bit_pos[3] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23028 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11443  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][4] ),
    .Q(\u_shift.rx_bit_pos[4] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23030 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11444  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][5] ),
    .Q(\u_shift.rx_bit_pos[5] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23032 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11445  (.D(\$abc$23333$techmap\u_shift.$0\rx_bit_pos[6:0][6] ),
    .Q(\u_shift.rx_bit_pos[6] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23034 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11453  (.D(\$abc$23333$techmap\u_shift.$0\t_progress[0:0] ),
    .Q(\u_shift.t_progress ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23036 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11454  (.D(\$abc$23333$techmap\u_shift.$0\serial_out[0:0] ),
    .Q(\u_shift.serial_out ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23038 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11455  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][0] ),
    .Q(\u_shift.IN_reg[0] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23040 ),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11456  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][1] ),
    .Q(\u_shift.IN_reg[1] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23042 ),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11457  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][2] ),
    .Q(\u_shift.IN_reg[2] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23044 ),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11458  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][3] ),
    .Q(\u_shift.IN_reg[3] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23046 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11459  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][4] ),
    .Q(\u_shift.IN_reg[4] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23048 ),
    .CLK(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11460  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][5] ),
    .Q(\u_shift.IN_reg[5] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23050 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11461  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][6] ),
    .Q(\u_shift.IN_reg[6] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23052 ),
    .CLK(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11462  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][7] ),
    .Q(\u_shift.IN_reg[7] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23054 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11463  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][8] ),
    .Q(\u_shift.IN_reg[8] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23056 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11464  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][9] ),
    .Q(\u_shift.IN_reg[9] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23058 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11465  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][10] ),
    .Q(\u_shift.IN_reg[10] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23060 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11466  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][11] ),
    .Q(\u_shift.IN_reg[11] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23062 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11467  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][12] ),
    .Q(\u_shift.IN_reg[12] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23064 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11468  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][13] ),
    .Q(\u_shift.IN_reg[13] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23066 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11469  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][14] ),
    .Q(\u_shift.IN_reg[14] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23068 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11470  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][15] ),
    .Q(\u_shift.IN_reg[15] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23070 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11471  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][16] ),
    .Q(\u_shift.IN_reg[16] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23072 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11472  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][17] ),
    .Q(\u_shift.IN_reg[17] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23074 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11473  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][18] ),
    .Q(\u_shift.IN_reg[18] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23076 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11474  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][19] ),
    .Q(\u_shift.IN_reg[19] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23078 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11475  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][20] ),
    .Q(\u_shift.IN_reg[20] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23080 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11476  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][21] ),
    .Q(\u_shift.IN_reg[21] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23082 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11477  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][22] ),
    .Q(\u_shift.IN_reg[22] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23084 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11478  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][23] ),
    .Q(\u_shift.IN_reg[23] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23086 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11479  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][24] ),
    .Q(\u_shift.IN_reg[24] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23088 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11480  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][25] ),
    .Q(\u_shift.IN_reg[25] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23090 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11481  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][26] ),
    .Q(\u_shift.IN_reg[26] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23092 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11482  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][27] ),
    .Q(\u_shift.IN_reg[27] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23094 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11483  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][28] ),
    .Q(\u_shift.IN_reg[28] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23096 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11484  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][29] ),
    .Q(\u_shift.IN_reg[29] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23098 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11485  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][30] ),
    .Q(\u_shift.IN_reg[30] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23100 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11486  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][31] ),
    .Q(\u_shift.IN_reg[31] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23102 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11487  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][32] ),
    .Q(\u_shift.IN_reg[32] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23104 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11488  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][33] ),
    .Q(\u_shift.IN_reg[33] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23106 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11489  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][34] ),
    .Q(\u_shift.IN_reg[34] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23108 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11490  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][35] ),
    .Q(\u_shift.IN_reg[35] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23110 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11491  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][36] ),
    .Q(\u_shift.IN_reg[36] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23112 ),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11492  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][37] ),
    .Q(\u_shift.IN_reg[37] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23114 ),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11493  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][38] ),
    .Q(\u_shift.IN_reg[38] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23116 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11494  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][39] ),
    .Q(\u_shift.IN_reg[39] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23118 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11495  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][40] ),
    .Q(\u_shift.IN_reg[40] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23120 ),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11496  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][41] ),
    .Q(\u_shift.IN_reg[41] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23122 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11497  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][42] ),
    .Q(\u_shift.IN_reg[42] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23124 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11498  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][43] ),
    .Q(\u_shift.IN_reg[43] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23126 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11499  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][44] ),
    .Q(\u_shift.IN_reg[44] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23128 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11500  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][45] ),
    .Q(\u_shift.IN_reg[45] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23130 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11501  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][46] ),
    .Q(\u_shift.IN_reg[46] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23132 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11502  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][47] ),
    .Q(\u_shift.IN_reg[47] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23134 ),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11503  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][48] ),
    .Q(\u_shift.IN_reg[48] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23136 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11504  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][49] ),
    .Q(\u_shift.IN_reg[49] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23138 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11505  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][50] ),
    .Q(\u_shift.IN_reg[50] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23140 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11506  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][51] ),
    .Q(\u_shift.IN_reg[51] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23142 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11507  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][52] ),
    .Q(\u_shift.IN_reg[52] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23144 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11508  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][53] ),
    .Q(\u_shift.IN_reg[53] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23146 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11509  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][54] ),
    .Q(\u_shift.IN_reg[54] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23148 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11510  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][55] ),
    .Q(\u_shift.IN_reg[55] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23150 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11511  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][56] ),
    .Q(\u_shift.IN_reg[56] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23152 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11512  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][57] ),
    .Q(\u_shift.IN_reg[57] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23154 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11513  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][58] ),
    .Q(\u_shift.IN_reg[58] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23156 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11514  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][59] ),
    .Q(\u_shift.IN_reg[59] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23158 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11515  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][60] ),
    .Q(\u_shift.IN_reg[60] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23160 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11516  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][61] ),
    .Q(\u_shift.IN_reg[61] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23162 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11517  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][62] ),
    .Q(\u_shift.IN_reg[62] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23164 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11518  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][63] ),
    .Q(\u_shift.IN_reg[63] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23166 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11519  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][64] ),
    .Q(\u_shift.IN_reg[64] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23168 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11520  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][65] ),
    .Q(\u_shift.IN_reg[65] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23170 ),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11521  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][66] ),
    .Q(\u_shift.IN_reg[66] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23172 ),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11522  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][67] ),
    .Q(\u_shift.IN_reg[67] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23174 ),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11523  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][68] ),
    .Q(\u_shift.IN_reg[68] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23176 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11524  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][69] ),
    .Q(\u_shift.IN_reg[69] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23178 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11525  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][70] ),
    .Q(\u_shift.IN_reg[70] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23180 ),
    .CLK(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11526  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][71] ),
    .Q(\u_shift.IN_reg[71] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23182 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11527  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][72] ),
    .Q(\u_shift.IN_reg[72] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23184 ),
    .CLK(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11528  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][73] ),
    .Q(\u_shift.IN_reg[73] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23186 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11529  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][74] ),
    .Q(\u_shift.IN_reg[74] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23188 ),
    .CLK(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11530  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][75] ),
    .Q(\u_shift.IN_reg[75] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23190 ),
    .CLK(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11531  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][76] ),
    .Q(\u_shift.IN_reg[76] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23192 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11532  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][77] ),
    .Q(\u_shift.IN_reg[77] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23194 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11533  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][78] ),
    .Q(\u_shift.IN_reg[78] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23196 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11534  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][79] ),
    .Q(\u_shift.IN_reg[79] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23198 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11535  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][80] ),
    .Q(\u_shift.IN_reg[80] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23200 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11536  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][81] ),
    .Q(\u_shift.IN_reg[81] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23202 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11537  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][82] ),
    .Q(\u_shift.IN_reg[82] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23204 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11538  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][83] ),
    .Q(\u_shift.IN_reg[83] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23206 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11539  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][84] ),
    .Q(\u_shift.IN_reg[84] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23208 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11540  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][85] ),
    .Q(\u_shift.IN_reg[85] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23210 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11541  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][86] ),
    .Q(\u_shift.IN_reg[86] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23212 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11542  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][87] ),
    .Q(\u_shift.IN_reg[87] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23214 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11543  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][88] ),
    .Q(\u_shift.IN_reg[88] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23216 ),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11544  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][89] ),
    .Q(\u_shift.IN_reg[89] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23218 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11545  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][90] ),
    .Q(\u_shift.IN_reg[90] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23220 ),
    .CLK(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11546  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][91] ),
    .Q(\u_shift.IN_reg[91] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23222 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11547  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][92] ),
    .Q(\u_shift.IN_reg[92] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23224 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11548  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][93] ),
    .Q(\u_shift.IN_reg[93] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23226 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11549  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][94] ),
    .Q(\u_shift.IN_reg[94] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23228 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11550  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][95] ),
    .Q(\u_shift.IN_reg[95] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23230 ),
    .CLK(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11551  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][96] ),
    .Q(\u_shift.IN_reg[96] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23232 ),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11552  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][97] ),
    .Q(\u_shift.IN_reg[97] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23234 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11553  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][98] ),
    .Q(\u_shift.IN_reg[98] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23236 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11554  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][99] ),
    .Q(\u_shift.IN_reg[99] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23238 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11555  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][100] ),
    .Q(\u_shift.IN_reg[100] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23240 ),
    .CLK(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11556  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][101] ),
    .Q(\u_shift.IN_reg[101] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23242 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11557  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][102] ),
    .Q(\u_shift.IN_reg[102] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23244 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11558  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][103] ),
    .Q(\u_shift.IN_reg[103] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23246 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11559  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][104] ),
    .Q(\u_shift.IN_reg[104] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23248 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11560  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][105] ),
    .Q(\u_shift.IN_reg[105] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23250 ),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11561  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][106] ),
    .Q(\u_shift.IN_reg[106] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23252 ),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11562  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][107] ),
    .Q(\u_shift.IN_reg[107] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23254 ),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11563  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][108] ),
    .Q(\u_shift.IN_reg[108] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23256 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11564  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][109] ),
    .Q(\u_shift.IN_reg[109] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23258 ),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11565  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][110] ),
    .Q(\u_shift.IN_reg[110] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23260 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11566  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][111] ),
    .Q(\u_shift.IN_reg[111] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23262 ),
    .CLK(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11567  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][112] ),
    .Q(\u_shift.IN_reg[112] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23264 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11568  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][113] ),
    .Q(\u_shift.IN_reg[113] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23266 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11569  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][114] ),
    .Q(\u_shift.IN_reg[114] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23268 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11570  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][115] ),
    .Q(\u_shift.IN_reg[115] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23270 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11571  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][116] ),
    .Q(\u_shift.IN_reg[116] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23272 ),
    .CLK(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11572  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][117] ),
    .Q(\u_shift.IN_reg[117] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23274 ),
    .CLK(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11573  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][118] ),
    .Q(\u_shift.IN_reg[118] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23276 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11574  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][119] ),
    .Q(\u_shift.IN_reg[119] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23278 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11575  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][120] ),
    .Q(\u_shift.IN_reg[120] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23280 ),
    .CLK(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11576  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][121] ),
    .Q(\u_shift.IN_reg[121] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23282 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11577  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][122] ),
    .Q(\u_shift.IN_reg[122] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23284 ),
    .CLK(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11578  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][123] ),
    .Q(\u_shift.IN_reg[123] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23286 ),
    .CLK(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11579  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][124] ),
    .Q(\u_shift.IN_reg[124] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23288 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11580  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][125] ),
    .Q(\u_shift.IN_reg[125] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23290 ),
    .CLK(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11581  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][126] ),
    .Q(\u_shift.IN_reg[126] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23292 ),
    .CLK(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$11582  (.D(\$abc$23333$techmap\u_shift.$0\IN_reg[127:0][127] ),
    .Q(\u_shift.IN_reg[127] ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23294 ),
    .CLK(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12181  (.D(\$0\spi_int_o[0:0] ),
    .Q(spi_int_o),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12182  (.D(\$0\ss[31:0][0] ),
    .Q(\ss[0] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12183  (.D(\$0\ss[31:0][1] ),
    .Q(\ss[1] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12184  (.D(\$0\ss[31:0][2] ),
    .Q(\ss[2] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12185  (.D(\$0\ss[31:0][3] ),
    .Q(\ss[3] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12186  (.D(\$0\ss[31:0][4] ),
    .Q(\ss[4] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12187  (.D(\$0\ss[31:0][5] ),
    .Q(\ss[5] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12188  (.D(\$0\ss[31:0][6] ),
    .Q(\ss[6] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12189  (.D(\$0\ss[31:0][7] ),
    .Q(\ss[7] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12190  (.D(\$0\ss[31:0][8] ),
    .Q(\ss[8] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12191  (.D(\$0\ss[31:0][9] ),
    .Q(\ss[9] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12192  (.D(\$0\ss[31:0][10] ),
    .Q(\ss[10] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12193  (.D(\$0\ss[31:0][11] ),
    .Q(\ss[11] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12194  (.D(\$0\ss[31:0][12] ),
    .Q(\ss[12] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12195  (.D(\$0\ss[31:0][13] ),
    .Q(\ss[13] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12196  (.D(\$0\ss[31:0][14] ),
    .Q(\ss[14] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12197  (.D(\$0\ss[31:0][15] ),
    .Q(\ss[15] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12198  (.D(\$0\ss[31:0][16] ),
    .Q(\ss[16] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12199  (.D(\$0\ss[31:0][17] ),
    .Q(\ss[17] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12200  (.D(\$0\ss[31:0][18] ),
    .Q(\ss[18] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12201  (.D(\$0\ss[31:0][19] ),
    .Q(\ss[19] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12202  (.D(\$0\ss[31:0][20] ),
    .Q(\ss[20] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12203  (.D(\$0\ss[31:0][21] ),
    .Q(\ss[21] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12204  (.D(\$0\ss[31:0][22] ),
    .Q(\ss[22] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12205  (.D(\$0\ss[31:0][23] ),
    .Q(\ss[23] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12206  (.D(\$0\ss[31:0][24] ),
    .Q(\ss[24] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12207  (.D(\$0\ss[31:0][25] ),
    .Q(\ss[25] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12208  (.D(\$0\ss[31:0][26] ),
    .Q(\ss[26] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12209  (.D(\$0\ss[31:0][27] ),
    .Q(\ss[27] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12210  (.D(\$0\ss[31:0][28] ),
    .Q(\ss[28] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12211  (.D(\$0\ss[31:0][29] ),
    .Q(\ss[29] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12212  (.D(\$0\ss[31:0][30] ),
    .Q(\ss[30] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12213  (.D(\$0\ss[31:0][31] ),
    .Q(\ss[31] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12214  (.D(\$0\ctrl[15:0][0] ),
    .Q(\ctrl[0] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12215  (.D(\$0\ctrl[15:0][1] ),
    .Q(\ctrl[1] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12216  (.D(\$0\ctrl[15:0][2] ),
    .Q(\ctrl[2] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12217  (.D(\$0\ctrl[15:0][3] ),
    .Q(\ctrl[3] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12218  (.D(\$0\ctrl[15:0][4] ),
    .Q(\ctrl[4] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12219  (.D(\$0\ctrl[15:0][5] ),
    .Q(\ctrl[5] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12220  (.D(\$0\ctrl[15:0][6] ),
    .Q(\ctrl[6] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12221  (.D(\$0\ctrl[15:0][7] ),
    .Q(\ctrl[7] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12222  (.D(\$0\ctrl[15:0][8] ),
    .Q(\ctrl[8] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12223  (.D(\$0\ctrl[15:0][9] ),
    .Q(\ctrl[9] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12224  (.D(\$0\ctrl[15:0][10] ),
    .Q(\ctrl[10] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12225  (.D(\$0\ctrl[15:0][11] ),
    .Q(\ctrl[11] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12226  (.D(\$0\ctrl[15:0][12] ),
    .Q(\ctrl[12] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12227  (.D(\$0\ctrl[15:0][13] ),
    .Q(\ctrl[13] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12228  (.D(\$0\ctrl[15:0][14] ),
    .Q(\ctrl[14] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12229  (.D(\$0\ctrl[15:0][15] ),
    .Q(\ctrl[15] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12230  (.D(\$0\divider[15:0][0] ),
    .Q(\divider[0] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12231  (.D(\$0\divider[15:0][1] ),
    .Q(\divider[1] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12232  (.D(\$0\divider[15:0][2] ),
    .Q(\divider[2] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12233  (.D(\$0\divider[15:0][3] ),
    .Q(\divider[3] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12234  (.D(\$0\divider[15:0][4] ),
    .Q(\divider[4] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12235  (.D(\$0\divider[15:0][5] ),
    .Q(\divider[5] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12236  (.D(\$0\divider[15:0][6] ),
    .Q(\divider[6] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12237  (.D(\$0\divider[15:0][7] ),
    .Q(\divider[7] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12238  (.D(\$0\divider[15:0][8] ),
    .Q(\divider[8] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12239  (.D(\$0\divider[15:0][9] ),
    .Q(\divider[9] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12240  (.D(\$0\divider[15:0][10] ),
    .Q(\divider[10] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12241  (.D(\$0\divider[15:0][11] ),
    .Q(\divider[11] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12242  (.D(\$0\divider[15:0][12] ),
    .Q(\divider[12] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12243  (.D(\$0\divider[15:0][13] ),
    .Q(\divider[13] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12244  (.D(\$0\divider[15:0][14] ),
    .Q(\divider[14] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$12245  (.D(\$0\divider[15:0][15] ),
    .Q(\divider[15] ),
    .RESET_B(PRESETn),
    .CLK(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$15439  (.D(\$abc$23333$techmap\u_clgen.$0\pos_edge[0:0] ),
    .Q(\u_clgen.pos_edge ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23296 ),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$15440  (.D(\$abc$23333$techmap\u_clgen.$0\neg_edge[0:0] ),
    .Q(\u_clgen.neg_edge ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23298 ),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfrtp_1 \$auto$simplemap.cc:496:simplemap_adff$15441  (.D(\$abc$23333$techmap\u_clgen.$0\clk_out[0:0] ),
    .Q(\u_clgen.clk_out ),
    .RESET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23300 ),
    .CLK(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15442  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][0] ),
    .Q(\u_clgen.counter[0] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23302 ),
    .CLK(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__dfstp_1 \$auto$simplemap.cc:496:simplemap_adff$15443  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][1] ),
    .Q(\u_clgen.counter[1] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23304 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15444  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][2] ),
    .Q(\u_clgen.counter[2] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23306 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15445  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][3] ),
    .Q(\u_clgen.counter[3] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23308 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15446  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][4] ),
    .Q(\u_clgen.counter[4] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23310 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15447  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][5] ),
    .Q(\u_clgen.counter[5] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23312 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15448  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][6] ),
    .Q(\u_clgen.counter[6] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23314 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15449  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][7] ),
    .Q(\u_clgen.counter[7] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23316 ),
    .CLK(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15450  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][8] ),
    .Q(\u_clgen.counter[8] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23318 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15451  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][9] ),
    .Q(\u_clgen.counter[9] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23320 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15452  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][10] ),
    .Q(\u_clgen.counter[10] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23322 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15453  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][11] ),
    .Q(\u_clgen.counter[11] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23324 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15454  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][12] ),
    .Q(\u_clgen.counter[12] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23326 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15455  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][13] ),
    .Q(\u_clgen.counter[13] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23328 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15456  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][14] ),
    .Q(\u_clgen.counter[14] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23330 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__dfstp_2 \$auto$simplemap.cc:496:simplemap_adff$15457  (.D(\$abc$23333$techmap\u_clgen.$0\counter[15:0][15] ),
    .Q(\u_clgen.counter[15] ),
    .SET_B(\$abc$23333$auto$rtlil.cc:1969:NotGate$23332 ),
    .CLK(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(PCLK));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(PWDATA[6]));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(PWDATA[6]));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(PWDATA[6]));
 sky130_fd_sc_hd__fill_8 FILL0_0 ();
 sky130_fd_sc_hd__fill_2 FILL0_105 ();
 sky130_fd_sc_hd__fill_1 FILL0_107 ();
 sky130_fd_sc_hd__fill_8 FILL0_111 ();
 sky130_fd_sc_hd__fill_1 FILL0_119 ();
 sky130_fd_sc_hd__fill_4 FILL0_124 ();
 sky130_fd_sc_hd__fill_2 FILL0_128 ();
 sky130_fd_sc_hd__fill_8 FILL0_136 ();
 sky130_fd_sc_hd__fill_4 FILL0_144 ();
 sky130_fd_sc_hd__fill_2 FILL0_148 ();
 sky130_fd_sc_hd__fill_2 FILL0_151 ();
 sky130_fd_sc_hd__fill_1 FILL0_153 ();
 sky130_fd_sc_hd__fill_4 FILL0_160 ();
 sky130_fd_sc_hd__fill_2 FILL0_164 ();
 sky130_fd_sc_hd__fill_4 FILL0_175 ();
 sky130_fd_sc_hd__fill_1 FILL0_179 ();
 sky130_fd_sc_hd__fill_1 FILL0_18 ();
 sky130_fd_sc_hd__fill_8 FILL0_181 ();
 sky130_fd_sc_hd__fill_8 FILL0_189 ();
 sky130_fd_sc_hd__fill_2 FILL0_197 ();
 sky130_fd_sc_hd__fill_1 FILL0_199 ();
 sky130_fd_sc_hd__fill_1 FILL0_209 ();
 sky130_fd_sc_hd__fill_2 FILL0_211 ();
 sky130_fd_sc_hd__fill_4 FILL0_216 ();
 sky130_fd_sc_hd__fill_2 FILL0_226 ();
 sky130_fd_sc_hd__fill_4 FILL0_231 ();
 sky130_fd_sc_hd__fill_2 FILL0_235 ();
 sky130_fd_sc_hd__fill_8 FILL0_241 ();
 sky130_fd_sc_hd__fill_2 FILL0_249 ();
 sky130_fd_sc_hd__fill_4 FILL0_254 ();
 sky130_fd_sc_hd__fill_2 FILL0_258 ();
 sky130_fd_sc_hd__fill_1 FILL0_260 ();
 sky130_fd_sc_hd__fill_4 FILL0_274 ();
 sky130_fd_sc_hd__fill_2 FILL0_278 ();
 sky130_fd_sc_hd__fill_2 FILL0_28 ();
 sky130_fd_sc_hd__fill_8 FILL0_301 ();
 sky130_fd_sc_hd__fill_2 FILL0_309 ();
 sky130_fd_sc_hd__fill_4 FILL0_31 ();
 sky130_fd_sc_hd__fill_2 FILL0_35 ();
 sky130_fd_sc_hd__fill_8 FILL0_49 ();
 sky130_fd_sc_hd__fill_2 FILL0_57 ();
 sky130_fd_sc_hd__fill_1 FILL0_59 ();
 sky130_fd_sc_hd__fill_1 FILL0_61 ();
 sky130_fd_sc_hd__fill_8 FILL0_65 ();
 sky130_fd_sc_hd__fill_1 FILL0_76 ();
 sky130_fd_sc_hd__fill_4 FILL0_8 ();
 sky130_fd_sc_hd__fill_4 FILL0_86 ();
 sky130_fd_sc_hd__fill_4 FILL0_91 ();
 sky130_fd_sc_hd__fill_1 FILL0_95 ();
 sky130_fd_sc_hd__fill_8 FILL10_0 ();
 sky130_fd_sc_hd__fill_1 FILL10_105 ();
 sky130_fd_sc_hd__fill_4 FILL10_109 ();
 sky130_fd_sc_hd__fill_8 FILL10_141 ();
 sky130_fd_sc_hd__fill_1 FILL10_149 ();
 sky130_fd_sc_hd__fill_2 FILL10_151 ();
 sky130_fd_sc_hd__fill_1 FILL10_153 ();
 sky130_fd_sc_hd__fill_2 FILL10_158 ();
 sky130_fd_sc_hd__fill_4 FILL10_16 ();
 sky130_fd_sc_hd__fill_8 FILL10_172 ();
 sky130_fd_sc_hd__fill_8 FILL10_180 ();
 sky130_fd_sc_hd__fill_4 FILL10_188 ();
 sky130_fd_sc_hd__fill_1 FILL10_20 ();
 sky130_fd_sc_hd__fill_4 FILL10_203 ();
 sky130_fd_sc_hd__fill_2 FILL10_207 ();
 sky130_fd_sc_hd__fill_1 FILL10_209 ();
 sky130_fd_sc_hd__fill_8 FILL10_220 ();
 sky130_fd_sc_hd__fill_2 FILL10_228 ();
 sky130_fd_sc_hd__fill_8 FILL10_239 ();
 sky130_fd_sc_hd__fill_2 FILL10_247 ();
 sky130_fd_sc_hd__fill_2 FILL10_252 ();
 sky130_fd_sc_hd__fill_1 FILL10_254 ();
 sky130_fd_sc_hd__fill_4 FILL10_258 ();
 sky130_fd_sc_hd__fill_2 FILL10_262 ();
 sky130_fd_sc_hd__fill_8 FILL10_295 ();
 sky130_fd_sc_hd__fill_8 FILL10_303 ();
 sky130_fd_sc_hd__fill_1 FILL10_31 ();
 sky130_fd_sc_hd__fill_2 FILL10_44 ();
 sky130_fd_sc_hd__fill_1 FILL10_46 ();
 sky130_fd_sc_hd__fill_4 FILL10_50 ();
 sky130_fd_sc_hd__fill_1 FILL10_54 ();
 sky130_fd_sc_hd__fill_4 FILL10_75 ();
 sky130_fd_sc_hd__fill_1 FILL10_79 ();
 sky130_fd_sc_hd__fill_8 FILL10_8 ();
 sky130_fd_sc_hd__fill_4 FILL10_85 ();
 sky130_fd_sc_hd__fill_1 FILL10_89 ();
 sky130_fd_sc_hd__fill_2 FILL10_91 ();
 sky130_fd_sc_hd__fill_1 FILL10_93 ();
 sky130_fd_sc_hd__fill_8 FILL10_97 ();
 sky130_fd_sc_hd__fill_1 FILL11_100 ();
 sky130_fd_sc_hd__fill_4 FILL11_113 ();
 sky130_fd_sc_hd__fill_2 FILL11_134 ();
 sky130_fd_sc_hd__fill_1 FILL11_136 ();
 sky130_fd_sc_hd__fill_4 FILL11_140 ();
 sky130_fd_sc_hd__fill_1 FILL11_144 ();
 sky130_fd_sc_hd__fill_2 FILL11_148 ();
 sky130_fd_sc_hd__fill_1 FILL11_179 ();
 sky130_fd_sc_hd__fill_4 FILL11_181 ();
 sky130_fd_sc_hd__fill_1 FILL11_185 ();
 sky130_fd_sc_hd__fill_8 FILL11_190 ();
 sky130_fd_sc_hd__fill_4 FILL11_198 ();
 sky130_fd_sc_hd__fill_2 FILL11_20 ();
 sky130_fd_sc_hd__fill_2 FILL11_202 ();
 sky130_fd_sc_hd__fill_1 FILL11_204 ();
 sky130_fd_sc_hd__fill_4 FILL11_208 ();
 sky130_fd_sc_hd__fill_2 FILL11_212 ();
 sky130_fd_sc_hd__fill_4 FILL11_217 ();
 sky130_fd_sc_hd__fill_1 FILL11_22 ();
 sky130_fd_sc_hd__fill_2 FILL11_221 ();
 sky130_fd_sc_hd__fill_1 FILL11_223 ();
 sky130_fd_sc_hd__fill_4 FILL11_236 ();
 sky130_fd_sc_hd__fill_4 FILL11_241 ();
 sky130_fd_sc_hd__fill_8 FILL11_249 ();
 sky130_fd_sc_hd__fill_2 FILL11_257 ();
 sky130_fd_sc_hd__fill_8 FILL11_263 ();
 sky130_fd_sc_hd__fill_2 FILL11_271 ();
 sky130_fd_sc_hd__fill_2 FILL11_301 ();
 sky130_fd_sc_hd__fill_4 FILL11_306 ();
 sky130_fd_sc_hd__fill_1 FILL11_310 ();
 sky130_fd_sc_hd__fill_2 FILL11_43 ();
 sky130_fd_sc_hd__fill_2 FILL11_48 ();
 sky130_fd_sc_hd__fill_1 FILL11_50 ();
 sky130_fd_sc_hd__fill_2 FILL11_54 ();
 sky130_fd_sc_hd__fill_1 FILL11_56 ();
 sky130_fd_sc_hd__fill_4 FILL11_61 ();
 sky130_fd_sc_hd__fill_4 FILL11_68 ();
 sky130_fd_sc_hd__fill_2 FILL11_72 ();
 sky130_fd_sc_hd__fill_4 FILL11_96 ();
 sky130_fd_sc_hd__fill_2 FILL12_0 ();
 sky130_fd_sc_hd__fill_8 FILL12_117 ();
 sky130_fd_sc_hd__fill_4 FILL12_125 ();
 sky130_fd_sc_hd__fill_1 FILL12_129 ();
 sky130_fd_sc_hd__fill_4 FILL12_135 ();
 sky130_fd_sc_hd__fill_1 FILL12_139 ();
 sky130_fd_sc_hd__fill_8 FILL12_151 ();
 sky130_fd_sc_hd__fill_8 FILL12_159 ();
 sky130_fd_sc_hd__fill_4 FILL12_170 ();
 sky130_fd_sc_hd__fill_2 FILL12_174 ();
 sky130_fd_sc_hd__fill_1 FILL12_176 ();
 sky130_fd_sc_hd__fill_4 FILL12_180 ();
 sky130_fd_sc_hd__fill_4 FILL12_192 ();
 sky130_fd_sc_hd__fill_2 FILL12_196 ();
 sky130_fd_sc_hd__fill_1 FILL12_198 ();
 sky130_fd_sc_hd__fill_2 FILL12_208 ();
 sky130_fd_sc_hd__fill_2 FILL12_214 ();
 sky130_fd_sc_hd__fill_1 FILL12_216 ();
 sky130_fd_sc_hd__fill_8 FILL12_22 ();
 sky130_fd_sc_hd__fill_2 FILL12_261 ();
 sky130_fd_sc_hd__fill_1 FILL12_269 ();
 sky130_fd_sc_hd__fill_2 FILL12_31 ();
 sky130_fd_sc_hd__fill_8 FILL12_36 ();
 sky130_fd_sc_hd__fill_2 FILL12_44 ();
 sky130_fd_sc_hd__fill_8 FILL12_69 ();
 sky130_fd_sc_hd__fill_8 FILL12_77 ();
 sky130_fd_sc_hd__fill_4 FILL12_85 ();
 sky130_fd_sc_hd__fill_1 FILL12_89 ();
 sky130_fd_sc_hd__fill_2 FILL12_94 ();
 sky130_fd_sc_hd__fill_1 FILL12_96 ();
 sky130_fd_sc_hd__fill_4 FILL13_0 ();
 sky130_fd_sc_hd__fill_1 FILL13_107 ();
 sky130_fd_sc_hd__fill_2 FILL13_117 ();
 sky130_fd_sc_hd__fill_1 FILL13_119 ();
 sky130_fd_sc_hd__fill_4 FILL13_121 ();
 sky130_fd_sc_hd__fill_8 FILL13_129 ();
 sky130_fd_sc_hd__fill_2 FILL13_13 ();
 sky130_fd_sc_hd__fill_2 FILL13_137 ();
 sky130_fd_sc_hd__fill_1 FILL13_139 ();
 sky130_fd_sc_hd__fill_2 FILL13_143 ();
 sky130_fd_sc_hd__fill_1 FILL13_145 ();
 sky130_fd_sc_hd__fill_8 FILL13_149 ();
 sky130_fd_sc_hd__fill_1 FILL13_15 ();
 sky130_fd_sc_hd__fill_4 FILL13_157 ();
 sky130_fd_sc_hd__fill_2 FILL13_161 ();
 sky130_fd_sc_hd__fill_1 FILL13_163 ();
 sky130_fd_sc_hd__fill_4 FILL13_173 ();
 sky130_fd_sc_hd__fill_2 FILL13_177 ();
 sky130_fd_sc_hd__fill_1 FILL13_179 ();
 sky130_fd_sc_hd__fill_1 FILL13_184 ();
 sky130_fd_sc_hd__fill_4 FILL13_192 ();
 sky130_fd_sc_hd__fill_8 FILL13_208 ();
 sky130_fd_sc_hd__fill_2 FILL13_228 ();
 sky130_fd_sc_hd__fill_4 FILL13_233 ();
 sky130_fd_sc_hd__fill_2 FILL13_237 ();
 sky130_fd_sc_hd__fill_1 FILL13_239 ();
 sky130_fd_sc_hd__fill_8 FILL13_241 ();
 sky130_fd_sc_hd__fill_2 FILL13_249 ();
 sky130_fd_sc_hd__fill_8 FILL13_25 ();
 sky130_fd_sc_hd__fill_4 FILL13_271 ();
 sky130_fd_sc_hd__fill_2 FILL13_275 ();
 sky130_fd_sc_hd__fill_2 FILL13_280 ();
 sky130_fd_sc_hd__fill_1 FILL13_282 ();
 sky130_fd_sc_hd__fill_2 FILL13_291 ();
 sky130_fd_sc_hd__fill_1 FILL13_293 ();
 sky130_fd_sc_hd__fill_2 FILL13_297 ();
 sky130_fd_sc_hd__fill_1 FILL13_299 ();
 sky130_fd_sc_hd__fill_8 FILL13_301 ();
 sky130_fd_sc_hd__fill_2 FILL13_309 ();
 sky130_fd_sc_hd__fill_4 FILL13_33 ();
 sky130_fd_sc_hd__fill_2 FILL13_37 ();
 sky130_fd_sc_hd__fill_8 FILL13_61 ();
 sky130_fd_sc_hd__fill_4 FILL13_69 ();
 sky130_fd_sc_hd__fill_2 FILL13_76 ();
 sky130_fd_sc_hd__fill_1 FILL13_78 ();
 sky130_fd_sc_hd__fill_8 FILL13_99 ();
 sky130_fd_sc_hd__fill_1 FILL14_0 ();
 sky130_fd_sc_hd__fill_1 FILL14_100 ();
 sky130_fd_sc_hd__fill_2 FILL14_121 ();
 sky130_fd_sc_hd__fill_1 FILL14_123 ();
 sky130_fd_sc_hd__fill_4 FILL14_128 ();
 sky130_fd_sc_hd__fill_2 FILL14_132 ();
 sky130_fd_sc_hd__fill_1 FILL14_134 ();
 sky130_fd_sc_hd__fill_2 FILL14_140 ();
 sky130_fd_sc_hd__fill_1 FILL14_142 ();
 sky130_fd_sc_hd__fill_1 FILL14_149 ();
 sky130_fd_sc_hd__fill_8 FILL14_151 ();
 sky130_fd_sc_hd__fill_1 FILL14_159 ();
 sky130_fd_sc_hd__fill_1 FILL14_183 ();
 sky130_fd_sc_hd__fill_2 FILL14_188 ();
 sky130_fd_sc_hd__fill_1 FILL14_231 ();
 sky130_fd_sc_hd__fill_2 FILL14_252 ();
 sky130_fd_sc_hd__fill_1 FILL14_254 ();
 sky130_fd_sc_hd__fill_8 FILL14_258 ();
 sky130_fd_sc_hd__fill_4 FILL14_266 ();
 sky130_fd_sc_hd__fill_8 FILL14_271 ();
 sky130_fd_sc_hd__fill_8 FILL14_291 ();
 sky130_fd_sc_hd__fill_4 FILL14_305 ();
 sky130_fd_sc_hd__fill_2 FILL14_309 ();
 sky130_fd_sc_hd__fill_8 FILL14_51 ();
 sky130_fd_sc_hd__fill_2 FILL14_59 ();
 sky130_fd_sc_hd__fill_1 FILL14_61 ();
 sky130_fd_sc_hd__fill_8 FILL14_82 ();
 sky130_fd_sc_hd__fill_4 FILL14_94 ();
 sky130_fd_sc_hd__fill_2 FILL14_98 ();
 sky130_fd_sc_hd__fill_2 FILL15_0 ();
 sky130_fd_sc_hd__fill_4 FILL15_103 ();
 sky130_fd_sc_hd__fill_1 FILL15_107 ();
 sky130_fd_sc_hd__fill_4 FILL15_121 ();
 sky130_fd_sc_hd__fill_2 FILL15_125 ();
 sky130_fd_sc_hd__fill_1 FILL15_127 ();
 sky130_fd_sc_hd__fill_4 FILL15_131 ();
 sky130_fd_sc_hd__fill_1 FILL15_135 ();
 sky130_fd_sc_hd__fill_2 FILL15_149 ();
 sky130_fd_sc_hd__fill_1 FILL15_160 ();
 sky130_fd_sc_hd__fill_4 FILL15_174 ();
 sky130_fd_sc_hd__fill_2 FILL15_178 ();
 sky130_fd_sc_hd__fill_4 FILL15_181 ();
 sky130_fd_sc_hd__fill_8 FILL15_191 ();
 sky130_fd_sc_hd__fill_2 FILL15_199 ();
 sky130_fd_sc_hd__fill_1 FILL15_201 ();
 sky130_fd_sc_hd__fill_8 FILL15_205 ();
 sky130_fd_sc_hd__fill_8 FILL15_213 ();
 sky130_fd_sc_hd__fill_8 FILL15_228 ();
 sky130_fd_sc_hd__fill_1 FILL15_236 ();
 sky130_fd_sc_hd__fill_4 FILL15_258 ();
 sky130_fd_sc_hd__fill_4 FILL15_266 ();
 sky130_fd_sc_hd__fill_2 FILL15_270 ();
 sky130_fd_sc_hd__fill_4 FILL15_292 ();
 sky130_fd_sc_hd__fill_1 FILL15_296 ();
 sky130_fd_sc_hd__fill_1 FILL15_301 ();
 sky130_fd_sc_hd__fill_2 FILL15_308 ();
 sky130_fd_sc_hd__fill_1 FILL15_310 ();
 sky130_fd_sc_hd__fill_2 FILL15_48 ();
 sky130_fd_sc_hd__fill_1 FILL15_50 ();
 sky130_fd_sc_hd__fill_1 FILL15_61 ();
 sky130_fd_sc_hd__fill_4 FILL15_65 ();
 sky130_fd_sc_hd__fill_2 FILL15_69 ();
 sky130_fd_sc_hd__fill_4 FILL16_0 ();
 sky130_fd_sc_hd__fill_1 FILL16_103 ();
 sky130_fd_sc_hd__fill_4 FILL16_124 ();
 sky130_fd_sc_hd__fill_2 FILL16_128 ();
 sky130_fd_sc_hd__fill_8 FILL16_13 ();
 sky130_fd_sc_hd__fill_1 FILL16_130 ();
 sky130_fd_sc_hd__fill_4 FILL16_138 ();
 sky130_fd_sc_hd__fill_2 FILL16_142 ();
 sky130_fd_sc_hd__fill_8 FILL16_151 ();
 sky130_fd_sc_hd__fill_8 FILL16_159 ();
 sky130_fd_sc_hd__fill_8 FILL16_167 ();
 sky130_fd_sc_hd__fill_8 FILL16_175 ();
 sky130_fd_sc_hd__fill_2 FILL16_183 ();
 sky130_fd_sc_hd__fill_8 FILL16_189 ();
 sky130_fd_sc_hd__fill_2 FILL16_197 ();
 sky130_fd_sc_hd__fill_1 FILL16_199 ();
 sky130_fd_sc_hd__fill_4 FILL16_206 ();
 sky130_fd_sc_hd__fill_4 FILL16_211 ();
 sky130_fd_sc_hd__fill_1 FILL16_224 ();
 sky130_fd_sc_hd__fill_8 FILL16_236 ();
 sky130_fd_sc_hd__fill_4 FILL16_244 ();
 sky130_fd_sc_hd__fill_8 FILL16_251 ();
 sky130_fd_sc_hd__fill_2 FILL16_259 ();
 sky130_fd_sc_hd__fill_1 FILL16_261 ();
 sky130_fd_sc_hd__fill_1 FILL16_266 ();
 sky130_fd_sc_hd__fill_8 FILL16_274 ();
 sky130_fd_sc_hd__fill_2 FILL16_282 ();
 sky130_fd_sc_hd__fill_1 FILL16_284 ();
 sky130_fd_sc_hd__fill_2 FILL16_296 ();
 sky130_fd_sc_hd__fill_1 FILL16_298 ();
 sky130_fd_sc_hd__fill_4 FILL16_305 ();
 sky130_fd_sc_hd__fill_2 FILL16_309 ();
 sky130_fd_sc_hd__fill_4 FILL16_31 ();
 sky130_fd_sc_hd__fill_1 FILL16_35 ();
 sky130_fd_sc_hd__fill_4 FILL16_45 ();
 sky130_fd_sc_hd__fill_2 FILL16_49 ();
 sky130_fd_sc_hd__fill_1 FILL16_71 ();
 sky130_fd_sc_hd__fill_4 FILL16_84 ();
 sky130_fd_sc_hd__fill_2 FILL16_88 ();
 sky130_fd_sc_hd__fill_2 FILL17_0 ();
 sky130_fd_sc_hd__fill_4 FILL17_108 ();
 sky130_fd_sc_hd__fill_4 FILL17_11 ();
 sky130_fd_sc_hd__fill_2 FILL17_115 ();
 sky130_fd_sc_hd__fill_2 FILL17_121 ();
 sky130_fd_sc_hd__fill_4 FILL17_130 ();
 sky130_fd_sc_hd__fill_1 FILL17_134 ();
 sky130_fd_sc_hd__fill_2 FILL17_142 ();
 sky130_fd_sc_hd__fill_1 FILL17_144 ();
 sky130_fd_sc_hd__fill_2 FILL17_15 ();
 sky130_fd_sc_hd__fill_4 FILL17_150 ();
 sky130_fd_sc_hd__fill_2 FILL17_154 ();
 sky130_fd_sc_hd__fill_1 FILL17_156 ();
 sky130_fd_sc_hd__fill_4 FILL17_163 ();
 sky130_fd_sc_hd__fill_1 FILL17_17 ();
 sky130_fd_sc_hd__fill_1 FILL17_176 ();
 sky130_fd_sc_hd__fill_8 FILL17_181 ();
 sky130_fd_sc_hd__fill_2 FILL17_189 ();
 sky130_fd_sc_hd__fill_1 FILL17_241 ();
 sky130_fd_sc_hd__fill_2 FILL17_245 ();
 sky130_fd_sc_hd__fill_4 FILL17_252 ();
 sky130_fd_sc_hd__fill_2 FILL17_256 ();
 sky130_fd_sc_hd__fill_1 FILL17_258 ();
 sky130_fd_sc_hd__fill_8 FILL17_274 ();
 sky130_fd_sc_hd__fill_4 FILL17_282 ();
 sky130_fd_sc_hd__fill_2 FILL17_295 ();
 sky130_fd_sc_hd__fill_1 FILL17_301 ();
 sky130_fd_sc_hd__fill_4 FILL17_305 ();
 sky130_fd_sc_hd__fill_2 FILL17_309 ();
 sky130_fd_sc_hd__fill_2 FILL17_38 ();
 sky130_fd_sc_hd__fill_2 FILL17_61 ();
 sky130_fd_sc_hd__fill_1 FILL17_63 ();
 sky130_fd_sc_hd__fill_4 FILL17_84 ();
 sky130_fd_sc_hd__fill_2 FILL18_104 ();
 sky130_fd_sc_hd__fill_1 FILL18_106 ();
 sky130_fd_sc_hd__fill_4 FILL18_127 ();
 sky130_fd_sc_hd__fill_1 FILL18_135 ();
 sky130_fd_sc_hd__fill_2 FILL18_148 ();
 sky130_fd_sc_hd__fill_1 FILL18_158 ();
 sky130_fd_sc_hd__fill_1 FILL18_196 ();
 sky130_fd_sc_hd__fill_8 FILL18_20 ();
 sky130_fd_sc_hd__fill_4 FILL18_206 ();
 sky130_fd_sc_hd__fill_8 FILL18_211 ();
 sky130_fd_sc_hd__fill_2 FILL18_219 ();
 sky130_fd_sc_hd__fill_2 FILL18_227 ();
 sky130_fd_sc_hd__fill_1 FILL18_249 ();
 sky130_fd_sc_hd__fill_1 FILL18_271 ();
 sky130_fd_sc_hd__fill_2 FILL18_28 ();
 sky130_fd_sc_hd__fill_4 FILL18_280 ();
 sky130_fd_sc_hd__fill_2 FILL18_284 ();
 sky130_fd_sc_hd__fill_1 FILL18_286 ();
 sky130_fd_sc_hd__fill_8 FILL18_31 ();
 sky130_fd_sc_hd__fill_1 FILL18_310 ();
 sky130_fd_sc_hd__fill_4 FILL18_39 ();
 sky130_fd_sc_hd__fill_2 FILL18_52 ();
 sky130_fd_sc_hd__fill_8 FILL18_57 ();
 sky130_fd_sc_hd__fill_8 FILL18_65 ();
 sky130_fd_sc_hd__fill_2 FILL18_73 ();
 sky130_fd_sc_hd__fill_8 FILL18_78 ();
 sky130_fd_sc_hd__fill_4 FILL18_86 ();
 sky130_fd_sc_hd__fill_1 FILL18_91 ();
 sky130_fd_sc_hd__fill_2 FILL19_0 ();
 sky130_fd_sc_hd__fill_8 FILL19_105 ();
 sky130_fd_sc_hd__fill_2 FILL19_113 ();
 sky130_fd_sc_hd__fill_2 FILL19_118 ();
 sky130_fd_sc_hd__fill_4 FILL19_12 ();
 sky130_fd_sc_hd__fill_8 FILL19_130 ();
 sky130_fd_sc_hd__fill_2 FILL19_138 ();
 sky130_fd_sc_hd__fill_1 FILL19_140 ();
 sky130_fd_sc_hd__fill_8 FILL19_147 ();
 sky130_fd_sc_hd__fill_8 FILL19_155 ();
 sky130_fd_sc_hd__fill_2 FILL19_16 ();
 sky130_fd_sc_hd__fill_8 FILL19_163 ();
 sky130_fd_sc_hd__fill_2 FILL19_171 ();
 sky130_fd_sc_hd__fill_1 FILL19_173 ();
 sky130_fd_sc_hd__fill_2 FILL19_177 ();
 sky130_fd_sc_hd__fill_1 FILL19_179 ();
 sky130_fd_sc_hd__fill_8 FILL19_181 ();
 sky130_fd_sc_hd__fill_8 FILL19_189 ();
 sky130_fd_sc_hd__fill_8 FILL19_197 ();
 sky130_fd_sc_hd__fill_1 FILL19_2 ();
 sky130_fd_sc_hd__fill_8 FILL19_205 ();
 sky130_fd_sc_hd__fill_2 FILL19_213 ();
 sky130_fd_sc_hd__fill_8 FILL19_227 ();
 sky130_fd_sc_hd__fill_2 FILL19_235 ();
 sky130_fd_sc_hd__fill_2 FILL19_241 ();
 sky130_fd_sc_hd__fill_2 FILL19_255 ();
 sky130_fd_sc_hd__fill_2 FILL19_266 ();
 sky130_fd_sc_hd__fill_4 FILL19_295 ();
 sky130_fd_sc_hd__fill_1 FILL19_299 ();
 sky130_fd_sc_hd__fill_1 FILL19_301 ();
 sky130_fd_sc_hd__fill_4 FILL19_305 ();
 sky130_fd_sc_hd__fill_2 FILL19_309 ();
 sky130_fd_sc_hd__fill_4 FILL19_47 ();
 sky130_fd_sc_hd__fill_8 FILL19_64 ();
 sky130_fd_sc_hd__fill_4 FILL19_72 ();
 sky130_fd_sc_hd__fill_1 FILL19_76 ();
 sky130_fd_sc_hd__fill_2 FILL19_89 ();
 sky130_fd_sc_hd__fill_8 FILL19_97 ();
 sky130_fd_sc_hd__fill_2 FILL1_115 ();
 sky130_fd_sc_hd__fill_2 FILL1_144 ();
 sky130_fd_sc_hd__fill_2 FILL1_149 ();
 sky130_fd_sc_hd__fill_1 FILL1_159 ();
 sky130_fd_sc_hd__fill_2 FILL1_184 ();
 sky130_fd_sc_hd__fill_1 FILL1_186 ();
 sky130_fd_sc_hd__fill_1 FILL1_239 ();
 sky130_fd_sc_hd__fill_4 FILL1_281 ();
 sky130_fd_sc_hd__fill_1 FILL1_285 ();
 sky130_fd_sc_hd__fill_2 FILL1_298 ();
 sky130_fd_sc_hd__fill_2 FILL1_309 ();
 sky130_fd_sc_hd__fill_1 FILL1_61 ();
 sky130_fd_sc_hd__fill_2 FILL1_71 ();
 sky130_fd_sc_hd__fill_2 FILL1_93 ();
 sky130_fd_sc_hd__fill_2 FILL20_0 ();
 sky130_fd_sc_hd__fill_2 FILL20_107 ();
 sky130_fd_sc_hd__fill_1 FILL20_109 ();
 sky130_fd_sc_hd__fill_8 FILL20_119 ();
 sky130_fd_sc_hd__fill_1 FILL20_127 ();
 sky130_fd_sc_hd__fill_2 FILL20_136 ();
 sky130_fd_sc_hd__fill_2 FILL20_143 ();
 sky130_fd_sc_hd__fill_1 FILL20_151 ();
 sky130_fd_sc_hd__fill_2 FILL20_155 ();
 sky130_fd_sc_hd__fill_4 FILL20_166 ();
 sky130_fd_sc_hd__fill_2 FILL20_170 ();
 sky130_fd_sc_hd__fill_1 FILL20_172 ();
 sky130_fd_sc_hd__fill_1 FILL20_182 ();
 sky130_fd_sc_hd__fill_1 FILL20_209 ();
 sky130_fd_sc_hd__fill_8 FILL20_22 ();
 sky130_fd_sc_hd__fill_4 FILL20_231 ();
 sky130_fd_sc_hd__fill_1 FILL20_235 ();
 sky130_fd_sc_hd__fill_2 FILL20_271 ();
 sky130_fd_sc_hd__fill_4 FILL20_293 ();
 sky130_fd_sc_hd__fill_2 FILL20_297 ();
 sky130_fd_sc_hd__fill_4 FILL20_305 ();
 sky130_fd_sc_hd__fill_2 FILL20_309 ();
 sky130_fd_sc_hd__fill_4 FILL20_40 ();
 sky130_fd_sc_hd__fill_2 FILL20_64 ();
 sky130_fd_sc_hd__fill_1 FILL20_66 ();
 sky130_fd_sc_hd__fill_2 FILL20_87 ();
 sky130_fd_sc_hd__fill_1 FILL20_89 ();
 sky130_fd_sc_hd__fill_8 FILL20_91 ();
 sky130_fd_sc_hd__fill_8 FILL20_99 ();
 sky130_fd_sc_hd__fill_4 FILL21_0 ();
 sky130_fd_sc_hd__fill_2 FILL21_121 ();
 sky130_fd_sc_hd__fill_1 FILL21_123 ();
 sky130_fd_sc_hd__fill_2 FILL21_127 ();
 sky130_fd_sc_hd__fill_1 FILL21_129 ();
 sky130_fd_sc_hd__fill_8 FILL21_14 ();
 sky130_fd_sc_hd__fill_2 FILL21_158 ();
 sky130_fd_sc_hd__fill_2 FILL21_181 ();
 sky130_fd_sc_hd__fill_2 FILL21_186 ();
 sky130_fd_sc_hd__fill_8 FILL21_203 ();
 sky130_fd_sc_hd__fill_4 FILL21_211 ();
 sky130_fd_sc_hd__fill_2 FILL21_215 ();
 sky130_fd_sc_hd__fill_1 FILL21_217 ();
 sky130_fd_sc_hd__fill_2 FILL21_22 ();
 sky130_fd_sc_hd__fill_1 FILL21_221 ();
 sky130_fd_sc_hd__fill_2 FILL21_225 ();
 sky130_fd_sc_hd__fill_1 FILL21_227 ();
 sky130_fd_sc_hd__fill_1 FILL21_265 ();
 sky130_fd_sc_hd__fill_8 FILL21_269 ();
 sky130_fd_sc_hd__fill_4 FILL21_277 ();
 sky130_fd_sc_hd__fill_1 FILL21_281 ();
 sky130_fd_sc_hd__fill_2 FILL21_288 ();
 sky130_fd_sc_hd__fill_1 FILL21_290 ();
 sky130_fd_sc_hd__fill_2 FILL21_294 ();
 sky130_fd_sc_hd__fill_1 FILL21_296 ();
 sky130_fd_sc_hd__fill_1 FILL21_301 ();
 sky130_fd_sc_hd__fill_2 FILL21_308 ();
 sky130_fd_sc_hd__fill_1 FILL21_310 ();
 sky130_fd_sc_hd__fill_1 FILL21_4 ();
 sky130_fd_sc_hd__fill_4 FILL21_44 ();
 sky130_fd_sc_hd__fill_2 FILL21_48 ();
 sky130_fd_sc_hd__fill_4 FILL21_53 ();
 sky130_fd_sc_hd__fill_2 FILL21_57 ();
 sky130_fd_sc_hd__fill_1 FILL21_59 ();
 sky130_fd_sc_hd__fill_4 FILL21_81 ();
 sky130_fd_sc_hd__fill_2 FILL21_85 ();
 sky130_fd_sc_hd__fill_1 FILL21_87 ();
 sky130_fd_sc_hd__fill_2 FILL22_0 ();
 sky130_fd_sc_hd__fill_1 FILL22_118 ();
 sky130_fd_sc_hd__fill_8 FILL22_127 ();
 sky130_fd_sc_hd__fill_4 FILL22_135 ();
 sky130_fd_sc_hd__fill_2 FILL22_139 ();
 sky130_fd_sc_hd__fill_8 FILL22_154 ();
 sky130_fd_sc_hd__fill_8 FILL22_162 ();
 sky130_fd_sc_hd__fill_1 FILL22_170 ();
 sky130_fd_sc_hd__fill_2 FILL22_183 ();
 sky130_fd_sc_hd__fill_1 FILL22_2 ();
 sky130_fd_sc_hd__fill_8 FILL22_201 ();
 sky130_fd_sc_hd__fill_1 FILL22_209 ();
 sky130_fd_sc_hd__fill_2 FILL22_228 ();
 sky130_fd_sc_hd__fill_4 FILL22_23 ();
 sky130_fd_sc_hd__fill_8 FILL22_250 ();
 sky130_fd_sc_hd__fill_4 FILL22_258 ();
 sky130_fd_sc_hd__fill_2 FILL22_268 ();
 sky130_fd_sc_hd__fill_2 FILL22_27 ();
 sky130_fd_sc_hd__fill_2 FILL22_271 ();
 sky130_fd_sc_hd__fill_1 FILL22_273 ();
 sky130_fd_sc_hd__fill_1 FILL22_29 ();
 sky130_fd_sc_hd__fill_4 FILL22_305 ();
 sky130_fd_sc_hd__fill_2 FILL22_309 ();
 sky130_fd_sc_hd__fill_8 FILL22_37 ();
 sky130_fd_sc_hd__fill_4 FILL22_45 ();
 sky130_fd_sc_hd__fill_8 FILL22_52 ();
 sky130_fd_sc_hd__fill_4 FILL22_63 ();
 sky130_fd_sc_hd__fill_1 FILL22_67 ();
 sky130_fd_sc_hd__fill_2 FILL22_88 ();
 sky130_fd_sc_hd__fill_1 FILL23_0 ();
 sky130_fd_sc_hd__fill_4 FILL23_112 ();
 sky130_fd_sc_hd__fill_1 FILL23_116 ();
 sky130_fd_sc_hd__fill_4 FILL23_134 ();
 sky130_fd_sc_hd__fill_2 FILL23_138 ();
 sky130_fd_sc_hd__fill_8 FILL23_152 ();
 sky130_fd_sc_hd__fill_1 FILL23_160 ();
 sky130_fd_sc_hd__fill_4 FILL23_173 ();
 sky130_fd_sc_hd__fill_4 FILL23_181 ();
 sky130_fd_sc_hd__fill_1 FILL23_198 ();
 sky130_fd_sc_hd__fill_1 FILL23_203 ();
 sky130_fd_sc_hd__fill_4 FILL23_21 ();
 sky130_fd_sc_hd__fill_8 FILL23_227 ();
 sky130_fd_sc_hd__fill_2 FILL23_235 ();
 sky130_fd_sc_hd__fill_4 FILL23_247 ();
 sky130_fd_sc_hd__fill_2 FILL23_251 ();
 sky130_fd_sc_hd__fill_1 FILL23_253 ();
 sky130_fd_sc_hd__fill_8 FILL23_266 ();
 sky130_fd_sc_hd__fill_1 FILL23_274 ();
 sky130_fd_sc_hd__fill_4 FILL23_287 ();
 sky130_fd_sc_hd__fill_4 FILL23_304 ();
 sky130_fd_sc_hd__fill_2 FILL23_308 ();
 sky130_fd_sc_hd__fill_1 FILL23_310 ();
 sky130_fd_sc_hd__fill_8 FILL23_34 ();
 sky130_fd_sc_hd__fill_1 FILL23_42 ();
 sky130_fd_sc_hd__fill_4 FILL23_54 ();
 sky130_fd_sc_hd__fill_2 FILL23_58 ();
 sky130_fd_sc_hd__fill_8 FILL23_61 ();
 sky130_fd_sc_hd__fill_1 FILL24_0 ();
 sky130_fd_sc_hd__fill_1 FILL24_133 ();
 sky130_fd_sc_hd__fill_2 FILL24_140 ();
 sky130_fd_sc_hd__fill_1 FILL24_142 ();
 sky130_fd_sc_hd__fill_4 FILL24_145 ();
 sky130_fd_sc_hd__fill_1 FILL24_149 ();
 sky130_fd_sc_hd__fill_2 FILL24_151 ();
 sky130_fd_sc_hd__fill_4 FILL24_205 ();
 sky130_fd_sc_hd__fill_1 FILL24_209 ();
 sky130_fd_sc_hd__fill_4 FILL24_211 ();
 sky130_fd_sc_hd__fill_4 FILL24_221 ();
 sky130_fd_sc_hd__fill_2 FILL24_225 ();
 sky130_fd_sc_hd__fill_2 FILL24_247 ();
 sky130_fd_sc_hd__fill_1 FILL24_249 ();
 sky130_fd_sc_hd__fill_8 FILL24_271 ();
 sky130_fd_sc_hd__fill_8 FILL24_279 ();
 sky130_fd_sc_hd__fill_4 FILL24_287 ();
 sky130_fd_sc_hd__fill_4 FILL24_51 ();
 sky130_fd_sc_hd__fill_1 FILL24_55 ();
 sky130_fd_sc_hd__fill_4 FILL24_85 ();
 sky130_fd_sc_hd__fill_1 FILL24_89 ();
 sky130_fd_sc_hd__fill_4 FILL24_91 ();
 sky130_fd_sc_hd__fill_2 FILL24_95 ();
 sky130_fd_sc_hd__fill_1 FILL24_97 ();
 sky130_fd_sc_hd__fill_8 FILL25_0 ();
 sky130_fd_sc_hd__fill_8 FILL25_106 ();
 sky130_fd_sc_hd__fill_4 FILL25_114 ();
 sky130_fd_sc_hd__fill_2 FILL25_118 ();
 sky130_fd_sc_hd__fill_2 FILL25_12 ();
 sky130_fd_sc_hd__fill_4 FILL25_121 ();
 sky130_fd_sc_hd__fill_1 FILL25_125 ();
 sky130_fd_sc_hd__fill_8 FILL25_129 ();
 sky130_fd_sc_hd__fill_2 FILL25_137 ();
 sky130_fd_sc_hd__fill_1 FILL25_139 ();
 sky130_fd_sc_hd__fill_1 FILL25_14 ();
 sky130_fd_sc_hd__fill_8 FILL25_152 ();
 sky130_fd_sc_hd__fill_4 FILL25_160 ();
 sky130_fd_sc_hd__fill_8 FILL25_172 ();
 sky130_fd_sc_hd__fill_4 FILL25_181 ();
 sky130_fd_sc_hd__fill_2 FILL25_185 ();
 sky130_fd_sc_hd__fill_1 FILL25_190 ();
 sky130_fd_sc_hd__fill_4 FILL25_194 ();
 sky130_fd_sc_hd__fill_2 FILL25_198 ();
 sky130_fd_sc_hd__fill_1 FILL25_200 ();
 sky130_fd_sc_hd__fill_8 FILL25_207 ();
 sky130_fd_sc_hd__fill_2 FILL25_215 ();
 sky130_fd_sc_hd__fill_8 FILL25_221 ();
 sky130_fd_sc_hd__fill_2 FILL25_229 ();
 sky130_fd_sc_hd__fill_8 FILL25_24 ();
 sky130_fd_sc_hd__fill_1 FILL25_241 ();
 sky130_fd_sc_hd__fill_8 FILL25_250 ();
 sky130_fd_sc_hd__fill_2 FILL25_258 ();
 sky130_fd_sc_hd__fill_1 FILL25_260 ();
 sky130_fd_sc_hd__fill_4 FILL25_267 ();
 sky130_fd_sc_hd__fill_1 FILL25_271 ();
 sky130_fd_sc_hd__fill_4 FILL25_284 ();
 sky130_fd_sc_hd__fill_1 FILL25_288 ();
 sky130_fd_sc_hd__fill_8 FILL25_292 ();
 sky130_fd_sc_hd__fill_1 FILL25_301 ();
 sky130_fd_sc_hd__fill_2 FILL25_308 ();
 sky130_fd_sc_hd__fill_1 FILL25_310 ();
 sky130_fd_sc_hd__fill_4 FILL25_32 ();
 sky130_fd_sc_hd__fill_1 FILL25_36 ();
 sky130_fd_sc_hd__fill_2 FILL25_46 ();
 sky130_fd_sc_hd__fill_2 FILL25_58 ();
 sky130_fd_sc_hd__fill_4 FILL25_64 ();
 sky130_fd_sc_hd__fill_1 FILL25_68 ();
 sky130_fd_sc_hd__fill_4 FILL25_8 ();
 sky130_fd_sc_hd__fill_2 FILL26_0 ();
 sky130_fd_sc_hd__fill_1 FILL26_101 ();
 sky130_fd_sc_hd__fill_4 FILL26_135 ();
 sky130_fd_sc_hd__fill_2 FILL26_139 ();
 sky130_fd_sc_hd__fill_1 FILL26_151 ();
 sky130_fd_sc_hd__fill_8 FILL26_16 ();
 sky130_fd_sc_hd__fill_2 FILL26_160 ();
 sky130_fd_sc_hd__fill_2 FILL26_171 ();
 sky130_fd_sc_hd__fill_8 FILL26_193 ();
 sky130_fd_sc_hd__fill_2 FILL26_214 ();
 sky130_fd_sc_hd__fill_4 FILL26_219 ();
 sky130_fd_sc_hd__fill_1 FILL26_223 ();
 sky130_fd_sc_hd__fill_4 FILL26_232 ();
 sky130_fd_sc_hd__fill_2 FILL26_236 ();
 sky130_fd_sc_hd__fill_4 FILL26_24 ();
 sky130_fd_sc_hd__fill_8 FILL26_241 ();
 sky130_fd_sc_hd__fill_2 FILL26_249 ();
 sky130_fd_sc_hd__fill_4 FILL26_264 ();
 sky130_fd_sc_hd__fill_2 FILL26_268 ();
 sky130_fd_sc_hd__fill_2 FILL26_28 ();
 sky130_fd_sc_hd__fill_4 FILL26_291 ();
 sky130_fd_sc_hd__fill_2 FILL26_298 ();
 sky130_fd_sc_hd__fill_1 FILL26_300 ();
 sky130_fd_sc_hd__fill_4 FILL26_304 ();
 sky130_fd_sc_hd__fill_2 FILL26_308 ();
 sky130_fd_sc_hd__fill_1 FILL26_310 ();
 sky130_fd_sc_hd__fill_2 FILL26_40 ();
 sky130_fd_sc_hd__fill_2 FILL26_45 ();
 sky130_fd_sc_hd__fill_8 FILL26_60 ();
 sky130_fd_sc_hd__fill_4 FILL26_68 ();
 sky130_fd_sc_hd__fill_2 FILL26_72 ();
 sky130_fd_sc_hd__fill_8 FILL26_8 ();
 sky130_fd_sc_hd__fill_4 FILL26_86 ();
 sky130_fd_sc_hd__fill_4 FILL26_91 ();
 sky130_fd_sc_hd__fill_1 FILL26_95 ();
 sky130_fd_sc_hd__fill_2 FILL26_99 ();
 sky130_fd_sc_hd__fill_2 FILL27_103 ();
 sky130_fd_sc_hd__fill_8 FILL27_109 ();
 sky130_fd_sc_hd__fill_2 FILL27_117 ();
 sky130_fd_sc_hd__fill_1 FILL27_119 ();
 sky130_fd_sc_hd__fill_2 FILL27_121 ();
 sky130_fd_sc_hd__fill_1 FILL27_123 ();
 sky130_fd_sc_hd__fill_1 FILL27_156 ();
 sky130_fd_sc_hd__fill_2 FILL27_177 ();
 sky130_fd_sc_hd__fill_1 FILL27_179 ();
 sky130_fd_sc_hd__fill_4 FILL27_199 ();
 sky130_fd_sc_hd__fill_2 FILL27_20 ();
 sky130_fd_sc_hd__fill_8 FILL27_231 ();
 sky130_fd_sc_hd__fill_1 FILL27_239 ();
 sky130_fd_sc_hd__fill_4 FILL27_267 ();
 sky130_fd_sc_hd__fill_2 FILL27_271 ();
 sky130_fd_sc_hd__fill_1 FILL27_273 ();
 sky130_fd_sc_hd__fill_4 FILL27_285 ();
 sky130_fd_sc_hd__fill_1 FILL27_289 ();
 sky130_fd_sc_hd__fill_1 FILL27_299 ();
 sky130_fd_sc_hd__fill_1 FILL27_301 ();
 sky130_fd_sc_hd__fill_8 FILL27_42 ();
 sky130_fd_sc_hd__fill_1 FILL27_50 ();
 sky130_fd_sc_hd__fill_2 FILL27_54 ();
 sky130_fd_sc_hd__fill_1 FILL27_59 ();
 sky130_fd_sc_hd__fill_2 FILL27_61 ();
 sky130_fd_sc_hd__fill_1 FILL27_63 ();
 sky130_fd_sc_hd__fill_8 FILL27_90 ();
 sky130_fd_sc_hd__fill_1 FILL27_98 ();
 sky130_fd_sc_hd__fill_1 FILL28_0 ();
 sky130_fd_sc_hd__fill_8 FILL28_107 ();
 sky130_fd_sc_hd__fill_8 FILL28_115 ();
 sky130_fd_sc_hd__fill_8 FILL28_123 ();
 sky130_fd_sc_hd__fill_1 FILL28_131 ();
 sky130_fd_sc_hd__fill_8 FILL28_136 ();
 sky130_fd_sc_hd__fill_4 FILL28_144 ();
 sky130_fd_sc_hd__fill_2 FILL28_148 ();
 sky130_fd_sc_hd__fill_8 FILL28_157 ();
 sky130_fd_sc_hd__fill_1 FILL28_165 ();
 sky130_fd_sc_hd__fill_8 FILL28_172 ();
 sky130_fd_sc_hd__fill_4 FILL28_180 ();
 sky130_fd_sc_hd__fill_4 FILL28_187 ();
 sky130_fd_sc_hd__fill_1 FILL28_191 ();
 sky130_fd_sc_hd__fill_8 FILL28_195 ();
 sky130_fd_sc_hd__fill_2 FILL28_211 ();
 sky130_fd_sc_hd__fill_8 FILL28_216 ();
 sky130_fd_sc_hd__fill_4 FILL28_224 ();
 sky130_fd_sc_hd__fill_2 FILL28_248 ();
 sky130_fd_sc_hd__fill_4 FILL28_265 ();
 sky130_fd_sc_hd__fill_1 FILL28_269 ();
 sky130_fd_sc_hd__fill_2 FILL28_271 ();
 sky130_fd_sc_hd__fill_4 FILL28_285 ();
 sky130_fd_sc_hd__fill_2 FILL28_309 ();
 sky130_fd_sc_hd__fill_4 FILL28_31 ();
 sky130_fd_sc_hd__fill_2 FILL28_35 ();
 sky130_fd_sc_hd__fill_8 FILL28_66 ();
 sky130_fd_sc_hd__fill_4 FILL28_74 ();
 sky130_fd_sc_hd__fill_2 FILL28_78 ();
 sky130_fd_sc_hd__fill_2 FILL28_87 ();
 sky130_fd_sc_hd__fill_1 FILL28_89 ();
 sky130_fd_sc_hd__fill_4 FILL28_91 ();
 sky130_fd_sc_hd__fill_2 FILL28_95 ();
 sky130_fd_sc_hd__fill_1 FILL28_97 ();
 sky130_fd_sc_hd__fill_2 FILL29_0 ();
 sky130_fd_sc_hd__fill_1 FILL29_11 ();
 sky130_fd_sc_hd__fill_2 FILL29_110 ();
 sky130_fd_sc_hd__fill_1 FILL29_112 ();
 sky130_fd_sc_hd__fill_4 FILL29_121 ();
 sky130_fd_sc_hd__fill_1 FILL29_125 ();
 sky130_fd_sc_hd__fill_8 FILL29_129 ();
 sky130_fd_sc_hd__fill_8 FILL29_137 ();
 sky130_fd_sc_hd__fill_2 FILL29_145 ();
 sky130_fd_sc_hd__fill_1 FILL29_147 ();
 sky130_fd_sc_hd__fill_8 FILL29_154 ();
 sky130_fd_sc_hd__fill_8 FILL29_171 ();
 sky130_fd_sc_hd__fill_1 FILL29_179 ();
 sky130_fd_sc_hd__fill_4 FILL29_190 ();
 sky130_fd_sc_hd__fill_1 FILL29_200 ();
 sky130_fd_sc_hd__fill_8 FILL29_21 ();
 sky130_fd_sc_hd__fill_2 FILL29_224 ();
 sky130_fd_sc_hd__fill_2 FILL29_238 ();
 sky130_fd_sc_hd__fill_1 FILL29_244 ();
 sky130_fd_sc_hd__fill_2 FILL29_265 ();
 sky130_fd_sc_hd__fill_1 FILL29_267 ();
 sky130_fd_sc_hd__fill_8 FILL29_288 ();
 sky130_fd_sc_hd__fill_1 FILL29_29 ();
 sky130_fd_sc_hd__fill_4 FILL29_296 ();
 sky130_fd_sc_hd__fill_1 FILL29_301 ();
 sky130_fd_sc_hd__fill_2 FILL29_308 ();
 sky130_fd_sc_hd__fill_1 FILL29_310 ();
 sky130_fd_sc_hd__fill_1 FILL29_59 ();
 sky130_fd_sc_hd__fill_1 FILL29_81 ();
 sky130_fd_sc_hd__fill_2 FILL29_86 ();
 sky130_fd_sc_hd__fill_2 FILL29_94 ();
 sky130_fd_sc_hd__fill_8 FILL29_99 ();
 sky130_fd_sc_hd__fill_8 FILL2_131 ();
 sky130_fd_sc_hd__fill_2 FILL2_139 ();
 sky130_fd_sc_hd__fill_1 FILL2_141 ();
 sky130_fd_sc_hd__fill_4 FILL2_159 ();
 sky130_fd_sc_hd__fill_1 FILL2_163 ();
 sky130_fd_sc_hd__fill_8 FILL2_173 ();
 sky130_fd_sc_hd__fill_1 FILL2_181 ();
 sky130_fd_sc_hd__fill_2 FILL2_202 ();
 sky130_fd_sc_hd__fill_1 FILL2_204 ();
 sky130_fd_sc_hd__fill_2 FILL2_208 ();
 sky130_fd_sc_hd__fill_4 FILL2_211 ();
 sky130_fd_sc_hd__fill_2 FILL2_215 ();
 sky130_fd_sc_hd__fill_8 FILL2_226 ();
 sky130_fd_sc_hd__fill_1 FILL2_242 ();
 sky130_fd_sc_hd__fill_4 FILL2_255 ();
 sky130_fd_sc_hd__fill_4 FILL2_262 ();
 sky130_fd_sc_hd__fill_1 FILL2_266 ();
 sky130_fd_sc_hd__fill_1 FILL2_29 ();
 sky130_fd_sc_hd__fill_4 FILL2_34 ();
 sky130_fd_sc_hd__fill_2 FILL2_47 ();
 sky130_fd_sc_hd__fill_1 FILL2_52 ();
 sky130_fd_sc_hd__fill_2 FILL2_73 ();
 sky130_fd_sc_hd__fill_1 FILL2_75 ();
 sky130_fd_sc_hd__fill_4 FILL2_79 ();
 sky130_fd_sc_hd__fill_1 FILL2_83 ();
 sky130_fd_sc_hd__fill_2 FILL2_87 ();
 sky130_fd_sc_hd__fill_1 FILL2_89 ();
 sky130_fd_sc_hd__fill_2 FILL30_172 ();
 sky130_fd_sc_hd__fill_1 FILL30_20 ();
 sky130_fd_sc_hd__fill_4 FILL30_211 ();
 sky130_fd_sc_hd__fill_1 FILL30_215 ();
 sky130_fd_sc_hd__fill_8 FILL30_234 ();
 sky130_fd_sc_hd__fill_4 FILL30_242 ();
 sky130_fd_sc_hd__fill_2 FILL30_283 ();
 sky130_fd_sc_hd__fill_2 FILL30_308 ();
 sky130_fd_sc_hd__fill_8 FILL30_31 ();
 sky130_fd_sc_hd__fill_1 FILL30_310 ();
 sky130_fd_sc_hd__fill_4 FILL30_39 ();
 sky130_fd_sc_hd__fill_1 FILL30_43 ();
 sky130_fd_sc_hd__fill_8 FILL30_53 ();
 sky130_fd_sc_hd__fill_4 FILL30_61 ();
 sky130_fd_sc_hd__fill_1 FILL30_80 ();
 sky130_fd_sc_hd__fill_2 FILL30_88 ();
 sky130_fd_sc_hd__fill_1 FILL30_91 ();
 sky130_fd_sc_hd__fill_4 FILL30_98 ();
 sky130_fd_sc_hd__fill_8 FILL31_0 ();
 sky130_fd_sc_hd__fill_4 FILL31_116 ();
 sky130_fd_sc_hd__fill_4 FILL31_121 ();
 sky130_fd_sc_hd__fill_4 FILL31_132 ();
 sky130_fd_sc_hd__fill_1 FILL31_136 ();
 sky130_fd_sc_hd__fill_1 FILL31_157 ();
 sky130_fd_sc_hd__fill_2 FILL31_16 ();
 sky130_fd_sc_hd__fill_2 FILL31_178 ();
 sky130_fd_sc_hd__fill_2 FILL31_181 ();
 sky130_fd_sc_hd__fill_8 FILL31_189 ();
 sky130_fd_sc_hd__fill_2 FILL31_197 ();
 sky130_fd_sc_hd__fill_1 FILL31_199 ();
 sky130_fd_sc_hd__fill_8 FILL31_218 ();
 sky130_fd_sc_hd__fill_8 FILL31_226 ();
 sky130_fd_sc_hd__fill_2 FILL31_234 ();
 sky130_fd_sc_hd__fill_1 FILL31_301 ();
 sky130_fd_sc_hd__fill_2 FILL31_308 ();
 sky130_fd_sc_hd__fill_1 FILL31_310 ();
 sky130_fd_sc_hd__fill_2 FILL31_38 ();
 sky130_fd_sc_hd__fill_4 FILL31_61 ();
 sky130_fd_sc_hd__fill_1 FILL31_65 ();
 sky130_fd_sc_hd__fill_8 FILL31_8 ();
 sky130_fd_sc_hd__fill_2 FILL31_81 ();
 sky130_fd_sc_hd__fill_1 FILL31_83 ();
 sky130_fd_sc_hd__fill_4 FILL32_0 ();
 sky130_fd_sc_hd__fill_8 FILL32_100 ();
 sky130_fd_sc_hd__fill_8 FILL32_128 ();
 sky130_fd_sc_hd__fill_8 FILL32_136 ();
 sky130_fd_sc_hd__fill_4 FILL32_144 ();
 sky130_fd_sc_hd__fill_2 FILL32_148 ();
 sky130_fd_sc_hd__fill_4 FILL32_151 ();
 sky130_fd_sc_hd__fill_2 FILL32_155 ();
 sky130_fd_sc_hd__fill_1 FILL32_157 ();
 sky130_fd_sc_hd__fill_1 FILL32_168 ();
 sky130_fd_sc_hd__fill_8 FILL32_172 ();
 sky130_fd_sc_hd__fill_4 FILL32_180 ();
 sky130_fd_sc_hd__fill_2 FILL32_187 ();
 sky130_fd_sc_hd__fill_1 FILL32_189 ();
 sky130_fd_sc_hd__fill_4 FILL32_218 ();
 sky130_fd_sc_hd__fill_8 FILL32_234 ();
 sky130_fd_sc_hd__fill_4 FILL32_24 ();
 sky130_fd_sc_hd__fill_4 FILL32_242 ();
 sky130_fd_sc_hd__fill_1 FILL32_246 ();
 sky130_fd_sc_hd__fill_8 FILL32_256 ();
 sky130_fd_sc_hd__fill_4 FILL32_264 ();
 sky130_fd_sc_hd__fill_2 FILL32_268 ();
 sky130_fd_sc_hd__fill_8 FILL32_271 ();
 sky130_fd_sc_hd__fill_4 FILL32_279 ();
 sky130_fd_sc_hd__fill_2 FILL32_28 ();
 sky130_fd_sc_hd__fill_8 FILL32_292 ();
 sky130_fd_sc_hd__fill_8 FILL32_300 ();
 sky130_fd_sc_hd__fill_2 FILL32_308 ();
 sky130_fd_sc_hd__fill_1 FILL32_310 ();
 sky130_fd_sc_hd__fill_1 FILL32_4 ();
 sky130_fd_sc_hd__fill_4 FILL32_40 ();
 sky130_fd_sc_hd__fill_2 FILL32_44 ();
 sky130_fd_sc_hd__fill_1 FILL32_46 ();
 sky130_fd_sc_hd__fill_4 FILL32_56 ();
 sky130_fd_sc_hd__fill_2 FILL32_60 ();
 sky130_fd_sc_hd__fill_1 FILL32_62 ();
 sky130_fd_sc_hd__fill_1 FILL32_8 ();
 sky130_fd_sc_hd__fill_4 FILL32_83 ();
 sky130_fd_sc_hd__fill_2 FILL32_87 ();
 sky130_fd_sc_hd__fill_1 FILL32_89 ();
 sky130_fd_sc_hd__fill_2 FILL33_111 ();
 sky130_fd_sc_hd__fill_1 FILL33_119 ();
 sky130_fd_sc_hd__fill_4 FILL33_124 ();
 sky130_fd_sc_hd__fill_1 FILL33_136 ();
 sky130_fd_sc_hd__fill_4 FILL33_147 ();
 sky130_fd_sc_hd__fill_2 FILL33_151 ();
 sky130_fd_sc_hd__fill_1 FILL33_153 ();
 sky130_fd_sc_hd__fill_4 FILL33_163 ();
 sky130_fd_sc_hd__fill_1 FILL33_170 ();
 sky130_fd_sc_hd__fill_8 FILL33_193 ();
 sky130_fd_sc_hd__fill_2 FILL33_201 ();
 sky130_fd_sc_hd__fill_8 FILL33_209 ();
 sky130_fd_sc_hd__fill_4 FILL33_217 ();
 sky130_fd_sc_hd__fill_1 FILL33_221 ();
 sky130_fd_sc_hd__fill_2 FILL33_238 ();
 sky130_fd_sc_hd__fill_1 FILL33_241 ();
 sky130_fd_sc_hd__fill_1 FILL33_262 ();
 sky130_fd_sc_hd__fill_2 FILL33_283 ();
 sky130_fd_sc_hd__fill_1 FILL33_285 ();
 sky130_fd_sc_hd__fill_2 FILL33_295 ();
 sky130_fd_sc_hd__fill_1 FILL33_301 ();
 sky130_fd_sc_hd__fill_2 FILL33_308 ();
 sky130_fd_sc_hd__fill_1 FILL33_310 ();
 sky130_fd_sc_hd__fill_8 FILL33_61 ();
 sky130_fd_sc_hd__fill_8 FILL33_78 ();
 sky130_fd_sc_hd__fill_2 FILL33_86 ();
 sky130_fd_sc_hd__fill_1 FILL33_88 ();
 sky130_fd_sc_hd__fill_8 FILL33_95 ();
 sky130_fd_sc_hd__fill_8 FILL34_100 ();
 sky130_fd_sc_hd__fill_2 FILL34_108 ();
 sky130_fd_sc_hd__fill_8 FILL34_113 ();
 sky130_fd_sc_hd__fill_2 FILL34_121 ();
 sky130_fd_sc_hd__fill_1 FILL34_123 ();
 sky130_fd_sc_hd__fill_4 FILL34_134 ();
 sky130_fd_sc_hd__fill_1 FILL34_138 ();
 sky130_fd_sc_hd__fill_2 FILL34_147 ();
 sky130_fd_sc_hd__fill_1 FILL34_149 ();
 sky130_fd_sc_hd__fill_1 FILL34_171 ();
 sky130_fd_sc_hd__fill_8 FILL34_192 ();
 sky130_fd_sc_hd__fill_1 FILL34_20 ();
 sky130_fd_sc_hd__fill_1 FILL34_209 ();
 sky130_fd_sc_hd__fill_8 FILL34_214 ();
 sky130_fd_sc_hd__fill_2 FILL34_222 ();
 sky130_fd_sc_hd__fill_1 FILL34_224 ();
 sky130_fd_sc_hd__fill_4 FILL34_248 ();
 sky130_fd_sc_hd__fill_1 FILL34_263 ();
 sky130_fd_sc_hd__fill_1 FILL34_283 ();
 sky130_fd_sc_hd__fill_8 FILL34_31 ();
 sky130_fd_sc_hd__fill_1 FILL34_310 ();
 sky130_fd_sc_hd__fill_8 FILL34_39 ();
 sky130_fd_sc_hd__fill_8 FILL34_47 ();
 sky130_fd_sc_hd__fill_2 FILL34_55 ();
 sky130_fd_sc_hd__fill_1 FILL34_86 ();
 sky130_fd_sc_hd__fill_4 FILL35_0 ();
 sky130_fd_sc_hd__fill_4 FILL35_106 ();
 sky130_fd_sc_hd__fill_1 FILL35_110 ();
 sky130_fd_sc_hd__fill_1 FILL35_121 ();
 sky130_fd_sc_hd__fill_8 FILL35_125 ();
 sky130_fd_sc_hd__fill_8 FILL35_133 ();
 sky130_fd_sc_hd__fill_4 FILL35_14 ();
 sky130_fd_sc_hd__fill_8 FILL35_141 ();
 sky130_fd_sc_hd__fill_8 FILL35_149 ();
 sky130_fd_sc_hd__fill_2 FILL35_157 ();
 sky130_fd_sc_hd__fill_2 FILL35_162 ();
 sky130_fd_sc_hd__fill_1 FILL35_164 ();
 sky130_fd_sc_hd__fill_2 FILL35_168 ();
 sky130_fd_sc_hd__fill_1 FILL35_170 ();
 sky130_fd_sc_hd__fill_2 FILL35_178 ();
 sky130_fd_sc_hd__fill_8 FILL35_181 ();
 sky130_fd_sc_hd__fill_4 FILL35_230 ();
 sky130_fd_sc_hd__fill_2 FILL35_234 ();
 sky130_fd_sc_hd__fill_1 FILL35_239 ();
 sky130_fd_sc_hd__fill_8 FILL35_241 ();
 sky130_fd_sc_hd__fill_1 FILL35_249 ();
 sky130_fd_sc_hd__fill_4 FILL35_262 ();
 sky130_fd_sc_hd__fill_1 FILL35_266 ();
 sky130_fd_sc_hd__fill_4 FILL35_270 ();
 sky130_fd_sc_hd__fill_4 FILL35_295 ();
 sky130_fd_sc_hd__fill_1 FILL35_299 ();
 sky130_fd_sc_hd__fill_1 FILL35_301 ();
 sky130_fd_sc_hd__fill_4 FILL35_305 ();
 sky130_fd_sc_hd__fill_2 FILL35_309 ();
 sky130_fd_sc_hd__fill_4 FILL35_38 ();
 sky130_fd_sc_hd__fill_1 FILL35_4 ();
 sky130_fd_sc_hd__fill_8 FILL35_51 ();
 sky130_fd_sc_hd__fill_1 FILL35_59 ();
 sky130_fd_sc_hd__fill_2 FILL35_81 ();
 sky130_fd_sc_hd__fill_4 FILL36_0 ();
 sky130_fd_sc_hd__fill_1 FILL36_101 ();
 sky130_fd_sc_hd__fill_2 FILL36_130 ();
 sky130_fd_sc_hd__fill_1 FILL36_132 ();
 sky130_fd_sc_hd__fill_2 FILL36_148 ();
 sky130_fd_sc_hd__fill_8 FILL36_15 ();
 sky130_fd_sc_hd__fill_4 FILL36_151 ();
 sky130_fd_sc_hd__fill_2 FILL36_155 ();
 sky130_fd_sc_hd__fill_2 FILL36_166 ();
 sky130_fd_sc_hd__fill_1 FILL36_168 ();
 sky130_fd_sc_hd__fill_2 FILL36_172 ();
 sky130_fd_sc_hd__fill_8 FILL36_178 ();
 sky130_fd_sc_hd__fill_2 FILL36_186 ();
 sky130_fd_sc_hd__fill_8 FILL36_191 ();
 sky130_fd_sc_hd__fill_4 FILL36_199 ();
 sky130_fd_sc_hd__fill_1 FILL36_203 ();
 sky130_fd_sc_hd__fill_2 FILL36_207 ();
 sky130_fd_sc_hd__fill_1 FILL36_209 ();
 sky130_fd_sc_hd__fill_1 FILL36_211 ();
 sky130_fd_sc_hd__fill_1 FILL36_215 ();
 sky130_fd_sc_hd__fill_4 FILL36_23 ();
 sky130_fd_sc_hd__fill_8 FILL36_236 ();
 sky130_fd_sc_hd__fill_4 FILL36_264 ();
 sky130_fd_sc_hd__fill_2 FILL36_268 ();
 sky130_fd_sc_hd__fill_2 FILL36_27 ();
 sky130_fd_sc_hd__fill_1 FILL36_271 ();
 sky130_fd_sc_hd__fill_4 FILL36_281 ();
 sky130_fd_sc_hd__fill_2 FILL36_285 ();
 sky130_fd_sc_hd__fill_1 FILL36_287 ();
 sky130_fd_sc_hd__fill_1 FILL36_29 ();
 sky130_fd_sc_hd__fill_2 FILL36_308 ();
 sky130_fd_sc_hd__fill_4 FILL36_31 ();
 sky130_fd_sc_hd__fill_1 FILL36_310 ();
 sky130_fd_sc_hd__fill_2 FILL36_35 ();
 sky130_fd_sc_hd__fill_1 FILL36_37 ();
 sky130_fd_sc_hd__fill_2 FILL36_4 ();
 sky130_fd_sc_hd__fill_4 FILL36_58 ();
 sky130_fd_sc_hd__fill_2 FILL36_62 ();
 sky130_fd_sc_hd__fill_1 FILL36_64 ();
 sky130_fd_sc_hd__fill_4 FILL36_85 ();
 sky130_fd_sc_hd__fill_1 FILL36_89 ();
 sky130_fd_sc_hd__fill_8 FILL36_91 ();
 sky130_fd_sc_hd__fill_2 FILL36_99 ();
 sky130_fd_sc_hd__fill_2 FILL37_121 ();
 sky130_fd_sc_hd__fill_2 FILL37_127 ();
 sky130_fd_sc_hd__fill_2 FILL37_172 ();
 sky130_fd_sc_hd__fill_1 FILL37_174 ();
 sky130_fd_sc_hd__fill_2 FILL37_178 ();
 sky130_fd_sc_hd__fill_2 FILL37_181 ();
 sky130_fd_sc_hd__fill_1 FILL37_183 ();
 sky130_fd_sc_hd__fill_2 FILL37_195 ();
 sky130_fd_sc_hd__fill_8 FILL37_200 ();
 sky130_fd_sc_hd__fill_8 FILL37_208 ();
 sky130_fd_sc_hd__fill_8 FILL37_216 ();
 sky130_fd_sc_hd__fill_8 FILL37_224 ();
 sky130_fd_sc_hd__fill_2 FILL37_232 ();
 sky130_fd_sc_hd__fill_2 FILL37_253 ();
 sky130_fd_sc_hd__fill_1 FILL37_255 ();
 sky130_fd_sc_hd__fill_4 FILL37_262 ();
 sky130_fd_sc_hd__fill_2 FILL37_266 ();
 sky130_fd_sc_hd__fill_1 FILL37_301 ();
 sky130_fd_sc_hd__fill_2 FILL37_308 ();
 sky130_fd_sc_hd__fill_1 FILL37_310 ();
 sky130_fd_sc_hd__fill_8 FILL37_61 ();
 sky130_fd_sc_hd__fill_2 FILL37_69 ();
 sky130_fd_sc_hd__fill_8 FILL37_80 ();
 sky130_fd_sc_hd__fill_8 FILL37_88 ();
 sky130_fd_sc_hd__fill_2 FILL37_96 ();
 sky130_fd_sc_hd__fill_1 FILL37_98 ();
 sky130_fd_sc_hd__fill_4 FILL38_0 ();
 sky130_fd_sc_hd__fill_8 FILL38_107 ();
 sky130_fd_sc_hd__fill_8 FILL38_120 ();
 sky130_fd_sc_hd__fill_4 FILL38_128 ();
 sky130_fd_sc_hd__fill_1 FILL38_132 ();
 sky130_fd_sc_hd__fill_8 FILL38_137 ();
 sky130_fd_sc_hd__fill_4 FILL38_145 ();
 sky130_fd_sc_hd__fill_1 FILL38_149 ();
 sky130_fd_sc_hd__fill_4 FILL38_15 ();
 sky130_fd_sc_hd__fill_8 FILL38_151 ();
 sky130_fd_sc_hd__fill_1 FILL38_159 ();
 sky130_fd_sc_hd__fill_1 FILL38_163 ();
 sky130_fd_sc_hd__fill_1 FILL38_173 ();
 sky130_fd_sc_hd__fill_4 FILL38_180 ();
 sky130_fd_sc_hd__fill_2 FILL38_19 ();
 sky130_fd_sc_hd__fill_4 FILL38_193 ();
 sky130_fd_sc_hd__fill_2 FILL38_208 ();
 sky130_fd_sc_hd__fill_4 FILL38_214 ();
 sky130_fd_sc_hd__fill_1 FILL38_225 ();
 sky130_fd_sc_hd__fill_2 FILL38_251 ();
 sky130_fd_sc_hd__fill_4 FILL38_266 ();
 sky130_fd_sc_hd__fill_4 FILL38_271 ();
 sky130_fd_sc_hd__fill_2 FILL38_275 ();
 sky130_fd_sc_hd__fill_8 FILL38_280 ();
 sky130_fd_sc_hd__fill_8 FILL38_288 ();
 sky130_fd_sc_hd__fill_4 FILL38_296 ();
 sky130_fd_sc_hd__fill_2 FILL38_300 ();
 sky130_fd_sc_hd__fill_4 FILL38_305 ();
 sky130_fd_sc_hd__fill_2 FILL38_309 ();
 sky130_fd_sc_hd__fill_8 FILL38_40 ();
 sky130_fd_sc_hd__fill_4 FILL38_48 ();
 sky130_fd_sc_hd__fill_2 FILL38_52 ();
 sky130_fd_sc_hd__fill_4 FILL38_74 ();
 sky130_fd_sc_hd__fill_2 FILL38_78 ();
 sky130_fd_sc_hd__fill_1 FILL38_80 ();
 sky130_fd_sc_hd__fill_2 FILL38_88 ();
 sky130_fd_sc_hd__fill_1 FILL38_91 ();
 sky130_fd_sc_hd__fill_4 FILL38_95 ();
 sky130_fd_sc_hd__fill_4 FILL39_105 ();
 sky130_fd_sc_hd__fill_2 FILL39_109 ();
 sky130_fd_sc_hd__fill_1 FILL39_119 ();
 sky130_fd_sc_hd__fill_1 FILL39_121 ();
 sky130_fd_sc_hd__fill_4 FILL39_175 ();
 sky130_fd_sc_hd__fill_1 FILL39_179 ();
 sky130_fd_sc_hd__fill_2 FILL39_181 ();
 sky130_fd_sc_hd__fill_1 FILL39_203 ();
 sky130_fd_sc_hd__fill_8 FILL39_215 ();
 sky130_fd_sc_hd__fill_8 FILL39_223 ();
 sky130_fd_sc_hd__fill_8 FILL39_231 ();
 sky130_fd_sc_hd__fill_1 FILL39_239 ();
 sky130_fd_sc_hd__fill_8 FILL39_241 ();
 sky130_fd_sc_hd__fill_4 FILL39_249 ();
 sky130_fd_sc_hd__fill_8 FILL39_274 ();
 sky130_fd_sc_hd__fill_4 FILL39_282 ();
 sky130_fd_sc_hd__fill_1 FILL39_286 ();
 sky130_fd_sc_hd__fill_4 FILL39_296 ();
 sky130_fd_sc_hd__fill_1 FILL39_301 ();
 sky130_fd_sc_hd__fill_4 FILL39_305 ();
 sky130_fd_sc_hd__fill_2 FILL39_309 ();
 sky130_fd_sc_hd__fill_2 FILL39_40 ();
 sky130_fd_sc_hd__fill_1 FILL39_61 ();
 sky130_fd_sc_hd__fill_8 FILL3_0 ();
 sky130_fd_sc_hd__fill_2 FILL3_104 ();
 sky130_fd_sc_hd__fill_8 FILL3_109 ();
 sky130_fd_sc_hd__fill_2 FILL3_117 ();
 sky130_fd_sc_hd__fill_1 FILL3_119 ();
 sky130_fd_sc_hd__fill_4 FILL3_121 ();
 sky130_fd_sc_hd__fill_2 FILL3_125 ();
 sky130_fd_sc_hd__fill_1 FILL3_127 ();
 sky130_fd_sc_hd__fill_8 FILL3_131 ();
 sky130_fd_sc_hd__fill_1 FILL3_139 ();
 sky130_fd_sc_hd__fill_8 FILL3_144 ();
 sky130_fd_sc_hd__fill_8 FILL3_152 ();
 sky130_fd_sc_hd__fill_8 FILL3_18 ();
 sky130_fd_sc_hd__fill_2 FILL3_184 ();
 sky130_fd_sc_hd__fill_4 FILL3_198 ();
 sky130_fd_sc_hd__fill_8 FILL3_222 ();
 sky130_fd_sc_hd__fill_2 FILL3_230 ();
 sky130_fd_sc_hd__fill_1 FILL3_232 ();
 sky130_fd_sc_hd__fill_4 FILL3_236 ();
 sky130_fd_sc_hd__fill_8 FILL3_241 ();
 sky130_fd_sc_hd__fill_1 FILL3_249 ();
 sky130_fd_sc_hd__fill_1 FILL3_26 ();
 sky130_fd_sc_hd__fill_2 FILL3_288 ();
 sky130_fd_sc_hd__fill_1 FILL3_290 ();
 sky130_fd_sc_hd__fill_1 FILL3_30 ();
 sky130_fd_sc_hd__fill_4 FILL3_307 ();
 sky130_fd_sc_hd__fill_2 FILL3_51 ();
 sky130_fd_sc_hd__fill_1 FILL3_53 ();
 sky130_fd_sc_hd__fill_1 FILL3_74 ();
 sky130_fd_sc_hd__fill_4 FILL3_8 ();
 sky130_fd_sc_hd__fill_4 FILL3_83 ();
 sky130_fd_sc_hd__fill_1 FILL3_87 ();
 sky130_fd_sc_hd__fill_1 FILL3_91 ();
 sky130_fd_sc_hd__fill_4 FILL40_0 ();
 sky130_fd_sc_hd__fill_2 FILL40_107 ();
 sky130_fd_sc_hd__fill_8 FILL40_12 ();
 sky130_fd_sc_hd__fill_1 FILL40_149 ();
 sky130_fd_sc_hd__fill_4 FILL40_154 ();
 sky130_fd_sc_hd__fill_2 FILL40_158 ();
 sky130_fd_sc_hd__fill_1 FILL40_160 ();
 sky130_fd_sc_hd__fill_8 FILL40_164 ();
 sky130_fd_sc_hd__fill_2 FILL40_175 ();
 sky130_fd_sc_hd__fill_1 FILL40_177 ();
 sky130_fd_sc_hd__fill_8 FILL40_182 ();
 sky130_fd_sc_hd__fill_1 FILL40_190 ();
 sky130_fd_sc_hd__fill_8 FILL40_20 ();
 sky130_fd_sc_hd__fill_8 FILL40_200 ();
 sky130_fd_sc_hd__fill_2 FILL40_208 ();
 sky130_fd_sc_hd__fill_1 FILL40_211 ();
 sky130_fd_sc_hd__fill_8 FILL40_232 ();
 sky130_fd_sc_hd__fill_2 FILL40_240 ();
 sky130_fd_sc_hd__fill_1 FILL40_242 ();
 sky130_fd_sc_hd__fill_1 FILL40_246 ();
 sky130_fd_sc_hd__fill_2 FILL40_267 ();
 sky130_fd_sc_hd__fill_1 FILL40_269 ();
 sky130_fd_sc_hd__fill_2 FILL40_28 ();
 sky130_fd_sc_hd__fill_8 FILL40_31 ();
 sky130_fd_sc_hd__fill_2 FILL40_39 ();
 sky130_fd_sc_hd__fill_1 FILL40_4 ();
 sky130_fd_sc_hd__fill_1 FILL40_41 ();
 sky130_fd_sc_hd__fill_8 FILL40_62 ();
 sky130_fd_sc_hd__fill_8 FILL40_79 ();
 sky130_fd_sc_hd__fill_2 FILL40_87 ();
 sky130_fd_sc_hd__fill_1 FILL40_89 ();
 sky130_fd_sc_hd__fill_8 FILL40_91 ();
 sky130_fd_sc_hd__fill_8 FILL40_99 ();
 sky130_fd_sc_hd__fill_4 FILL41_0 ();
 sky130_fd_sc_hd__fill_2 FILL41_103 ();
 sky130_fd_sc_hd__fill_1 FILL41_105 ();
 sky130_fd_sc_hd__fill_2 FILL41_109 ();
 sky130_fd_sc_hd__fill_4 FILL41_114 ();
 sky130_fd_sc_hd__fill_2 FILL41_118 ();
 sky130_fd_sc_hd__fill_1 FILL41_12 ();
 sky130_fd_sc_hd__fill_8 FILL41_121 ();
 sky130_fd_sc_hd__fill_2 FILL41_129 ();
 sky130_fd_sc_hd__fill_1 FILL41_131 ();
 sky130_fd_sc_hd__fill_4 FILL41_136 ();
 sky130_fd_sc_hd__fill_2 FILL41_140 ();
 sky130_fd_sc_hd__fill_1 FILL41_145 ();
 sky130_fd_sc_hd__fill_8 FILL41_169 ();
 sky130_fd_sc_hd__fill_2 FILL41_177 ();
 sky130_fd_sc_hd__fill_1 FILL41_179 ();
 sky130_fd_sc_hd__fill_4 FILL41_184 ();
 sky130_fd_sc_hd__fill_2 FILL41_188 ();
 sky130_fd_sc_hd__fill_1 FILL41_190 ();
 sky130_fd_sc_hd__fill_8 FILL41_217 ();
 sky130_fd_sc_hd__fill_1 FILL41_225 ();
 sky130_fd_sc_hd__fill_4 FILL41_235 ();
 sky130_fd_sc_hd__fill_1 FILL41_239 ();
 sky130_fd_sc_hd__fill_8 FILL41_241 ();
 sky130_fd_sc_hd__fill_8 FILL41_249 ();
 sky130_fd_sc_hd__fill_8 FILL41_257 ();
 sky130_fd_sc_hd__fill_4 FILL41_265 ();
 sky130_fd_sc_hd__fill_2 FILL41_278 ();
 sky130_fd_sc_hd__fill_1 FILL41_299 ();
 sky130_fd_sc_hd__fill_8 FILL41_301 ();
 sky130_fd_sc_hd__fill_2 FILL41_309 ();
 sky130_fd_sc_hd__fill_1 FILL41_4 ();
 sky130_fd_sc_hd__fill_4 FILL41_41 ();
 sky130_fd_sc_hd__fill_4 FILL41_54 ();
 sky130_fd_sc_hd__fill_2 FILL41_58 ();
 sky130_fd_sc_hd__fill_2 FILL41_65 ();
 sky130_fd_sc_hd__fill_2 FILL41_70 ();
 sky130_fd_sc_hd__fill_4 FILL41_75 ();
 sky130_fd_sc_hd__fill_4 FILL41_99 ();
 sky130_fd_sc_hd__fill_2 FILL42_127 ();
 sky130_fd_sc_hd__fill_1 FILL42_129 ();
 sky130_fd_sc_hd__fill_4 FILL42_151 ();
 sky130_fd_sc_hd__fill_1 FILL42_155 ();
 sky130_fd_sc_hd__fill_4 FILL42_159 ();
 sky130_fd_sc_hd__fill_2 FILL42_163 ();
 sky130_fd_sc_hd__fill_8 FILL42_189 ();
 sky130_fd_sc_hd__fill_8 FILL42_197 ();
 sky130_fd_sc_hd__fill_1 FILL42_205 ();
 sky130_fd_sc_hd__fill_2 FILL42_21 ();
 sky130_fd_sc_hd__fill_8 FILL42_211 ();
 sky130_fd_sc_hd__fill_1 FILL42_219 ();
 sky130_fd_sc_hd__fill_2 FILL42_223 ();
 sky130_fd_sc_hd__fill_1 FILL42_225 ();
 sky130_fd_sc_hd__fill_1 FILL42_23 ();
 sky130_fd_sc_hd__fill_4 FILL42_246 ();
 sky130_fd_sc_hd__fill_8 FILL42_259 ();
 sky130_fd_sc_hd__fill_2 FILL42_267 ();
 sky130_fd_sc_hd__fill_1 FILL42_269 ();
 sky130_fd_sc_hd__fill_1 FILL42_31 ();
 sky130_fd_sc_hd__fill_1 FILL42_35 ();
 sky130_fd_sc_hd__fill_8 FILL42_39 ();
 sky130_fd_sc_hd__fill_1 FILL42_47 ();
 sky130_fd_sc_hd__fill_2 FILL42_51 ();
 sky130_fd_sc_hd__fill_1 FILL42_53 ();
 sky130_fd_sc_hd__fill_1 FILL42_78 ();
 sky130_fd_sc_hd__fill_4 FILL42_85 ();
 sky130_fd_sc_hd__fill_1 FILL42_89 ();
 sky130_fd_sc_hd__fill_2 FILL42_96 ();
 sky130_fd_sc_hd__fill_1 FILL42_98 ();
 sky130_fd_sc_hd__fill_8 FILL43_0 ();
 sky130_fd_sc_hd__fill_8 FILL43_102 ();
 sky130_fd_sc_hd__fill_8 FILL43_110 ();
 sky130_fd_sc_hd__fill_2 FILL43_118 ();
 sky130_fd_sc_hd__fill_1 FILL43_121 ();
 sky130_fd_sc_hd__fill_8 FILL43_135 ();
 sky130_fd_sc_hd__fill_8 FILL43_143 ();
 sky130_fd_sc_hd__fill_8 FILL43_151 ();
 sky130_fd_sc_hd__fill_2 FILL43_159 ();
 sky130_fd_sc_hd__fill_4 FILL43_16 ();
 sky130_fd_sc_hd__fill_1 FILL43_161 ();
 sky130_fd_sc_hd__fill_4 FILL43_169 ();
 sky130_fd_sc_hd__fill_1 FILL43_179 ();
 sky130_fd_sc_hd__fill_4 FILL43_185 ();
 sky130_fd_sc_hd__fill_4 FILL43_192 ();
 sky130_fd_sc_hd__fill_2 FILL43_196 ();
 sky130_fd_sc_hd__fill_1 FILL43_198 ();
 sky130_fd_sc_hd__fill_1 FILL43_20 ();
 sky130_fd_sc_hd__fill_4 FILL43_203 ();
 sky130_fd_sc_hd__fill_1 FILL43_207 ();
 sky130_fd_sc_hd__fill_1 FILL43_228 ();
 sky130_fd_sc_hd__fill_2 FILL43_237 ();
 sky130_fd_sc_hd__fill_1 FILL43_239 ();
 sky130_fd_sc_hd__fill_2 FILL43_24 ();
 sky130_fd_sc_hd__fill_2 FILL43_241 ();
 sky130_fd_sc_hd__fill_1 FILL43_243 ();
 sky130_fd_sc_hd__fill_8 FILL43_287 ();
 sky130_fd_sc_hd__fill_4 FILL43_295 ();
 sky130_fd_sc_hd__fill_1 FILL43_299 ();
 sky130_fd_sc_hd__fill_8 FILL43_301 ();
 sky130_fd_sc_hd__fill_2 FILL43_309 ();
 sky130_fd_sc_hd__fill_4 FILL43_33 ();
 sky130_fd_sc_hd__fill_8 FILL43_41 ();
 sky130_fd_sc_hd__fill_8 FILL43_49 ();
 sky130_fd_sc_hd__fill_2 FILL43_57 ();
 sky130_fd_sc_hd__fill_1 FILL43_59 ();
 sky130_fd_sc_hd__fill_8 FILL43_68 ();
 sky130_fd_sc_hd__fill_1 FILL43_76 ();
 sky130_fd_sc_hd__fill_2 FILL43_8 ();
 sky130_fd_sc_hd__fill_4 FILL44_0 ();
 sky130_fd_sc_hd__fill_4 FILL44_104 ();
 sky130_fd_sc_hd__fill_2 FILL44_108 ();
 sky130_fd_sc_hd__fill_1 FILL44_110 ();
 sky130_fd_sc_hd__fill_4 FILL44_121 ();
 sky130_fd_sc_hd__fill_1 FILL44_13 ();
 sky130_fd_sc_hd__fill_2 FILL44_144 ();
 sky130_fd_sc_hd__fill_2 FILL44_151 ();
 sky130_fd_sc_hd__fill_1 FILL44_160 ();
 sky130_fd_sc_hd__fill_4 FILL44_164 ();
 sky130_fd_sc_hd__fill_2 FILL44_168 ();
 sky130_fd_sc_hd__fill_4 FILL44_211 ();
 sky130_fd_sc_hd__fill_2 FILL44_215 ();
 sky130_fd_sc_hd__fill_1 FILL44_217 ();
 sky130_fd_sc_hd__fill_4 FILL44_224 ();
 sky130_fd_sc_hd__fill_2 FILL44_228 ();
 sky130_fd_sc_hd__fill_1 FILL44_230 ();
 sky130_fd_sc_hd__fill_8 FILL44_257 ();
 sky130_fd_sc_hd__fill_2 FILL44_268 ();
 sky130_fd_sc_hd__fill_2 FILL44_284 ();
 sky130_fd_sc_hd__fill_1 FILL44_286 ();
 sky130_fd_sc_hd__fill_4 FILL44_307 ();
 sky130_fd_sc_hd__fill_1 FILL44_4 ();
 sky130_fd_sc_hd__fill_1 FILL44_42 ();
 sky130_fd_sc_hd__fill_1 FILL44_48 ();
 sky130_fd_sc_hd__fill_8 FILL44_53 ();
 sky130_fd_sc_hd__fill_2 FILL44_61 ();
 sky130_fd_sc_hd__fill_1 FILL44_63 ();
 sky130_fd_sc_hd__fill_8 FILL44_67 ();
 sky130_fd_sc_hd__fill_8 FILL44_75 ();
 sky130_fd_sc_hd__fill_1 FILL44_8 ();
 sky130_fd_sc_hd__fill_4 FILL44_83 ();
 sky130_fd_sc_hd__fill_2 FILL44_87 ();
 sky130_fd_sc_hd__fill_1 FILL44_89 ();
 sky130_fd_sc_hd__fill_2 FILL44_91 ();
 sky130_fd_sc_hd__fill_8 FILL44_96 ();
 sky130_fd_sc_hd__fill_2 FILL45_0 ();
 sky130_fd_sc_hd__fill_8 FILL45_101 ();
 sky130_fd_sc_hd__fill_4 FILL45_113 ();
 sky130_fd_sc_hd__fill_2 FILL45_117 ();
 sky130_fd_sc_hd__fill_1 FILL45_119 ();
 sky130_fd_sc_hd__fill_2 FILL45_121 ();
 sky130_fd_sc_hd__fill_2 FILL45_153 ();
 sky130_fd_sc_hd__fill_1 FILL45_160 ();
 sky130_fd_sc_hd__fill_1 FILL45_172 ();
 sky130_fd_sc_hd__fill_4 FILL45_176 ();
 sky130_fd_sc_hd__fill_1 FILL45_181 ();
 sky130_fd_sc_hd__fill_4 FILL45_186 ();
 sky130_fd_sc_hd__fill_2 FILL45_190 ();
 sky130_fd_sc_hd__fill_2 FILL45_195 ();
 sky130_fd_sc_hd__fill_1 FILL45_197 ();
 sky130_fd_sc_hd__fill_1 FILL45_2 ();
 sky130_fd_sc_hd__fill_1 FILL45_201 ();
 sky130_fd_sc_hd__fill_8 FILL45_206 ();
 sky130_fd_sc_hd__fill_2 FILL45_214 ();
 sky130_fd_sc_hd__fill_2 FILL45_219 ();
 sky130_fd_sc_hd__fill_1 FILL45_221 ();
 sky130_fd_sc_hd__fill_1 FILL45_226 ();
 sky130_fd_sc_hd__fill_2 FILL45_232 ();
 sky130_fd_sc_hd__fill_8 FILL45_24 ();
 sky130_fd_sc_hd__fill_4 FILL45_241 ();
 sky130_fd_sc_hd__fill_2 FILL45_245 ();
 sky130_fd_sc_hd__fill_4 FILL45_250 ();
 sky130_fd_sc_hd__fill_2 FILL45_254 ();
 sky130_fd_sc_hd__fill_2 FILL45_259 ();
 sky130_fd_sc_hd__fill_2 FILL45_264 ();
 sky130_fd_sc_hd__fill_8 FILL45_290 ();
 sky130_fd_sc_hd__fill_2 FILL45_298 ();
 sky130_fd_sc_hd__fill_8 FILL45_301 ();
 sky130_fd_sc_hd__fill_2 FILL45_309 ();
 sky130_fd_sc_hd__fill_2 FILL45_32 ();
 sky130_fd_sc_hd__fill_4 FILL45_44 ();
 sky130_fd_sc_hd__fill_2 FILL45_48 ();
 sky130_fd_sc_hd__fill_1 FILL45_53 ();
 sky130_fd_sc_hd__fill_2 FILL45_58 ();
 sky130_fd_sc_hd__fill_4 FILL45_71 ();
 sky130_fd_sc_hd__fill_1 FILL45_87 ();
 sky130_fd_sc_hd__fill_2 FILL45_94 ();
 sky130_fd_sc_hd__fill_8 FILL46_0 ();
 sky130_fd_sc_hd__fill_1 FILL46_100 ();
 sky130_fd_sc_hd__fill_2 FILL46_12 ();
 sky130_fd_sc_hd__fill_8 FILL46_135 ();
 sky130_fd_sc_hd__fill_1 FILL46_14 ();
 sky130_fd_sc_hd__fill_4 FILL46_143 ();
 sky130_fd_sc_hd__fill_2 FILL46_147 ();
 sky130_fd_sc_hd__fill_1 FILL46_149 ();
 sky130_fd_sc_hd__fill_8 FILL46_151 ();
 sky130_fd_sc_hd__fill_2 FILL46_159 ();
 sky130_fd_sc_hd__fill_1 FILL46_161 ();
 sky130_fd_sc_hd__fill_8 FILL46_18 ();
 sky130_fd_sc_hd__fill_2 FILL46_207 ();
 sky130_fd_sc_hd__fill_1 FILL46_209 ();
 sky130_fd_sc_hd__fill_4 FILL46_26 ();
 sky130_fd_sc_hd__fill_2 FILL46_264 ();
 sky130_fd_sc_hd__fill_4 FILL46_271 ();
 sky130_fd_sc_hd__fill_2 FILL46_275 ();
 sky130_fd_sc_hd__fill_1 FILL46_277 ();
 sky130_fd_sc_hd__fill_8 FILL46_291 ();
 sky130_fd_sc_hd__fill_8 FILL46_299 ();
 sky130_fd_sc_hd__fill_4 FILL46_307 ();
 sky130_fd_sc_hd__fill_2 FILL46_52 ();
 sky130_fd_sc_hd__fill_1 FILL46_54 ();
 sky130_fd_sc_hd__fill_2 FILL46_76 ();
 sky130_fd_sc_hd__fill_1 FILL46_78 ();
 sky130_fd_sc_hd__fill_4 FILL46_8 ();
 sky130_fd_sc_hd__fill_1 FILL46_91 ();
 sky130_fd_sc_hd__fill_8 FILL47_0 ();
 sky130_fd_sc_hd__fill_4 FILL47_101 ();
 sky130_fd_sc_hd__fill_2 FILL47_105 ();
 sky130_fd_sc_hd__fill_1 FILL47_107 ();
 sky130_fd_sc_hd__fill_4 FILL47_114 ();
 sky130_fd_sc_hd__fill_2 FILL47_118 ();
 sky130_fd_sc_hd__fill_8 FILL47_121 ();
 sky130_fd_sc_hd__fill_1 FILL47_129 ();
 sky130_fd_sc_hd__fill_4 FILL47_133 ();
 sky130_fd_sc_hd__fill_8 FILL47_140 ();
 sky130_fd_sc_hd__fill_2 FILL47_159 ();
 sky130_fd_sc_hd__fill_1 FILL47_164 ();
 sky130_fd_sc_hd__fill_8 FILL47_168 ();
 sky130_fd_sc_hd__fill_4 FILL47_181 ();
 sky130_fd_sc_hd__fill_2 FILL47_185 ();
 sky130_fd_sc_hd__fill_1 FILL47_187 ();
 sky130_fd_sc_hd__fill_4 FILL47_19 ();
 sky130_fd_sc_hd__fill_4 FILL47_191 ();
 sky130_fd_sc_hd__fill_2 FILL47_195 ();
 sky130_fd_sc_hd__fill_1 FILL47_197 ();
 sky130_fd_sc_hd__fill_8 FILL47_211 ();
 sky130_fd_sc_hd__fill_8 FILL47_219 ();
 sky130_fd_sc_hd__fill_1 FILL47_227 ();
 sky130_fd_sc_hd__fill_2 FILL47_23 ();
 sky130_fd_sc_hd__fill_1 FILL47_241 ();
 sky130_fd_sc_hd__fill_8 FILL47_253 ();
 sky130_fd_sc_hd__fill_4 FILL47_261 ();
 sky130_fd_sc_hd__fill_1 FILL47_265 ();
 sky130_fd_sc_hd__fill_2 FILL47_297 ();
 sky130_fd_sc_hd__fill_1 FILL47_299 ();
 sky130_fd_sc_hd__fill_8 FILL47_301 ();
 sky130_fd_sc_hd__fill_2 FILL47_309 ();
 sky130_fd_sc_hd__fill_1 FILL47_32 ();
 sky130_fd_sc_hd__fill_4 FILL47_41 ();
 sky130_fd_sc_hd__fill_8 FILL47_52 ();
 sky130_fd_sc_hd__fill_1 FILL47_61 ();
 sky130_fd_sc_hd__fill_4 FILL47_69 ();
 sky130_fd_sc_hd__fill_1 FILL47_73 ();
 sky130_fd_sc_hd__fill_4 FILL47_8 ();
 sky130_fd_sc_hd__fill_8 FILL48_0 ();
 sky130_fd_sc_hd__fill_8 FILL48_103 ();
 sky130_fd_sc_hd__fill_8 FILL48_111 ();
 sky130_fd_sc_hd__fill_8 FILL48_119 ();
 sky130_fd_sc_hd__fill_2 FILL48_127 ();
 sky130_fd_sc_hd__fill_1 FILL48_129 ();
 sky130_fd_sc_hd__fill_1 FILL48_135 ();
 sky130_fd_sc_hd__fill_8 FILL48_151 ();
 sky130_fd_sc_hd__fill_8 FILL48_159 ();
 sky130_fd_sc_hd__fill_2 FILL48_167 ();
 sky130_fd_sc_hd__fill_2 FILL48_196 ();
 sky130_fd_sc_hd__fill_1 FILL48_198 ();
 sky130_fd_sc_hd__fill_8 FILL48_202 ();
 sky130_fd_sc_hd__fill_8 FILL48_211 ();
 sky130_fd_sc_hd__fill_8 FILL48_219 ();
 sky130_fd_sc_hd__fill_8 FILL48_227 ();
 sky130_fd_sc_hd__fill_8 FILL48_235 ();
 sky130_fd_sc_hd__fill_8 FILL48_243 ();
 sky130_fd_sc_hd__fill_4 FILL48_251 ();
 sky130_fd_sc_hd__fill_2 FILL48_271 ();
 sky130_fd_sc_hd__fill_4 FILL48_277 ();
 sky130_fd_sc_hd__fill_2 FILL48_281 ();
 sky130_fd_sc_hd__fill_1 FILL48_283 ();
 sky130_fd_sc_hd__fill_1 FILL48_29 ();
 sky130_fd_sc_hd__fill_8 FILL48_291 ();
 sky130_fd_sc_hd__fill_8 FILL48_299 ();
 sky130_fd_sc_hd__fill_4 FILL48_307 ();
 sky130_fd_sc_hd__fill_2 FILL48_31 ();
 sky130_fd_sc_hd__fill_2 FILL48_39 ();
 sky130_fd_sc_hd__fill_8 FILL48_53 ();
 sky130_fd_sc_hd__fill_4 FILL48_61 ();
 sky130_fd_sc_hd__fill_8 FILL48_68 ();
 sky130_fd_sc_hd__fill_2 FILL48_85 ();
 sky130_fd_sc_hd__fill_8 FILL48_95 ();
 sky130_fd_sc_hd__fill_8 FILL49_0 ();
 sky130_fd_sc_hd__fill_2 FILL49_115 ();
 sky130_fd_sc_hd__fill_1 FILL49_121 ();
 sky130_fd_sc_hd__fill_2 FILL49_125 ();
 sky130_fd_sc_hd__fill_2 FILL49_16 ();
 sky130_fd_sc_hd__fill_8 FILL49_168 ();
 sky130_fd_sc_hd__fill_4 FILL49_181 ();
 sky130_fd_sc_hd__fill_2 FILL49_185 ();
 sky130_fd_sc_hd__fill_1 FILL49_187 ();
 sky130_fd_sc_hd__fill_4 FILL49_191 ();
 sky130_fd_sc_hd__fill_2 FILL49_195 ();
 sky130_fd_sc_hd__fill_4 FILL49_208 ();
 sky130_fd_sc_hd__fill_1 FILL49_21 ();
 sky130_fd_sc_hd__fill_2 FILL49_212 ();
 sky130_fd_sc_hd__fill_1 FILL49_227 ();
 sky130_fd_sc_hd__fill_4 FILL49_244 ();
 sky130_fd_sc_hd__fill_1 FILL49_248 ();
 sky130_fd_sc_hd__fill_2 FILL49_260 ();
 sky130_fd_sc_hd__fill_8 FILL49_289 ();
 sky130_fd_sc_hd__fill_2 FILL49_297 ();
 sky130_fd_sc_hd__fill_1 FILL49_299 ();
 sky130_fd_sc_hd__fill_8 FILL49_301 ();
 sky130_fd_sc_hd__fill_2 FILL49_309 ();
 sky130_fd_sc_hd__fill_8 FILL49_43 ();
 sky130_fd_sc_hd__fill_2 FILL49_51 ();
 sky130_fd_sc_hd__fill_4 FILL49_56 ();
 sky130_fd_sc_hd__fill_1 FILL49_61 ();
 sky130_fd_sc_hd__fill_2 FILL49_73 ();
 sky130_fd_sc_hd__fill_1 FILL49_75 ();
 sky130_fd_sc_hd__fill_8 FILL49_8 ();
 sky130_fd_sc_hd__fill_4 FILL49_97 ();
 sky130_fd_sc_hd__fill_4 FILL4_107 ();
 sky130_fd_sc_hd__fill_2 FILL4_111 ();
 sky130_fd_sc_hd__fill_8 FILL4_136 ();
 sky130_fd_sc_hd__fill_2 FILL4_144 ();
 sky130_fd_sc_hd__fill_1 FILL4_154 ();
 sky130_fd_sc_hd__fill_2 FILL4_164 ();
 sky130_fd_sc_hd__fill_1 FILL4_166 ();
 sky130_fd_sc_hd__fill_1 FILL4_173 ();
 sky130_fd_sc_hd__fill_8 FILL4_177 ();
 sky130_fd_sc_hd__fill_8 FILL4_188 ();
 sky130_fd_sc_hd__fill_4 FILL4_196 ();
 sky130_fd_sc_hd__fill_1 FILL4_200 ();
 sky130_fd_sc_hd__fill_4 FILL4_217 ();
 sky130_fd_sc_hd__fill_1 FILL4_241 ();
 sky130_fd_sc_hd__fill_4 FILL4_266 ();
 sky130_fd_sc_hd__fill_2 FILL4_271 ();
 sky130_fd_sc_hd__fill_1 FILL4_273 ();
 sky130_fd_sc_hd__fill_2 FILL4_277 ();
 sky130_fd_sc_hd__fill_1 FILL4_279 ();
 sky130_fd_sc_hd__fill_8 FILL4_283 ();
 sky130_fd_sc_hd__fill_1 FILL4_29 ();
 sky130_fd_sc_hd__fill_8 FILL4_34 ();
 sky130_fd_sc_hd__fill_4 FILL4_45 ();
 sky130_fd_sc_hd__fill_4 FILL4_86 ();
 sky130_fd_sc_hd__fill_8 FILL4_91 ();
 sky130_fd_sc_hd__fill_8 FILL4_99 ();
 sky130_fd_sc_hd__fill_8 FILL50_0 ();
 sky130_fd_sc_hd__fill_2 FILL50_126 ();
 sky130_fd_sc_hd__fill_2 FILL50_148 ();
 sky130_fd_sc_hd__fill_4 FILL50_151 ();
 sky130_fd_sc_hd__fill_8 FILL50_16 ();
 sky130_fd_sc_hd__fill_1 FILL50_168 ();
 sky130_fd_sc_hd__fill_2 FILL50_208 ();
 sky130_fd_sc_hd__fill_4 FILL50_211 ();
 sky130_fd_sc_hd__fill_1 FILL50_215 ();
 sky130_fd_sc_hd__fill_2 FILL50_236 ();
 sky130_fd_sc_hd__fill_1 FILL50_24 ();
 sky130_fd_sc_hd__fill_8 FILL50_258 ();
 sky130_fd_sc_hd__fill_4 FILL50_266 ();
 sky130_fd_sc_hd__fill_2 FILL50_271 ();
 sky130_fd_sc_hd__fill_1 FILL50_29 ();
 sky130_fd_sc_hd__fill_8 FILL50_293 ();
 sky130_fd_sc_hd__fill_8 FILL50_301 ();
 sky130_fd_sc_hd__fill_2 FILL50_309 ();
 sky130_fd_sc_hd__fill_2 FILL50_37 ();
 sky130_fd_sc_hd__fill_8 FILL50_8 ();
 sky130_fd_sc_hd__fill_4 FILL50_81 ();
 sky130_fd_sc_hd__fill_2 FILL50_85 ();
 sky130_fd_sc_hd__fill_8 FILL51_0 ();
 sky130_fd_sc_hd__fill_8 FILL51_107 ();
 sky130_fd_sc_hd__fill_1 FILL51_115 ();
 sky130_fd_sc_hd__fill_1 FILL51_119 ();
 sky130_fd_sc_hd__fill_8 FILL51_121 ();
 sky130_fd_sc_hd__fill_8 FILL51_129 ();
 sky130_fd_sc_hd__fill_2 FILL51_137 ();
 sky130_fd_sc_hd__fill_8 FILL51_142 ();
 sky130_fd_sc_hd__fill_8 FILL51_151 ();
 sky130_fd_sc_hd__fill_8 FILL51_16 ();
 sky130_fd_sc_hd__fill_8 FILL51_162 ();
 sky130_fd_sc_hd__fill_8 FILL51_170 ();
 sky130_fd_sc_hd__fill_2 FILL51_178 ();
 sky130_fd_sc_hd__fill_8 FILL51_181 ();
 sky130_fd_sc_hd__fill_8 FILL51_189 ();
 sky130_fd_sc_hd__fill_2 FILL51_197 ();
 sky130_fd_sc_hd__fill_4 FILL51_203 ();
 sky130_fd_sc_hd__fill_2 FILL51_207 ();
 sky130_fd_sc_hd__fill_1 FILL51_209 ();
 sky130_fd_sc_hd__fill_4 FILL51_211 ();
 sky130_fd_sc_hd__fill_2 FILL51_215 ();
 sky130_fd_sc_hd__fill_8 FILL51_222 ();
 sky130_fd_sc_hd__fill_4 FILL51_230 ();
 sky130_fd_sc_hd__fill_1 FILL51_234 ();
 sky130_fd_sc_hd__fill_4 FILL51_24 ();
 sky130_fd_sc_hd__fill_8 FILL51_241 ();
 sky130_fd_sc_hd__fill_1 FILL51_249 ();
 sky130_fd_sc_hd__fill_8 FILL51_253 ();
 sky130_fd_sc_hd__fill_8 FILL51_261 ();
 sky130_fd_sc_hd__fill_1 FILL51_269 ();
 sky130_fd_sc_hd__fill_2 FILL51_271 ();
 sky130_fd_sc_hd__fill_1 FILL51_273 ();
 sky130_fd_sc_hd__fill_4 FILL51_277 ();
 sky130_fd_sc_hd__fill_2 FILL51_28 ();
 sky130_fd_sc_hd__fill_2 FILL51_281 ();
 sky130_fd_sc_hd__fill_8 FILL51_286 ();
 sky130_fd_sc_hd__fill_4 FILL51_294 ();
 sky130_fd_sc_hd__fill_2 FILL51_298 ();
 sky130_fd_sc_hd__fill_8 FILL51_301 ();
 sky130_fd_sc_hd__fill_2 FILL51_309 ();
 sky130_fd_sc_hd__fill_8 FILL51_31 ();
 sky130_fd_sc_hd__fill_8 FILL51_39 ();
 sky130_fd_sc_hd__fill_8 FILL51_47 ();
 sky130_fd_sc_hd__fill_4 FILL51_55 ();
 sky130_fd_sc_hd__fill_1 FILL51_59 ();
 sky130_fd_sc_hd__fill_8 FILL51_61 ();
 sky130_fd_sc_hd__fill_8 FILL51_72 ();
 sky130_fd_sc_hd__fill_8 FILL51_8 ();
 sky130_fd_sc_hd__fill_8 FILL51_80 ();
 sky130_fd_sc_hd__fill_2 FILL51_88 ();
 sky130_fd_sc_hd__fill_4 FILL51_91 ();
 sky130_fd_sc_hd__fill_8 FILL51_99 ();
 sky130_fd_sc_hd__fill_2 FILL5_0 ();
 sky130_fd_sc_hd__fill_2 FILL5_121 ();
 sky130_fd_sc_hd__fill_2 FILL5_138 ();
 sky130_fd_sc_hd__fill_1 FILL5_140 ();
 sky130_fd_sc_hd__fill_8 FILL5_145 ();
 sky130_fd_sc_hd__fill_2 FILL5_153 ();
 sky130_fd_sc_hd__fill_1 FILL5_17 ();
 sky130_fd_sc_hd__fill_1 FILL5_179 ();
 sky130_fd_sc_hd__fill_2 FILL5_190 ();
 sky130_fd_sc_hd__fill_1 FILL5_192 ();
 sky130_fd_sc_hd__fill_1 FILL5_2 ();
 sky130_fd_sc_hd__fill_1 FILL5_201 ();
 sky130_fd_sc_hd__fill_2 FILL5_238 ();
 sky130_fd_sc_hd__fill_8 FILL5_241 ();
 sky130_fd_sc_hd__fill_1 FILL5_249 ();
 sky130_fd_sc_hd__fill_2 FILL5_253 ();
 sky130_fd_sc_hd__fill_1 FILL5_255 ();
 sky130_fd_sc_hd__fill_4 FILL5_259 ();
 sky130_fd_sc_hd__fill_2 FILL5_263 ();
 sky130_fd_sc_hd__fill_1 FILL5_265 ();
 sky130_fd_sc_hd__fill_4 FILL5_27 ();
 sky130_fd_sc_hd__fill_4 FILL5_272 ();
 sky130_fd_sc_hd__fill_2 FILL5_276 ();
 sky130_fd_sc_hd__fill_2 FILL5_287 ();
 sky130_fd_sc_hd__fill_8 FILL5_301 ();
 sky130_fd_sc_hd__fill_2 FILL5_309 ();
 sky130_fd_sc_hd__fill_2 FILL5_31 ();
 sky130_fd_sc_hd__fill_1 FILL5_33 ();
 sky130_fd_sc_hd__fill_8 FILL5_49 ();
 sky130_fd_sc_hd__fill_2 FILL5_57 ();
 sky130_fd_sc_hd__fill_1 FILL5_59 ();
 sky130_fd_sc_hd__fill_8 FILL5_64 ();
 sky130_fd_sc_hd__fill_2 FILL5_72 ();
 sky130_fd_sc_hd__fill_8 FILL5_77 ();
 sky130_fd_sc_hd__fill_2 FILL5_85 ();
 sky130_fd_sc_hd__fill_1 FILL5_87 ();
 sky130_fd_sc_hd__fill_2 FILL5_9 ();
 sky130_fd_sc_hd__fill_4 FILL6_0 ();
 sky130_fd_sc_hd__fill_8 FILL6_120 ();
 sky130_fd_sc_hd__fill_4 FILL6_128 ();
 sky130_fd_sc_hd__fill_1 FILL6_132 ();
 sky130_fd_sc_hd__fill_2 FILL6_142 ();
 sky130_fd_sc_hd__fill_4 FILL6_155 ();
 sky130_fd_sc_hd__fill_2 FILL6_159 ();
 sky130_fd_sc_hd__fill_1 FILL6_161 ();
 sky130_fd_sc_hd__fill_8 FILL6_165 ();
 sky130_fd_sc_hd__fill_4 FILL6_173 ();
 sky130_fd_sc_hd__fill_1 FILL6_177 ();
 sky130_fd_sc_hd__fill_2 FILL6_208 ();
 sky130_fd_sc_hd__fill_2 FILL6_214 ();
 sky130_fd_sc_hd__fill_1 FILL6_220 ();
 sky130_fd_sc_hd__fill_4 FILL6_224 ();
 sky130_fd_sc_hd__fill_1 FILL6_238 ();
 sky130_fd_sc_hd__fill_8 FILL6_246 ();
 sky130_fd_sc_hd__fill_2 FILL6_25 ();
 sky130_fd_sc_hd__fill_4 FILL6_254 ();
 sky130_fd_sc_hd__fill_2 FILL6_258 ();
 sky130_fd_sc_hd__fill_1 FILL6_260 ();
 sky130_fd_sc_hd__fill_1 FILL6_269 ();
 sky130_fd_sc_hd__fill_1 FILL6_271 ();
 sky130_fd_sc_hd__fill_1 FILL6_292 ();
 sky130_fd_sc_hd__fill_2 FILL6_308 ();
 sky130_fd_sc_hd__fill_1 FILL6_310 ();
 sky130_fd_sc_hd__fill_1 FILL6_4 ();
 sky130_fd_sc_hd__fill_8 FILL6_51 ();
 sky130_fd_sc_hd__fill_4 FILL6_85 ();
 sky130_fd_sc_hd__fill_1 FILL6_89 ();
 sky130_fd_sc_hd__fill_2 FILL7_0 ();
 sky130_fd_sc_hd__fill_1 FILL7_10 ();
 sky130_fd_sc_hd__fill_2 FILL7_100 ();
 sky130_fd_sc_hd__fill_2 FILL7_112 ();
 sky130_fd_sc_hd__fill_2 FILL7_124 ();
 sky130_fd_sc_hd__fill_1 FILL7_129 ();
 sky130_fd_sc_hd__fill_8 FILL7_133 ();
 sky130_fd_sc_hd__fill_8 FILL7_141 ();
 sky130_fd_sc_hd__fill_4 FILL7_149 ();
 sky130_fd_sc_hd__fill_2 FILL7_153 ();
 sky130_fd_sc_hd__fill_1 FILL7_155 ();
 sky130_fd_sc_hd__fill_2 FILL7_159 ();
 sky130_fd_sc_hd__fill_4 FILL7_174 ();
 sky130_fd_sc_hd__fill_2 FILL7_178 ();
 sky130_fd_sc_hd__fill_8 FILL7_181 ();
 sky130_fd_sc_hd__fill_4 FILL7_192 ();
 sky130_fd_sc_hd__fill_1 FILL7_196 ();
 sky130_fd_sc_hd__fill_1 FILL7_2 ();
 sky130_fd_sc_hd__fill_8 FILL7_223 ();
 sky130_fd_sc_hd__fill_8 FILL7_231 ();
 sky130_fd_sc_hd__fill_1 FILL7_239 ();
 sky130_fd_sc_hd__fill_8 FILL7_241 ();
 sky130_fd_sc_hd__fill_8 FILL7_249 ();
 sky130_fd_sc_hd__fill_4 FILL7_257 ();
 sky130_fd_sc_hd__fill_2 FILL7_265 ();
 sky130_fd_sc_hd__fill_8 FILL7_270 ();
 sky130_fd_sc_hd__fill_2 FILL7_278 ();
 sky130_fd_sc_hd__fill_1 FILL7_280 ();
 sky130_fd_sc_hd__fill_8 FILL7_287 ();
 sky130_fd_sc_hd__fill_2 FILL7_295 ();
 sky130_fd_sc_hd__fill_8 FILL7_301 ();
 sky130_fd_sc_hd__fill_2 FILL7_309 ();
 sky130_fd_sc_hd__fill_2 FILL7_35 ();
 sky130_fd_sc_hd__fill_1 FILL7_37 ();
 sky130_fd_sc_hd__fill_2 FILL7_41 ();
 sky130_fd_sc_hd__fill_4 FILL7_46 ();
 sky130_fd_sc_hd__fill_1 FILL7_53 ();
 sky130_fd_sc_hd__fill_2 FILL7_57 ();
 sky130_fd_sc_hd__fill_1 FILL7_59 ();
 sky130_fd_sc_hd__fill_8 FILL7_61 ();
 sky130_fd_sc_hd__fill_2 FILL7_69 ();
 sky130_fd_sc_hd__fill_1 FILL7_71 ();
 sky130_fd_sc_hd__fill_2 FILL7_75 ();
 sky130_fd_sc_hd__fill_8 FILL7_80 ();
 sky130_fd_sc_hd__fill_8 FILL7_88 ();
 sky130_fd_sc_hd__fill_4 FILL7_96 ();
 sky130_fd_sc_hd__fill_2 FILL8_0 ();
 sky130_fd_sc_hd__fill_1 FILL8_10 ();
 sky130_fd_sc_hd__fill_1 FILL8_101 ();
 sky130_fd_sc_hd__fill_1 FILL8_131 ();
 sky130_fd_sc_hd__fill_4 FILL8_136 ();
 sky130_fd_sc_hd__fill_1 FILL8_140 ();
 sky130_fd_sc_hd__fill_4 FILL8_151 ();
 sky130_fd_sc_hd__fill_2 FILL8_155 ();
 sky130_fd_sc_hd__fill_4 FILL8_17 ();
 sky130_fd_sc_hd__fill_4 FILL8_177 ();
 sky130_fd_sc_hd__fill_1 FILL8_181 ();
 sky130_fd_sc_hd__fill_2 FILL8_185 ();
 sky130_fd_sc_hd__fill_2 FILL8_196 ();
 sky130_fd_sc_hd__fill_1 FILL8_198 ();
 sky130_fd_sc_hd__fill_2 FILL8_208 ();
 sky130_fd_sc_hd__fill_4 FILL8_211 ();
 sky130_fd_sc_hd__fill_2 FILL8_215 ();
 sky130_fd_sc_hd__fill_2 FILL8_220 ();
 sky130_fd_sc_hd__fill_1 FILL8_222 ();
 sky130_fd_sc_hd__fill_4 FILL8_24 ();
 sky130_fd_sc_hd__fill_2 FILL8_243 ();
 sky130_fd_sc_hd__fill_4 FILL8_262 ();
 sky130_fd_sc_hd__fill_1 FILL8_266 ();
 sky130_fd_sc_hd__fill_1 FILL8_271 ();
 sky130_fd_sc_hd__fill_2 FILL8_28 ();
 sky130_fd_sc_hd__fill_2 FILL8_289 ();
 sky130_fd_sc_hd__fill_1 FILL8_51 ();
 sky130_fd_sc_hd__fill_1 FILL8_58 ();
 sky130_fd_sc_hd__fill_2 FILL8_62 ();
 sky130_fd_sc_hd__fill_4 FILL8_67 ();
 sky130_fd_sc_hd__fill_1 FILL8_71 ();
 sky130_fd_sc_hd__fill_2 FILL8_75 ();
 sky130_fd_sc_hd__fill_4 FILL8_80 ();
 sky130_fd_sc_hd__fill_1 FILL8_91 ();
 sky130_fd_sc_hd__fill_8 FILL9_0 ();
 sky130_fd_sc_hd__fill_8 FILL9_102 ();
 sky130_fd_sc_hd__fill_4 FILL9_110 ();
 sky130_fd_sc_hd__fill_2 FILL9_117 ();
 sky130_fd_sc_hd__fill_1 FILL9_119 ();
 sky130_fd_sc_hd__fill_8 FILL9_121 ();
 sky130_fd_sc_hd__fill_8 FILL9_129 ();
 sky130_fd_sc_hd__fill_4 FILL9_160 ();
 sky130_fd_sc_hd__fill_1 FILL9_164 ();
 sky130_fd_sc_hd__fill_2 FILL9_201 ();
 sky130_fd_sc_hd__fill_4 FILL9_223 ();
 sky130_fd_sc_hd__fill_1 FILL9_227 ();
 sky130_fd_sc_hd__fill_1 FILL9_241 ();
 sky130_fd_sc_hd__fill_1 FILL9_262 ();
 sky130_fd_sc_hd__fill_1 FILL9_287 ();
 sky130_fd_sc_hd__fill_2 FILL9_301 ();
 sky130_fd_sc_hd__fill_4 FILL9_306 ();
 sky130_fd_sc_hd__fill_1 FILL9_310 ();
 sky130_fd_sc_hd__fill_4 FILL9_33 ();
 sky130_fd_sc_hd__fill_4 FILL9_55 ();
 sky130_fd_sc_hd__fill_1 FILL9_59 ();
 sky130_fd_sc_hd__fill_2 FILL9_61 ();
 sky130_fd_sc_hd__fill_1 FILL9_72 ();
 sky130_fd_sc_hd__fill_2 FILL9_8 ();
 sky130_fd_sc_hd__fill_8 FILL9_86 ();
 sky130_fd_sc_hd__fill_1 FILL9_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_0 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_1 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_2 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_3 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_4 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_6 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_7 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_8 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_10 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_54 ();
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_PCLK (.A(PCLK),
    .X(clknet_0_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_PCLK (.A(clknet_0_PCLK),
    .X(clknet_1_0__leaf_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_PCLK (.A(clknet_0_PCLK),
    .X(clknet_1_1__leaf_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_0_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_0_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_10_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_10_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_11_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_12_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_13_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_14_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_15_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_16_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_17_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_18_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_19_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_1_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_20_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_21_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_22_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_23_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_24_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_25_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_26_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_2_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_3_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_3_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_4_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_5_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_6_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_7_PCLK (.A(clknet_1_0__leaf_PCLK),
    .X(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_8_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_leaf_9_PCLK (.A(clknet_1_1__leaf_PCLK),
    .X(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_0__leaf_PCLK));
 sky130_fd_sc_hd__inv_6 clkload1 (.A(clknet_leaf_1_PCLK));
 sky130_fd_sc_hd__bufinv_16 clkload10 (.A(clknet_leaf_25_PCLK));
 sky130_fd_sc_hd__clkinvlp_4 clkload11 (.A(clknet_leaf_26_PCLK));
 sky130_fd_sc_hd__clkinv_2 clkload12 (.A(clknet_leaf_8_PCLK));
 sky130_fd_sc_hd__clkinv_1 clkload13 (.A(clknet_leaf_9_PCLK));
 sky130_fd_sc_hd__clkinv_2 clkload14 (.A(clknet_leaf_11_PCLK));
 sky130_fd_sc_hd__clkinv_1 clkload15 (.A(clknet_leaf_12_PCLK));
 sky130_fd_sc_hd__bufinv_16 clkload16 (.A(clknet_leaf_13_PCLK));
 sky130_fd_sc_hd__clkinv_4 clkload17 (.A(clknet_leaf_14_PCLK));
 sky130_fd_sc_hd__clkinvlp_4 clkload18 (.A(clknet_leaf_15_PCLK));
 sky130_fd_sc_hd__bufinv_16 clkload19 (.A(clknet_leaf_16_PCLK));
 sky130_fd_sc_hd__clkbuf_4 clkload2 (.A(clknet_leaf_2_PCLK));
 sky130_fd_sc_hd__clkinvlp_4 clkload20 (.A(clknet_leaf_17_PCLK));
 sky130_fd_sc_hd__bufinv_16 clkload21 (.A(clknet_leaf_18_PCLK));
 sky130_fd_sc_hd__clkinv_1 clkload22 (.A(clknet_leaf_19_PCLK));
 sky130_fd_sc_hd__bufinv_16 clkload23 (.A(clknet_leaf_20_PCLK));
 sky130_fd_sc_hd__clkinv_2 clkload24 (.A(clknet_leaf_21_PCLK));
 sky130_fd_sc_hd__clkinv_1 clkload3 (.A(clknet_leaf_4_PCLK));
 sky130_fd_sc_hd__clkinv_4 clkload4 (.A(clknet_leaf_5_PCLK));
 sky130_fd_sc_hd__inv_6 clkload5 (.A(clknet_leaf_6_PCLK));
 sky130_fd_sc_hd__inv_8 clkload6 (.A(clknet_leaf_7_PCLK));
 sky130_fd_sc_hd__clkinv_4 clkload7 (.A(clknet_leaf_22_PCLK));
 sky130_fd_sc_hd__clkinv_4 clkload8 (.A(clknet_leaf_23_PCLK));
 sky130_fd_sc_hd__clkinv_4 clkload9 (.A(clknet_leaf_24_PCLK));
 sky130_fd_sc_hd__buf_1 place10 (.A(\$abc$23333$new_n1528_ ),
    .X(net10));
 sky130_fd_sc_hd__buf_2 place11 (.A(\$abc$23333$new_n1593_ ),
    .X(net11));
 sky130_fd_sc_hd__buf_1 place12 (.A(\$abc$23333$new_n1447_ ),
    .X(net12));
 sky130_fd_sc_hd__buf_1 place13 (.A(\$abc$23333$new_n1385_ ),
    .X(net13));
 sky130_fd_sc_hd__buf_4 place14 (.A(\$abc$23333$new_n1107_ ),
    .X(net14));
 sky130_fd_sc_hd__buf_4 place15 (.A(\$abc$23333$new_n770_ ),
    .X(net15));
 sky130_fd_sc_hd__buf_4 place16 (.A(\$abc$23333$new_n1044_ ),
    .X(net16));
 sky130_fd_sc_hd__buf_4 place17 (.A(\$abc$23333$new_n1022_ ),
    .X(net17));
 sky130_fd_sc_hd__buf_1 place18 (.A(\u_shift.t_progress ),
    .X(net18));
 sky130_fd_sc_hd__buf_4 place19 (.A(\$abc$23333$new_n980_ ),
    .X(net19));
 sky130_fd_sc_hd__buf_2 place20 (.A(\$abc$23333$new_n979_ ),
    .X(net20));
 sky130_fd_sc_hd__buf_4 place21 (.A(\$abc$23333$new_n976_ ),
    .X(net21));
 assign sclk_pad_o = \u_clgen.clk_out ;
 assign mosi_pad_o = \u_shift.serial_out ;
endmodule
