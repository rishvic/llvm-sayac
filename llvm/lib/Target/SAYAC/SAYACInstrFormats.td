//===-- SAYACInstrFormats.td - SAYAC Instruction Formats -----*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

class InstSAYAC<dag outs, dag ins, string asmstr, list<dag> pattern,
             InstrItinClass itin = NoItinerary>
   : Instruction {
  field bits<16> Inst;

  field bits<16> SoftFail = 0; // Needed by disassembler.

  let Namespace = "SAYAC";
  let Size =  2;

  dag OutOperandList = outs;
  dag InOperandList = ins;
  let AsmString   = asmstr;
  let Pattern = pattern;

  let DecoderNamespace = "SAYAC";

  let Itinerary = itin;
}

class Pseudo<dag outs, dag ins, list<dag> pattern>
  : InstSAYAC<outs, ins, "", pattern> {
  let isCodeGenOnly       = 1;
  let isPseudo            = 1;
  let hasNoSchedulingInfo = 1;
}
 
// The formats follow the categories specified in the User Manual.

// Category: Logical and Arithmetic 

class F_LA<bits<4> func, dag outs, dag ins, string asmstr, list<dag> pattern,
            InstrItinClass itin = NoItinerary>
  : InstSAYAC<outs, ins, asmstr, pattern, itin> {
  bits<4>   rd; 
  let Inst{3-0} = rd;
  let Inst{15-12} = func;
}

// Format: LA instructions with 8 bit immediate value 
class F_LAI<bits<4> func, dag outs, dag ins, string asmstr, list<dag> pattern,
         InstrItinClass itin = NoItinerary>
   : F_LA<func,outs, ins, asmstr, pattern, itin> {
  bits<8> imm8;
  let Inst{11-4}  = imm8;
}

// Format: LA instructions with triadic register. 
class F_LAR<bits<4> func, dag outs, dag ins, string asmstr, list<dag> pattern,
         InstrItinClass itin = NoItinerary>
   : F_LA<func,outs, ins, asmstr, pattern, itin> {
  bits<4> rs1;
  bits<4> rs2;
  let Inst{7-4}  = rs1;
  let Inst{11-8}  = rs2;
}


// Category: Load/Store 

// Format: Load/Store 
class F_LS<bits<2> ex_func, dag outs, dag ins, string asmstr, list<dag> pattern,
                InstrItinClass itin = NoItinerary>
   : InstSAYAC<outs, ins, asmstr, pattern, itin> {
  bits<4>  rd;
  bits<4>  rs1;

  let Inst{3-0} = rd;
  let Inst{7-4} = rs1;
  let Inst{9-8} = ex_func;
  let Inst{15-12} = 0b0010;
}

// Format: Load
class F_Load<bits<2> ex_func,
               dag outs, dag ins, string asmstr, list<dag> pattern,
               InstrItinClass itin = NoItinerary>
   : F_LS<ex_func, outs, ins, asmstr, pattern, itin> {
  let Inst{11-10} = 0b00;
}

// Format: Store
class F_Store<bits<2> ex_func,
               dag outs, dag ins, string asmstr, list<dag> pattern,
               InstrItinClass itin = NoItinerary>
   : F_LS<ex_func, outs, ins, asmstr, pattern, itin> {
  let Inst{11-10} = 0b01;
}

class F_CH<bits<7> func,
               dag outs, dag ins, string asmstr, list<dag> pattern,
               InstrItinClass itin = NoItinerary>
   : InstSAYAC<outs, ins, asmstr, pattern, itin> {
  bits<4> rd;

  let Inst{15-9} = func;

  let Inst{3-0}  = rd;
}


// Category: Flow Controller

// Format: JMR/JMI

class F_JMR<bits<1> savepc, dag outs, dag ins, string asmstr, 
              list<dag> pattern, InstrItinClass itin = NoItinerary>
          : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<1> savepc;
    bits<4> rs1;
    bits<4> rd;

    let Inst{15-10} = 0b001010;
    let Inst{9} = savepc;
    let Inst{7-4} = rs1;
    let Inst{3-0} = rd;
}

class F_JMI<dag outs, dag ins, string asmstr, 
            list<dag> pattern, InstrItinClass itin = NoItinerary>
          : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<6> imm;
    bits<4> rd;

    let Inst{15-10} = 0b001111;
    let Inst{9-4} = imm;
    let Inst{3-0} = rd;
}

class F_BRANCH<bits<1> ex_func, bits<3> fib, dag outs, dag ins, string asmstr, 
           list<dag> pattern, InstrItinClass itin = NoItinerary>
          : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;

    let Inst{15-10}  = 0b111101;
    let Inst{9} = ex_func;
    let Inst{6-4} = fib;
    let Inst{3-0} = rd;
}

class F_COMPARE<bits<1> ex_func, dag outs, dag ins, string asmstr, 
           list<dag> pattern, InstrItinClass itin = NoItinerary>
          : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;

    let Inst{15-10}  = 0b111100;
    let Inst{9} = ex_func;
    let Inst{3-0} = rd;
}

class F_CMR<bits<1> ex_func, dag outs, dag ins, string asmstr, 
           list<dag> pattern, InstrItinClass itin = NoItinerary>
          : F_COMPARE<ex_func, outs, ins, asmstr, pattern, itin> {
    bits<4> rs;

    let Inst{7-4}  = rs;
}

class F_CMI<bits<1> ex_func, dag outs, dag ins, string asmstr, 
           list<dag> pattern, InstrItinClass itin = NoItinerary>
          : F_COMPARE<ex_func, outs, ins, asmstr, pattern, itin> {
    bits<5> imm;

    let Inst{8-4}  = imm;
}


// Format: Move

class F_MOV<bits<4> Opc, dag outs, dag ins, string asmstr,
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;
    bits<8> imm;
    let Inst{15-12} = Opc;
    let Inst{11-4} = imm;
    let Inst{3-0} = rd;
}


class F_MOV_Symbol<bits<4> Opc, dag outs, dag ins, string asmstr,
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;
    bits<8> d8;
    let Inst{15-12} = Opc;
    let Inst{11-4} = d8;
    let Inst{3-0} = rd;
}

//Format: Shift Immediate
class F_SHI<bits<1> ex_func, dag outs, dag ins, string asmstr,
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;
    bits<5> imm;
    let Inst{15-10} = 0b111110;
    let Inst{9} = ex_func;
    let Inst{8-4} = imm;
    let Inst{3-0} = rd;
}



//Format: Logical NOT
class F_NOT<bits<1> ex_func, dag outs, dag ins, string asmstr,
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : InstSAYAC<outs, ins, asmstr, pattern, itin> {
    bits<4> rd;
    let Inst{15-10} = 0b111111;
    let Inst{8} = ex_func;
    let Inst{3-0} = rd;
}

class F_NTR <bits<1> ex_func, dag outs, dag ins, string asmstr, 
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : F_NOT<ex_func, outs, ins, asmstr, pattern, itin> {
  bits<4> rs;
  let Inst{9} = 0b0;
  let Inst{7-4} = rs;
}

class F_NTD <bits<1> ex_func, dag outs, dag ins, string asmstr, 
            list<dag> pattern, InstrItinClass itin = NoItinerary>
            : F_NOT<ex_func, outs, ins, asmstr, pattern, itin> {
  let Inst{9} = 0b1;
}



