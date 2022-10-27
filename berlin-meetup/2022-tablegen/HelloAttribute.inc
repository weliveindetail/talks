#ifdef GET_ATTR_NAMES
#undef GET_ATTR_NAMES
#ifndef ATTRIBUTE_ALL
#define ATTRIBUTE_ALL(FIRST, SECOND)
#endif

#ifndef ATTRIBUTE_ENUM
#define ATTRIBUTE_ENUM(FIRST, SECOND) ATTRIBUTE_ALL(FIRST, SECOND)
#endif

ATTRIBUTE_ENUM(FOO,Foo)
ATTRIBUTE_ENUM(MustProgress,mustprogress)
#undef ATTRIBUTE_ENUM

#ifndef ATTRIBUTE_STRBOOL
#define ATTRIBUTE_STRBOOL(FIRST, SECOND) ATTRIBUTE_ALL(FIRST, SECOND)
#endif

#undef ATTRIBUTE_STRBOOL

#undef ATTRIBUTE_ALL
#endif

#ifdef GET_ATTR_ENUM
#undef GET_ATTR_ENUM
FirstEnumAttr = 1,
FOO = 1,
MustProgress = 2,
LastEnumAttr = 2,
FirstTypeAttr = 3,
LastTypeAttr = 2,
FirstIntAttr = 3,
LastIntAttr = 2,
#endif

#ifdef GET_ATTR_COMPAT_FUNC
#undef GET_ATTR_COMPAT_FUNC
static inline bool hasCompatibleFnAttrs(const Function &Caller,
                                        const Function &Callee) {
  bool Ret = true;


  return Ret;
}

static inline void mergeFnAttrs(Function &Caller,
                                const Function &Callee) {
  setAND<MustProgressAttr>(Caller, Callee);
}

#endif
#ifdef GET_ATTR_PROP_TABLE
#undef GET_ATTR_PROP_TABLE
static const uint8_t AttrPropTable[] = {
0 | AttributeProperty::FooAttr,
0 | AttributeProperty::FnAttr,
};
#endif
