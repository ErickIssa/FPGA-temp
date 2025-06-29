module DE2_115(


   CLOCK_50,
   CLOCK2_50,
   CLOCK3_50,
   SMA_CLKIN,
   SMA_CLKOUT,


   LEDG,
   LEDR,

   KEY,

   EX_IO,

   SW,

   HEX0,
   HEX1,
   HEX2,
   HEX3,
   HEX4,
   HEX5,
   HEX6,
   HEX7,


   LCD_BLON,
   LCD_DATA,
   LCD_EN,
   LCD_ON,
   LCD_RS,
   LCD_RW,

   UART_CTS,
   UART_RTS,
   UART_RXD,
   UART_TXD,


   PS2_CLK,
   PS2_CLK2,
   PS2_DAT,
   PS2_DAT2,


   SD_CLK,
   SD_CMD,
   SD_DAT,
   SD_WP_N,


   VGA_B,
   VGA_BLANK_N,
   VGA_CLK,
   VGA_G,
   VGA_HS,
   VGA_R,
   VGA_SYNC_N,
   VGA_VS,

   //////////// Audio //////////
   AUD_ADCDAT,
   AUD_ADCLRCK,
   AUD_BCLK,
   AUD_DACDAT,
   AUD_DACLRCK,
   AUD_XCK,

   //////////// I2C for EEPROM //////////
   EEP_I2C_SCLK,
   EEP_I2C_SDAT,

   //////////// I2C for Audio Tv-Decoder HSMC  //////////
   I2C_SCLK,
   I2C_SDAT,

   //////////// Ethernet 0 //////////
   ENET0_GTX_CLK,
   ENET0_INT_N,
   ENET0_LINK100,
   ENET0_MDC,
   ENET0_MDIO,
   ENET0_RST_N,
   ENET0_RX_CLK,
   ENET0_RX_COL,
   ENET0_RX_CRS,
   ENET0_RX_DATA,
   ENET0_RX_DV,
   ENET0_RX_ER,
   ENET0_TX_CLK,
   ENET0_TX_DATA,
   ENET0_TX_EN,
   ENET0_TX_ER,
   ENETCLK_25,

   //////////// Ethernet 1 //////////
   ENET1_GTX_CLK,
   ENET1_INT_N,
   ENET1_LINK100,
   ENET1_MDC,
   ENET1_MDIO,
   ENET1_RST_N,
   ENET1_RX_CLK,
   ENET1_RX_COL,
   ENET1_RX_CRS,
   ENET1_RX_DATA,
   ENET1_RX_DV,
   ENET1_RX_ER,
   ENET1_TX_CLK,
   ENET1_TX_DATA,
   ENET1_TX_EN,
   ENET1_TX_ER,

   //////////// TV Decoder //////////
   TD_CLK27,
   TD_DATA,
   TD_HS,
   TD_RESET_N,
   TD_VS,

   //////////// USB 2.0 OTG //////////
   OTG_ADDR,
   OTG_CS_N,
   OTG_DACK_N,
   OTG_DATA,
   OTG_DREQ,
   OTG_FSPEED,
   OTG_INT,
   OTG_LSPEED,
   OTG_RD_N,
   OTG_RST_N,
   OTG_WE_N,

   //////////// IR Receiver //////////
   IRDA_RXD,

   //////////// SDRAM //////////
   DRAM_ADDR,
   DRAM_BA,
   DRAM_CAS_N,
   DRAM_CKE,
   DRAM_CLK,
   DRAM_CS_N,
   DRAM_DQ,
   DRAM_DQM,
   DRAM_RAS_N,
   DRAM_WE_N,

   //////////// SRAM //////////
   SRAM_ADDR,
   SRAM_CE_N,
   SRAM_DQ,
   SRAM_LB_N,
   SRAM_OE_N,
   SRAM_UB_N,
   SRAM_WE_N,

   //////////// Flash //////////
   FL_ADDR,
   FL_CE_N,
   FL_DQ,
   FL_OE_N,
   FL_RST_N,
   FL_RY,
   FL_WE_N,
   FL_WP_N,

   //////////// GPIO, GPIO connect to GPIO Default //////////
   GPIO,

   //////////// HSMC, HSMC connect to HSMC Default //////////
   HSMC_CLKIN_N1,
   HSMC_CLKIN_N2,
   HSMC_CLKIN_P1,
   HSMC_CLKIN_P2,
   HSMC_CLKIN0,
   HSMC_CLKOUT_N1,
   HSMC_CLKOUT_N2,
   HSMC_CLKOUT_P1,
   HSMC_CLKOUT_P2,
   HSMC_CLKOUT0,
   HSMC_D,
   HSMC_RX_D_N,
   HSMC_RX_D_P,
   HSMC_TX_D_N,
   HSMC_TX_D_P 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input                      CLOCK_50;
input                      CLOCK2_50;
input                      CLOCK3_50;

//////////// Sma //////////
input                      SMA_CLKIN;
output                     SMA_CLKOUT;

//////////// LED //////////
output           [8:0]     LEDG;
output          [17:0]     LEDR;

//////////// KEY //////////
input            [3:0]     KEY;

//////////// EX_IO //////////
inout            [6:0]     EX_IO;

//////////// SW //////////
input           [17:0]     SW;

//////////// SEG7 //////////
output           [6:0]     HEX0;
output           [6:0]     HEX1;
output           [6:0]     HEX2;
output           [6:0]     HEX3;
output           [6:0]     HEX4;
output           [6:0]     HEX5;
output           [6:0]     HEX6;
output           [6:0]     HEX7;

//////////// LCD //////////
output                     LCD_BLON;
inout            [7:0]     LCD_DATA;
output                     LCD_EN;
output                     LCD_ON;
output                     LCD_RS;
output                     LCD_RW;

//////////// RS232 //////////
output                     UART_CTS;
input                      UART_RTS;
input                      UART_RXD;
output                     UART_TXD;

//////////// PS2 for Keyboard and Mouse //////////
inout                      PS2_CLK;
inout                      PS2_CLK2;
inout                      PS2_DAT;
inout                      PS2_DAT2;

//////////// SDCARD //////////
output                     SD_CLK;
inout                      SD_CMD;
inout            [3:0]     SD_DAT;
input                      SD_WP_N;

//////////// VGA //////////
output           [7:0]     VGA_B;
output                     VGA_BLANK_N;
output                     VGA_CLK;
output           [7:0]     VGA_G;
output                     VGA_HS;
output           [7:0]     VGA_R;
output                     VGA_SYNC_N;
output                     VGA_VS;

//////////// Audio //////////
input                      AUD_ADCDAT;
inout                      AUD_ADCLRCK;
inout                      AUD_BCLK;
output                     AUD_DACDAT;
inout                      AUD_DACLRCK;
output                     AUD_XCK;

//////////// I2C for EEPROM //////////
output                     EEP_I2C_SCLK;
inout                      EEP_I2C_SDAT;

//////////// I2C for Audio Tv-Decoder HSMC  //////////
output                     I2C_SCLK;
inout                      I2C_SDAT;

//////////// Ethernet 0 //////////
output                     ENET0_GTX_CLK;
input                      ENET0_INT_N;
input                      ENET0_LINK100;
output                     ENET0_MDC;
inout                      ENET0_MDIO;
output                     ENET0_RST_N;
input                      ENET0_RX_CLK;
input                      ENET0_RX_COL;
input                      ENET0_RX_CRS;
input            [3:0]     ENET0_RX_DATA;
input                      ENET0_RX_DV;
input                      ENET0_RX_ER;
input                      ENET0_TX_CLK;
output           [3:0]     ENET0_TX_DATA;
output                     ENET0_TX_EN;
output                     ENET0_TX_ER;
input                      ENETCLK_25;

//////////// Ethernet 1 //////////
output                     ENET1_GTX_CLK;
input                      ENET1_INT_N;
input                      ENET1_LINK100;
output                     ENET1_MDC;
inout                      ENET1_MDIO;
output                     ENET1_RST_N;
input                      ENET1_RX_CLK;
input                      ENET1_RX_COL;
input                      ENET1_RX_CRS;
input            [3:0]     ENET1_RX_DATA;
input                      ENET1_RX_DV;
input                      ENET1_RX_ER;
input                      ENET1_TX_CLK;
output           [3:0]     ENET1_TX_DATA;
output                     ENET1_TX_EN;
output                     ENET1_TX_ER;

//////////// TV Decoder //////////
input                      TD_CLK27;
input            [7:0]     TD_DATA;
input                      TD_HS;
output                     TD_RESET_N;
input                      TD_VS;

//////////// USB 2.0 OTG //////////
output           [1:0]     OTG_ADDR;
output                     OTG_CS_N;
output           [1:0]     OTG_DACK_N;
inout           [15:0]     OTG_DATA;
input            [1:0]     OTG_DREQ;
inout                      OTG_FSPEED;
input            [1:0]     OTG_INT;
inout                      OTG_LSPEED;
output                     OTG_RD_N;
output                     OTG_RST_N;
output                     OTG_WE_N;

//////////// IR Receiver //////////
input                      IRDA_RXD;

//////////// SDRAM //////////
output          [12:0]     DRAM_ADDR;
output           [1:0]     DRAM_BA;
output                     DRAM_CAS_N;
output                     DRAM_CKE;
output                     DRAM_CLK;
output                     DRAM_CS_N;
inout           [31:0]     DRAM_DQ;
output           [3:0]     DRAM_DQM;
output                     DRAM_RAS_N;
output                     DRAM_WE_N;

//////////// SRAM //////////
output          [19:0]     SRAM_ADDR;
output                     SRAM_CE_N;
inout           [15:0]     SRAM_DQ;
output                     SRAM_LB_N;
output                     SRAM_OE_N;
output                     SRAM_UB_N;
output                     SRAM_WE_N;

//////////// Flash //////////
output          [22:0]     FL_ADDR;
output                     FL_CE_N;
inout            [7:0]     FL_DQ;
output                     FL_OE_N;
output                     FL_RST_N;
input                      FL_RY;
output                     FL_WE_N;
output                     FL_WP_N;

//////////// GPIO, GPIO connect to GPIO Default //////////
inout           [35:0]     GPIO;

//////////// HSMC, HSMC connect to HSMC Default //////////
input                      HSMC_CLKIN_N1;
input                      HSMC_CLKIN_N2;
input                      HSMC_CLKIN_P1;
input                      HSMC_CLKIN_P2;
input                      HSMC_CLKIN0;
output                     HSMC_CLKOUT_N1;
output                     HSMC_CLKOUT_N2;
output                     HSMC_CLKOUT_P1;
output                     HSMC_CLKOUT_P2;
output                     HSMC_CLKOUT0;
inout            [3:0]     HSMC_D;
inout           [16:0]     HSMC_RX_D_N;
inout           [16:0]     HSMC_RX_D_P;
inout           [16:0]     HSMC_TX_D_N;
inout           [16:0]     HSMC_TX_D_P;


//=======================================================
//  REG/WIRE declarations
//=======================================================

wire clock, reset, antReg;
wire [17:0] ledsReg;
reg [4:0] readFPGA_;
wire [31:0] regFPGA_;
wire [31:0] pc;
reg [4:0] i;
wire testeB;

//=======================================================
//  Structural coding
//=======================================================


assign clock = ~KEY[0];
assign reset = ~KEY[1];

assign antReg = SW[0];

always @(posedge ~KEY[2]) begin
	if (reset) readFPGA_ <= 0;
	else if (antReg) readFPGA_ <= readFPGA_ - 1;
	else readFPGA_ <= readFPGA_ + 1;
end

assign LEDR = regFPGA_[17:0];
assign LEDG[4:0] = readFPGA_[4:0];

data_path dp(clock, reset, pc, readFPGA_, regFPGA_);

seg7 seg7_7(pc[7], pc[6], pc[5], pc[4], HEX7[0], HEX7[1], HEX7[2],
   HEX7[3], HEX7[4], HEX7[5], HEX7[6]);

seg7 seg7_6(pc[3], pc[2], pc[1], pc[0], HEX6[0], HEX6[1], HEX6[2],
   HEX6[3], HEX6[4], HEX6[5], HEX6[6]);
 
seg7 seg7_5(0, 0, 0, readFPGA_[4], 
   HEX5[0], HEX5[1], HEX5[2], HEX5[3], HEX5[4], HEX5[5], HEX5[6]);
	
seg7 seg7_4(readFPGA_[3], readFPGA_[2], readFPGA_[1], readFPGA_[0], 
   HEX4[0], HEX4[1], HEX4[2], HEX4[3], HEX4[4], HEX4[5], HEX4[6]);
 	
seg7 seg7_3(regFPGA_[15], regFPGA_[14], regFPGA_[13], regFPGA_[12], 
   HEX3[0], HEX3[1], HEX3[2], HEX3[3], HEX3[4], HEX3[5], HEX3[6]);

seg7 seg7_2(regFPGA_[11], regFPGA_[10], regFPGA_[9], regFPGA_[8], 
   HEX2[0], HEX2[1], HEX2[2], HEX2[3], HEX2[4], HEX2[5], HEX2[6]);

seg7 seg7_1(regFPGA_[7], regFPGA_[6], regFPGA_[5], regFPGA_[4], 
   HEX1[0], HEX1[1], HEX1[2], HEX1[3], HEX1[4], HEX1[5], HEX1[6]);

seg7 seg7_0(regFPGA_[3], regFPGA_[2], regFPGA_[1], regFPGA_[0], 
   HEX0[0], HEX0[1], HEX0[2], HEX0[3], HEX0[4], HEX0[5], HEX0[6]);

endmodule

module data_path(clockDP, resetDP, pc, readFPGA, regFPGA);
   input clockDP, resetDP;
   output [31:0] regFPGA, pc;
   input [4:0] readFPGA;
   wire [31:0] pcInDP, pcOutDP, instructionDP, immGenOutDP, add4OutDP,
   addBranchDP, readData1DP, readData2DP, muxAluOutDP, aluOutDP, readMemDP, writeRegDataDP;
   wire branchDP, memReadDP, memToRegDP, memWriteDP, aluSrcDP, regWriteDP,
   aluZeroDP, andOutDP;
   wire [1:0] aluOpDP;
   wire [3:0] aluCtrlDP;
   wire [3:0] f3f7AluCtrlDP;
   
   assign pc = pcOutDP;
   assign f3f7AluCtrlDP = {instructionDP[30], instructionDP[14:12]};
	assign branchTaken = (instructionDP[14:12] == 3'b000) ? (branchDP & aluZeroDP) :
                         (instructionDP[14:12] == 3'b001) ? (branchDP & ~aluZeroDP) : // bne
                         1'b0;

   pc pcDP(pcInDP, pcOutDP, clockDP, resetDP);
   instructionMemory insMem(clockDP, pcOutDP, instructionDP);
   Control ctrlDP(instructionDP[6:0], branchDP, memReadDP, memToRegDP, aluOpDP,
      memWriteDP, aluSrcDP, regWriteDP);
   Reg_mem regMem(clockDP, resetDP, regWriteDP, instructionDP[19:15], instructionDP[24:20], readFPGA,
      instructionDP[11:7], writeRegDataDP, readData1DP, readData2DP, regFPGA);
   immGen immGen(instructionDP, immGenOutDP);
   Alu_control Alu_control(f3f7AluCtrlDP, aluOpDP, aluCtrlDP);
   somador add4(32'h4, pcOutDP, add4OutDP);
   somador addBranch(pcOutDP, immGenOutDP, addBranchDP);
   alu alu(readData1DP, muxAluOutDP, aluCtrlDP, aluOutDP, aluZeroDP);
   data_mem dataMem(clockDP, memReadDP, memWriteDP, aluOutDP, readData2DP, readMemDP);
   mux2In muxAdds(add4OutDP, addBranchDP, pcInDP, branchTaken);
   mux2In muxAlu(readData2DP, immGenOutDP, muxAluOutDP, aluSrcDP);
   mux2In muxDataMem(aluOutDP, readMemDP, writeRegDataDP, memToRegDP);
endmodule

module somador(a, b, out);
   input[31:0] a, b;
   output[31:0] out;
   assign out = a + b;
endmodule

module alu(aluInput1, aluInput2, aluControlAlu, aluResultAlu, zeroAlu);
   input [31:0] aluInput1, aluInput2;
   input [3:0] aluControlAlu;
   output reg [31:0] aluResultAlu;
   output zeroAlu;

   assign zeroAlu = (aluResultAlu == 0) ? 1 : 0;

   always @(*)
   begin
      case (aluControlAlu)
          4'b0010: aluResultAlu <= aluInput1 + aluInput2; // somador
            4'b0110: aluResultAlu <= aluInput1 - aluInput2; // sub
            4'b0011: aluResultAlu <= aluInput1 ^ aluInput2; // xor
            4'b0100: aluResultAlu <= aluInput1 >> aluInput2;
            4'b0101: aluResultAlu <= aluInput1 << aluInput2; // sll
            default: aluResultAlu <= 31'bx;
      endcase
   end
endmodule

module Alu_control(f3f7ACtrl, aluOpACtrl, aluCtrlACtrl);
   output reg [3:0] aluCtrlACtrl;
   input [1:0] aluOpACtrl;
   input [3:0] f3f7ACtrl;
   wire funct7ACtrl;
   wire [2:0] funct3ACtrl;

   assign funct7ACtrl = f3f7ACtrl[3];
   assign funct3ACtrl = f3f7ACtrl[2:0];

   always @(*)
   begin
      case (aluOpACtrl)
           2'b00: aluCtrlACtrl <= 4'b0010; // 00 - somador (addi, lw, sw)
            2'b01: aluCtrlACtrl <= 4'b0110; // 01 - sub (beq, bne)
            2'b10: begin
                case (funct3ACtrl)
                    3'b000: aluCtrlACtrl <= (funct7ACtrl) ? 4'b0110 : 4'b0010; // sub ou somador
                    3'b100: aluCtrlACtrl <= 4'b0011; // xor
                    3'b101: aluCtrlACtrl <= 4'b0100; // srl
                    3'b001: aluCtrlACtrl <= 4'b0101; // sll
                    default: aluCtrlACtrl <= 4`bxxxx;
                endcase
         end
      endcase
   end
endmodule

module Control(instructionCtrl, BranchCtrl, MemReadCtrl, MemToRegCtrl,
            ALUOpCtrl, MemWriteCtrl, ALUSrcCtrl, RegWriteCtrl);
   input [6:0] instructionCtrl;
   output BranchCtrl, MemReadCtrl, MemToRegCtrl, MemWriteCtrl, ALUSrcCtrl, RegWriteCtrl;
   output [1:0] ALUOpCtrl;
   reg [7:0] outputCtrl;
   assign {ALUSrcCtrl, MemToRegCtrl, RegWriteCtrl, MemReadCtrl, MemWriteCtrl, BranchCtrl, ALUOpCtrl} = outputCtrl;

   always @(instructionCtrl)
   begin
      case (instructionCtrl)
         7'b0000011: outputCtrl <= 8'b11110000; // lw
            7'b0100011: outputCtrl <= 8'b10001000; // sw
            7'b0110011: outputCtrl <= 8'b00100010; // R-type (somador/sub/xor)
            7'b0010011: outputCtrl <= 8'b10100000; // addi
            7'b1100011: outputCtrl <= 8'b00000101; // bne
            default:    outputCtrl <= 8'bxxxxxxxx;
      endcase
   end
endmodule

module data_mem(clock, memReadDM, memWriteDM, addressDM, writeDataDM, readDataDM);
   input clock, memReadDM, memWriteDM;
   input [31:0] addressDM, writeDataDM;
   output reg [31:0] readDataDM;
   reg [31:0] memoriaDeDados [0:512];

   always @(*)
   begin
      if (memReadDM) readDataDM = memoriaDeDados[addressDM[31:2]];
   end

   always @(negedge clock)
   begin
      if (memWriteDM) memoriaDeDados[addressDM[31:2]] <= writeDataDM;
   end
endmodule

module immGen(instructionImmGen, immediateImmGen);
   input [31:0] instructionImmGen;
   output reg [31:0] immediateImmGen;

   always @(instructionImmGen)
   begin
      case (instructionImmGen[6:0])
         7'b0000011: immediateImmGen <= {{21{instructionImmGen[31]}}, instructionImmGen[30:20]}; // lw - I
         7'b0100011: immediateImmGen <= {{21{instructionImmGen[31]}}, instructionImmGen[30:25], instructionImmGen[11:7]}; // sw - S
         7'b0010011: immediateImmGen <= {{21{instructionImmGen[31]}}, instructionImmGen[30:20]}; // addi - I
         7'b1100011: immediateImmGen <= {{20{instructionImmGen[31]}}, instructionImmGen[7], instructionImmGen[30:25], instructionImmGen[11:8], {1{1'b0}}}; // bne - SB
         default: immediateImmGen <= 32'bx;
      endcase
   end
endmodule

module instructionMemory(clock, readAddress, instruction);
   input clock;
   input [31:0] readAddress;
   output reg [31:0] instruction;
   reg [31:0] memoriaIns [15:0];

   always @(posedge clock)
   begin
	memoriaIns[0] <= 32'b00000000101000000000000010010011;
      memoriaIns[1] <= 32'b00000001010000000000000100010011;
      memoriaIns[2] <= 32'b00000110010000000000000110010011;
      memoriaIns[3] <= 32'b00000000000100011010000000100011;
      memoriaIns[4] <= 32'b00000000000000011010000100000011;
      memoriaIns[5] <= 32'b00000000010100010000000100010011;
      memoriaIns[6] <= 32'b00000000001000011010001000100011;
      memoriaIns[7] <= 32'b00000000010000011010000010000011;
      memoriaIns[8] <= 32'b00000000001000001001010001100011;
      memoriaIns[9] <= 32'b00000001010000000000000110010011;
      memoriaIns[10] <= 32'b00000001010000000000001000010011;
      memoriaIns[11] <= 32'b00000000010000001100001010110011;
      memoriaIns[12] <= 32'b00000000011100001001001100110011;
      memoriaIns[13] <= 32'b00000000101000000000000010010011;
      memoriaIns[14] <= 32'b00000000101000000000000010010011;
      memoriaIns[15] <= 32'b00000000101000000000000010010011;
   end
   
   always @(readAddress)
   begin
      if (readAddress === 32'bx) begin
         instruction = 32'bx;
      end
      else begin
         instruction = memoriaIns[readAddress / 4];
      end
   end
endmodule

module mux2In(input1, input2, out, ctrl);
   input [31:0] input1, input2;
   output [31:0] out;
   input ctrl;

   assign out = (ctrl == 1'b0) ? input1 : input2;
endmodule

module pc(pcIn, pcOut, clock, reset);
   input [31:0] pcIn;
   input clock, reset;
   output [31:0] pcOut;
   reg [31:0] pcOut;
   
   always @(posedge clock)
      if (reset) pcOut <= 32'b0;
      else pcOut <= pcIn;
endmodule


module Reg_mem(
   clock, reset, regWrite, readReg1, readReg2, readFPGA, writeRegId, writeData,
   readData1, readData2, regFPGA
);
   input clock, regWrite, reset;
   input [4:0] readReg1, readReg2, writeRegId, readFPGA;
   input [31:0] writeData;
   output reg [31:0] readData1, readData2, regFPGA;
   reg [31:0] registradores [0:31];

   always @(posedge clock or posedge reset) begin
      if (reset) begin
         registradores[0] <= 0;
         registradores[1] <= 0;
         registradores[2] <= 0;
         registradores[3] <= 0;
         registradores[4] <= 0;
         registradores[5] <= 0;
         registradores[6] <= 0;
         registradores[7] <= 0;
         registradores[8] <= 0;
         registradores[9] <= 0;
         registradores[10] <= 0;
         registradores[11] <= 0;
         registradores[12] <= 0;
         registradores[13] <= 0;
         registradores[15] <= 0;
         registradores[16] <= 0;
         registradores[17] <= 0;
         registradores[18] <= 0;
         registradores[19] <= 0;
         registradores[20] <= 0;
         registradores[21] <= 0;
         registradores[22] <= 0;
         registradores[23] <= 0;
         registradores[24] <= 0;
         registradores[25] <= 0;
         registradores[26] <= 0;
         registradores[27] <= 0;
         registradores[28] <= 0;
         registradores[29] <= 0;
         registradores[30] <= 0;
         registradores[31] <= 0;
      end
      else if (regWrite == 1 & writeRegId != 0) registradores[writeRegId] <= writeData;
   end

   //always @(registradores[0]) registradores[0] <= 0;

   always @(readReg1, registradores[readReg1]) 
   begin
      readData1 <= registradores[readReg1];
   end

   always @(readReg2, registradores[readReg1])
   begin
      readData2 <= registradores[readReg2];
   end
    
    always @(readFPGA, registradores[readFPGA]) 
   begin
      regFPGA <= registradores[readFPGA];
   end
endmodule

module seg7(a, b, c, d, s0, s1, s2, s3, s4, s5, s6);
   input a, b, c, d;
   output s0, s1, s2, s3, s4, s5, s6;

   wire a_n, b_n, c_n, d_n;
   assign a_n = ~a;
   assign b_n = ~b;
   assign c_n = ~c;
   assign d_n = ~d;

   assign s0 = ~((b_n & d_n) | (a_n & c) | (b & c) | (a & d_n) | (a_n & b & d) | (a & b_n & c_n));
   assign s1 = ~((a_n & b_n) | (b_n & d_n) | (a_n & c_n & d_n) | (a_n & c & d) | (a & c_n & d));
   assign s2 = ~((a_n & c_n) | (a_n & d) | (c_n & d) | (a_n & b) | (a & b_n));
   assign s3 = ~((a_n & b_n & d_n) | (b_n & c & d) | (b & c_n & d) | (b & c & d_n) | (a & c_n & d_n));
   assign s4 = ~((b_n & d_n) | (c & d_n) | (a & c) | (a & b));
   assign s5 = ~((c_n & d_n) | (a_n & b) | (b & c) | (a & b_n));
   assign s6 = ~((b_n & c) | (c & d_n) | (a & b_n) | (a & d) | (a_n & b & c_n));
endmodule
