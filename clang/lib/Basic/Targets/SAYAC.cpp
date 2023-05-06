//===--- SAYAC.cpp - Implement SAYAC target feature support ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements SAYACTargetInfo objects.
//
//===----------------------------------------------------------------------===//

#include "SAYAC.h"
#include "clang/Basic/MacroBuilder.h"
#include "llvm/ADT/StringSwitch.h"

using namespace clang;
using namespace clang::targets;

const char *const SAYACTargetInfo::GCCRegNames[] = {
  // Integer registers
  "r0",  "r1",  "r2",  "r3",  "r4",  "r5",  "r6",  "r7",
  "r8",  "r9",  "r10", "r11", "r12", "r13", "r14", "r15"
};

const TargetInfo::GCCRegAlias GCCRegAliases[] = {
  {{"zero"}, "r0"}, {{"ra"}, "r1"},   {{"sp"}, "r2"},    {{"fp", "s0"}, "r3"},
  {{"s1"}, "r4"},   {{"s2"}, "r5"},   {{"s3"}, "r6"},    {{"a0"}, "r7"},
  {{"a1"}, "r8"},   {{"a2"}, "r9"},   {{"a3"}, "r10"},   {{"a4"}, "r11"},
  {{"t0"}, "r12"},  {{"t1"}, "r13"},  {{"t2"}, "r14"},   {{"flag"}, "r15"}
  };

ArrayRef<const char *> SAYACTargetInfo::getGCCRegNames() const {
  return llvm::makeArrayRef(GCCRegNames);
}

ArrayRef<TargetInfo::GCCRegAlias> SAYACTargetInfo::getGCCRegAliases() const {
  return llvm::makeArrayRef(GCCRegAliases);
}

void SAYACTargetInfo::getTargetDefines(const LangOptions &Opts,
                                       MacroBuilder &Builder) const {
  // Define the __SAYAC__ macro when building for this target
  Builder.defineMacro("__SAYAC__");
}