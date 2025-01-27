.class public Lch/qos/logback/classic/gaffer/ComponentDelegate;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ComponentDelegate.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private final component:Ljava/lang/Object;

.field private final fieldsToCascade:Ljava/util/List;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x5a

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 18

    const/4 v0, 0x0

    const-string/jumbo v1, "plus"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "toUpperCase"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v3, "getAt"

    aput-object v3, p0, v0

    const/4 v0, 0x3

    const-string v4, "getLabel"

    aput-object v4, p0, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "substring"

    aput-object v5, p0, v0

    const/4 v0, 0x5

    aput-object v4, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v3, p0, v0

    const/16 v0, 0x9

    aput-object v5, p0, v0

    const/16 v0, 0xa

    const-string v1, "nestingType"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v2, "NA"

    aput-object v2, p0, v0

    const/16 v0, 0xc

    const-string v5, "addError"

    aput-object v5, p0, v0

    const/16 v0, 0xd

    const-string v6, "getLabelFistLetterInUpperCase"

    aput-object v6, p0, v0

    const/16 v0, 0xe

    const-string v7, "getComponentName"

    aput-object v7, p0, v0

    const/16 v0, 0xf

    const-string v8, "canonicalName"

    aput-object v8, p0, v0

    const/16 v0, 0x10

    const-string v9, "getClass"

    aput-object v9, p0, v0

    const/16 v0, 0x11

    const-string v10, "analyzeArgs"

    aput-object v10, p0, v0

    const/16 v0, 0x12

    aput-object v3, p0, v0

    const/16 v0, 0x13

    aput-object v3, p0, v0

    const/16 v0, 0x14

    aput-object v3, p0, v0

    const/16 v0, 0x15

    const-string v10, "newInstance"

    aput-object v10, p0, v0

    const/16 v0, 0x16

    const-string v11, "hasProperty"

    aput-object v11, p0, v0

    const/16 v0, 0x17

    const-string v12, "context"

    aput-object v12, p0, v0

    const/16 v0, 0x18

    const-string v13, "<$constructor$>"

    aput-object v13, p0, v0

    const/16 v0, 0x19

    const-string v14, "cascadeFields"

    aput-object v14, p0, v0

    const/16 v0, 0x1a

    aput-object v12, p0, v0

    const/16 v0, 0x1b

    const-string v15, "injectParent"

    aput-object v15, p0, v0

    const/16 v0, 0x1c

    const-string v16, "DELEGATE_FIRST"

    aput-object v16, p0, v0

    const/16 v0, 0x1d

    const-string v17, "call"

    aput-object v17, p0, v0

    const/16 v0, 0x1e

    const-string v17, "notMarkedWithNoAutoStart"

    aput-object v17, p0, v0

    const/16 v0, 0x1f

    const-string/jumbo v17, "start"

    aput-object v17, p0, v0

    const/16 v0, 0x20

    const-string v17, "attach"

    aput-object v17, p0, v0

    const/16 v0, 0x21

    aput-object v5, p0, v0

    const/16 v0, 0x22

    aput-object v4, p0, v0

    const/16 v0, 0x23

    aput-object v7, p0, v0

    const/16 v0, 0x24

    aput-object v8, p0, v0

    const/16 v0, 0x25

    aput-object v9, p0, v0

    const/16 v0, 0x26

    aput-object v10, p0, v0

    const/16 v0, 0x27

    aput-object v11, p0, v0

    const/16 v0, 0x28

    aput-object v12, p0, v0

    const/16 v0, 0x29

    aput-object v13, p0, v0

    const/16 v0, 0x2a

    aput-object v14, p0, v0

    const/16 v0, 0x2b

    aput-object v12, p0, v0

    const/16 v0, 0x2c

    aput-object v15, p0, v0

    const/16 v0, 0x2d

    aput-object v16, p0, v0

    const/16 v0, 0x2e

    const-string v4, "call"

    aput-object v4, p0, v0

    const/16 v0, 0x2f

    const-string v4, "notMarkedWithNoAutoStart"

    aput-object v4, p0, v0

    const/16 v0, 0x30

    const-string/jumbo v4, "start"

    aput-object v4, p0, v0

    const/16 v0, 0x31

    aput-object v17, p0, v0

    const/16 v0, 0x32

    aput-object v5, p0, v0

    const/16 v0, 0x33

    aput-object v8, p0, v0

    const/16 v0, 0x34

    aput-object v9, p0, v0

    const/16 v0, 0x35

    const-string v4, "iterator"

    aput-object v4, p0, v0

    const/16 v0, 0x36

    const-string v4, "metaClass"

    aput-object v4, p0, v0

    const/16 v0, 0x37

    aput-object v11, p0, v0

    const/16 v0, 0x38

    aput-object v1, p0, v0

    const/16 v0, 0x39

    aput-object v2, p0, v0

    const/16 v0, 0x3a

    aput-object v5, p0, v0

    const/16 v0, 0x3b

    aput-object v6, p0, v0

    const/16 v0, 0x3c

    aput-object v7, p0, v0

    const/16 v0, 0x3d

    aput-object v8, p0, v0

    const/16 v0, 0x3e

    aput-object v9, p0, v0

    const/16 v0, 0x3f

    aput-object v17, p0, v0

    const/16 v0, 0x40

    const-string/jumbo v1, "size"

    aput-object v1, p0, v0

    const/16 v0, 0x41

    aput-object v5, p0, v0

    const/16 v0, 0x42

    aput-object v3, p0, v0

    const/16 v0, 0x43

    aput-object v3, p0, v0

    const/16 v0, 0x44

    const-string v2, "minus"

    aput-object v2, p0, v0

    const/16 v0, 0x45

    aput-object v3, p0, v0

    const/16 v0, 0x46

    const-string v2, "minus"

    aput-object v2, p0, v0

    const/16 v0, 0x47

    aput-object v1, p0, v0

    const/16 v0, 0x48

    const-string/jumbo v2, "parseClassArgument"

    aput-object v2, p0, v0

    const/16 v0, 0x49

    aput-object v3, p0, v0

    const/16 v0, 0x4a

    aput-object v1, p0, v0

    const/16 v0, 0x4b

    aput-object v2, p0, v0

    const/16 v0, 0x4c

    aput-object v1, p0, v0

    const/16 v0, 0x4d

    const-string/jumbo v4, "parseNameArgument"

    aput-object v4, p0, v0

    const/16 v0, 0x4e

    aput-object v3, p0, v0

    const/16 v0, 0x4f

    aput-object v2, p0, v0

    const/16 v0, 0x50

    aput-object v3, p0, v0

    const/16 v0, 0x51

    aput-object v1, p0, v0

    const/16 v0, 0x52

    const-string/jumbo v1, "parseNameArgument"

    aput-object v1, p0, v0

    const/16 v0, 0x53

    aput-object v2, p0, v0

    const/16 v0, 0x54

    aput-object v5, p0, v0

    const/16 v0, 0x55

    aput-object v8, p0, v0

    const/16 v0, 0x56

    aput-object v9, p0, v0

    const/16 v0, 0x57

    aput-object v5, p0, v0

    const/16 v0, 0x58

    aput-object v11, p0, v0

    const/16 v0, 0x59

    const-string v1, "name"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "component"    # Ljava/lang/Object;

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    move-object v0, p0

    .local v0, "this":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 28
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->fieldsToCascade:Ljava/util/List;

    invoke-virtual {v0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->metaClass:Lgroovy/lang/MetaClass;

    .line 31
    iput-object p1, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public varargs analyzeArgs([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 104
    .local v3, "closure":Lgroovy/lang/Closure;
    const/16 v4, 0x40

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareGreaterThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 104
    const/4 v8, 0x0

    .line 115
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 104
    const/4 v10, 0x1

    .line 114
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 104
    if-eqz v4, :cond_0

    .line 105
    const/16 v4, 0x41

    aget-object v0, v0, v4

    new-instance v4, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v8

    const-string v9, "At most 3 arguments allowed but you passed "

    const-string v11, ""

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v0, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v8

    aput-object v2, v0, v10

    aput-object v3, v0, v6

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    sget-boolean v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;->__$stMC:Z

    const/4 v12, -0x1

    if-nez v4, :cond_1

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgroovy/lang/Closure;

    if-eqz v4, :cond_3

    .line 110
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    const-class v13, Lgroovy/lang/Closure;

    invoke-static {v4, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgroovy/lang/Closure;

    .line 111
    const/16 v4, 0x46

    aget-object v4, v0, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {p1, v12}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v4, p1, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v12, [Ljava/lang/Object;

    invoke-static {v4, v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    const/16 v4, 0x42

    aget-object v4, v0, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, p1, v13}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgroovy/lang/Closure;

    if-eqz v4, :cond_2

    .line 110
    const/16 v4, 0x43

    aget-object v4, v0, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, p1, v13}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v13, Lgroovy/lang/Closure;

    invoke-static {v4, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgroovy/lang/Closure;

    .line 111
    const/16 v4, 0x44

    aget-object v4, v0, v4

    const/16 v13, 0x45

    aget-object v13, v0, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, p1, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v4, p1, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v12, [Ljava/lang/Object;

    invoke-static {v4, v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    :cond_2
    nop

    .line 114
    :cond_3
    :goto_0
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigInt()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;->__$stMC:Z

    if-nez v4, :cond_4

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x4a

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    const/16 v4, 0x4b

    aget-object v4, v0, v4

    invoke-static {p1, v8}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v4, p0, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    .line 114
    :cond_4
    const/16 v4, 0x47

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    const/16 v4, 0x48

    aget-object v4, v0, v4

    const/16 v12, 0x49

    aget-object v12, v0, v12

    invoke-interface {v12, p1, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v4, p0, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Class;

    :cond_5
    nop

    .line 118
    :cond_6
    :goto_1
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigInt()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;->__$stMC:Z

    if-nez v4, :cond_7

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x51

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 119
    const/16 v4, 0x52

    aget-object v4, v0, v4

    invoke-static {p1, v8}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 120
    const/16 v4, 0x53

    aget-object v0, v0, v4

    invoke-static {p1, v10}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    goto :goto_2

    .line 118
    :cond_7
    const/16 v4, 0x4c

    aget-object v4, v0, v4

    invoke-interface {v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 119
    const/16 v4, 0x4d

    aget-object v4, v0, v4

    const/16 v7, 0x4e

    aget-object v7, v0, v7

    invoke-interface {v7, p1, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 120
    const/16 v4, 0x4f

    aget-object v4, v0, v4

    const/16 v7, 0x50

    aget-object v0, v0, v7

    invoke-interface {v0, p1, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, p0, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    :cond_8
    nop

    .line 123
    :cond_9
    :goto_2
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v8

    aput-object v2, v0, v10

    aput-object v3, v0, v6

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cascadeFields(Lch/qos/logback/classic/gaffer/ComponentDelegate;)V
    .locals 10
    .param p1, "subDelegate"    # Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    .local v1, "k":Ljava/lang/String;
    const/16 v2, 0x35

    aget-object v2, v0, v2

    iget-object v3, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->fieldsToCascade:Ljava/util/List;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ljava/util/Iterator;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 79
    const-class v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    new-instance v4, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const-string v8, ""

    filled-new-array {v8, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v6, v9}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, p0, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getGroovyObjectProperty(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x36

    aget-object v6, v0, v6

    invoke-interface {v6, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v9, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    filled-new-array {v8, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v5, v7}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v4, v6, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "k":Ljava/lang/String;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    .end local p1    # "subDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    :cond_0
    return-void
.end method

.method public final getComponent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 147
    const/16 v1, 0x58

    aget-object v1, v0, v1

    iget-object v2, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x59

    aget-object v0, v0, v4

    iget-object v4, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "["

    const-string v3, "]"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0

    .line 150
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getFieldsToCascade()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->fieldsToCascade:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 34
    const-string v0, "component"

    return-object v0
.end method

.method public getLabelFistLetterInUpperCase()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 36
    sget-boolean v1, Lch/qos/logback/classic/gaffer/ComponentDelegate;->__$stMC:Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v1, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/16 v4, 0x8

    aget-object v4, v0, v4

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0x9

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v1, v0, v4

    aget-object v2, v0, v2

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v4, v0, v4

    const/4 v5, 0x5

    aget-object v0, v0, v5

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public injectParent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "subComponent"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 84
    const/16 v1, 0x37

    aget-object v0, v0, v1

    const-string/jumbo v1, "parent"

    invoke-interface {v0, p1, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    .end local p1    # "subComponent":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public methodMissing(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-class v1, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v2

    .line 39
    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-class v4, Lch/qos/logback/classic/gaffer/PropertyUtil;

    iget-object v5, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v7, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v8, v3

    check-cast v8, Lch/qos/logback/classic/gaffer/NestingType;

    .line 40
    .local v8, "nestingType":Lch/qos/logback/classic/gaffer/NestingType;
    const/16 v3, 0xb

    aget-object v3, v2, v3

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " of type ["

    const-string v5, " "

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    .line 41
    const/16 v1, 0xc

    aget-object v1, v2, v1

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v6, v10, [Ljava/lang/Object;

    const/16 v10, 0xd

    aget-object v10, v2, v10

    invoke-interface {v10, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v13

    const/16 v10, 0xe

    aget-object v10, v2, v10

    invoke-interface {v10, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v12

    const/16 v10, 0xf

    aget-object v10, v2, v10

    const/16 v12, 0x10

    aget-object v2, v2, v12

    iget-object v12, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v2, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v11

    aput-object v7, v6, v9

    const-string v2, ""

    const-string v9, "] has no appplicable ["

    const-string v10, "] property."

    filled-new-array {v2, v5, v4, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v6, v2}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    .local v3, "subComponentName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 47
    .local v14, "clazz":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 49
    .local v15, "closure":Lgroovy/lang/Closure;
    const/16 v16, 0x11

    aget-object v9, v2, v16

    move-object/from16 v10, p2

    invoke-interface {v9, v0, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/16 v17, 0x12

    aget-object v6, v2, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    .end local v3    # "subComponentName":Ljava/lang/String;
    .local v11, "subComponentName":Ljava/lang/String;
    const/16 v3, 0x13

    aget-object v3, v2, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v9, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/Class;

    const/16 v3, 0x14

    aget-object v3, v2, v3

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v9, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v6, Lgroovy/lang/Closure;

    invoke-static {v3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lgroovy/lang/Closure;

    .line 50
    .end local v15    # "closure":Lgroovy/lang/Closure;
    .local v9, "closure":Lgroovy/lang/Closure;
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v3

    const-string/jumbo v6, "resolveStrategy"

    const-string v12, "delegate"

    const-string v15, "name"

    const-string v13, "]"

    const-string v10, "] in "

    move-object/from16 v18, v4

    const-string v4, "No \'class\' argument specified for ["

    move-object/from16 v19, v4

    const-string v4, "context"

    if-eqz v3, :cond_8

    sget-boolean v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;->__$stMC:Z

    if-nez v3, :cond_8

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 51
    const/16 v3, 0x26

    aget-object v3, v2, v3

    invoke-interface {v3, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 52
    .local v10, "subComponent":Ljava/lang/Object;
    invoke-static {v11}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    aget-object v3, v2, v3

    invoke-interface {v3, v10, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 53
    const/4 v3, 0x0

    invoke-static {v11, v3, v10, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 55
    :goto_1
    instance-of v5, v10, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v5, :cond_3

    .line 56
    const/16 v5, 0x28

    aget-object v5, v2, v5

    invoke-interface {v5, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3, v10, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_3
    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    const/16 v3, 0x29

    aget-object v3, v2, v3

    invoke-interface {v3, v1, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    .line 61
    .local v3, "subDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    const/16 v5, 0x2a

    aget-object v5, v2, v5

    invoke-interface {v5, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 v5, 0x2b

    aget-object v5, v2, v5

    invoke-interface {v5, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 63
    const/16 v4, 0x2c

    aget-object v4, v2, v4

    invoke-interface {v4, v0, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v3, v1, v9, v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 65
    const/16 v4, 0x2d

    aget-object v4, v2, v4

    const-class v5, Lgroovy/lang/Closure;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1, v9, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 66
    const/16 v1, 0x2e

    aget-object v1, v2, v1

    invoke-interface {v1, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v3    # "subDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    :cond_4
    instance-of v1, v10, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_5

    const/16 v1, 0x2f

    aget-object v1, v2, v1

    const-class v3, Lch/qos/logback/core/joran/spi/NoAutoStartUtil;

    invoke-interface {v1, v3, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_6

    .line 69
    const/16 v1, 0x30

    aget-object v1, v2, v1

    invoke-interface {v1, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_6
    const/16 v1, 0x31

    aget-object v1, v2, v1

    const-class v2, Lch/qos/logback/classic/gaffer/PropertyUtil;

    iget-object v4, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    move-object v3, v8

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 73
    .end local v10    # "subComponent":Ljava/lang/Object;
    :cond_7
    const/16 v1, 0x32

    aget-object v1, v2, v1

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v4, v6

    invoke-virtual/range {p0 .. p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v4, v12

    invoke-virtual/range {p0 .. p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getComponentName()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v4, v12

    const/16 v6, 0x33

    aget-object v6, v2, v6

    const/16 v12, 0x34

    aget-object v2, v2, v12

    iget-object v12, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v2, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v4, v6

    move-object/from16 v6, v18

    move-object/from16 v2, v19

    filled-new-array {v2, v10, v5, v6, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 50
    :cond_8
    move-object/from16 v21, v18

    move-object/from16 v3, v19

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 51
    const/16 v3, 0x15

    aget-object v3, v2, v3

    invoke-interface {v3, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 52
    .restart local v10    # "subComponent":Ljava/lang/Object;
    invoke-static {v11}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x16

    aget-object v3, v2, v3

    invoke-interface {v3, v10, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_a

    .line 53
    const/4 v3, 0x0

    invoke-static {v11, v3, v10, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 52
    :cond_a
    const/4 v3, 0x0

    .line 55
    :goto_4
    instance-of v5, v10, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v5, :cond_b

    .line 56
    const/16 v5, 0x17

    aget-object v5, v2, v5

    invoke-interface {v5, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3, v10, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_b
    invoke-static {v9}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 59
    const/16 v3, 0x18

    aget-object v3, v2, v3

    invoke-interface {v3, v1, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    .line 61
    .restart local v3    # "subDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    const/16 v5, 0x19

    aget-object v5, v2, v5

    invoke-interface {v5, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 v5, 0x1a

    aget-object v5, v2, v5

    invoke-interface {v5, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 63
    const/16 v4, 0x1b

    aget-object v4, v2, v4

    invoke-interface {v4, v0, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v3, v1, v9, v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 65
    const/16 v4, 0x1c

    aget-object v4, v2, v4

    const-class v5, Lgroovy/lang/Closure;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1, v9, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 66
    const/16 v1, 0x1d

    aget-object v1, v2, v1

    invoke-interface {v1, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v3    # "subDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    :cond_c
    instance-of v1, v10, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_d

    const/16 v1, 0x1e

    aget-object v1, v2, v1

    const-class v3, Lch/qos/logback/core/joran/spi/NoAutoStartUtil;

    invoke-interface {v1, v3, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v12, 0x1

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_e

    .line 69
    const/16 v1, 0x1f

    aget-object v1, v2, v1

    invoke-interface {v1, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_e
    const/16 v1, 0x20

    aget-object v1, v2, v1

    const-class v2, Lch/qos/logback/classic/gaffer/PropertyUtil;

    iget-object v4, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    move-object v3, v8

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 73
    .end local v10    # "subComponent":Ljava/lang/Object;
    :cond_f
    const/16 v1, 0x21

    aget-object v1, v2, v1

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v4, v6

    const/16 v6, 0x22

    aget-object v6, v2, v6

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v4, v12

    const/16 v6, 0x23

    aget-object v6, v2, v6

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v4, v12

    const/16 v6, 0x24

    aget-object v6, v2, v6

    const/16 v12, 0x25

    aget-object v2, v2, v12

    iget-object v12, v0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v2, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v4, v6

    move-object/from16 v2, v19

    move-object/from16 v6, v21

    filled-new-array {v2, v10, v5, v6, v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    nop

    .end local v8    # "nestingType":Lch/qos/logback/classic/gaffer/NestingType;
    .end local v9    # "closure":Lgroovy/lang/Closure;
    .end local v11    # "subComponentName":Ljava/lang/String;
    .end local v14    # "clazz":Ljava/lang/Class;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "args":Ljava/lang/Object;
    :goto_7
    return-void
.end method

.method public parseClassArgument(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 127
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 128
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v0

    .line 129
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 130
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    const/16 v1, 0x54

    aget-object v1, v0, v1

    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x55

    aget-object v5, v0, v5

    const/16 v6, 0x56

    aget-object v0, v0, v6

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Unexpected argument type "

    const-string v4, ""

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v0
.end method

.method public parseNameArgument(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 138
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 139
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0

    .line 141
    :cond_0
    const/16 v1, 0x57

    aget-object v0, v0, v1

    const-string v1, "With 2 or 3 arguments, the first argument must be the component name, i.e of type string"

    invoke-interface {v0, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0
.end method

.method public propertyMissing(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 90
    const/16 v1, 0x38

    aget-object v1, v0, v1

    const-class v2, Lch/qos/logback/classic/gaffer/PropertyUtil;

    iget-object v3, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/gaffer/NestingType;

    check-cast v1, Lch/qos/logback/classic/gaffer/NestingType;

    .line 91
    .local v1, "nestingType":Lch/qos/logback/classic/gaffer/NestingType;
    const/16 v2, 0x39

    aget-object v2, v0, v2

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/16 v2, 0x3a

    aget-object v2, v0, v2

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x3b

    aget-object v6, v0, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x3c

    aget-object v6, v0, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3d

    aget-object v6, v0, v6

    const/16 v7, 0x3e

    aget-object v0, v0, v7

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    invoke-interface {v0, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object p1, v4, v0

    const-string v0, ""

    const-string v5, " "

    const-string v6, " of type ["

    const-string v7, "] has no appplicable ["

    const-string v8, "] property "

    filled-new-array {v0, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 95
    :cond_0
    const/16 v2, 0x3f

    aget-object v2, v0, v2

    const-class v3, Lch/qos/logback/classic/gaffer/PropertyUtil;

    iget-object v5, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->component:Ljava/lang/Object;

    move-object v4, v1

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/ComponentDelegate;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
