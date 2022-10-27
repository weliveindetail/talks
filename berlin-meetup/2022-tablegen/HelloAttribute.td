//===- HelloAttributes.td - Tiny TableGen example ----------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

/// Attribute property base class.
class AttrProperty;

/// Can be used as function attribute.
def FnAttr : AttrProperty;
def FooAttr : AttrProperty;

/// Attribute base class.
class Attr<string S, list<AttrProperty> P> {
  // String representation of this attribute in the IR.
  string AttrString = S;
  list<AttrProperty> Properties = P;
}

/// Enum attribute.
class EnumAttr<string S, list<AttrProperty> P> : Attr<S, P>;

/// Int attribute.
class IntAttr<string S, list<AttrProperty> P> : Attr<S, P>;

/// Type attribute.
class TypeAttr<string S, list<AttrProperty> P> : Attr<S, P>;

/// StringBool attribute.
class StrBoolAttr<string S> : Attr<S, []>;

/// Function is required to make Forward Progress.
def MustProgress : EnumAttr<"mustprogress", [FnAttr]>;
def FOO : EnumAttr<"Foo", [FooAttr]>;

class CompatRule<string F> {
  // The name of the function called to check the attribute of the caller and
  // callee and decide whether inlining should be allowed. The function's
  // signature must match "bool(const Function&, const Function &)", where the
  // first parameter is the reference to the caller and the second parameter is
  // the reference to the callee. It must return false if the attributes of the
  // caller and callee are incompatible, and true otherwise.
  string CompatFunc = F;
}

class MergeRule<string F> {
  // The name of the function called to merge the attributes of the caller and
  // callee. The function's signature must match
  // "void(Function&, const Function &)", where the first parameter is the
  // reference to the caller and the second parameter is the reference to the
  // callee.
  string MergeFunc = F;
}

def : MergeRule<"setAND<MustProgressAttr>">;
