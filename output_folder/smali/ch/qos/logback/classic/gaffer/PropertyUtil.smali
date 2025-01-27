.class public Lch/qos/logback/classic/gaffer/PropertyUtil;
.super Ljava/lang/Object;
.source "PropertyUtil.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/PropertyUtil;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const-string/jumbo v1, "upperCaseFirstLetter"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "respondsTo"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v2, "metaClass"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "toLowerCamelCase"

    aput-object v2, p0, v0

    const/4 v0, 0x4

    const-string v3, "hasProperty"

    aput-object v3, p0, v0

    const/4 v0, 0x5

    const-string v4, "followsTheValueOfConvention"

    aput-object v4, p0, v0

    const/4 v0, 0x6

    const-string v4, "getType"

    aput-object v4, p0, v0

    const/4 v0, 0x7

    const-string v5, "SINGLE_WITH_VALUE_OF_CONVENTION"

    aput-object v5, p0, v0

    const/16 v0, 0x8

    const-string v6, "SINGLE"

    aput-object v6, p0, v0

    const/16 v0, 0x9

    const-string v7, "hasAdderMethod"

    aput-object v7, p0, v0

    const/16 v0, 0xa

    const-string v7, "AS_COLLECTION"

    aput-object v7, p0, v0

    const/16 v0, 0xb

    const-string v8, "NA"

    aput-object v8, p0, v0

    const/16 v0, 0xc

    aput-object v2, p0, v0

    const/16 v0, 0xd

    aput-object v3, p0, v0

    const/16 v0, 0xe

    const-string v3, "getValueOfMethod"

    aput-object v3, p0, v0

    const/16 v0, 0xf

    aput-object v4, p0, v0

    const/16 v0, 0x10

    const-string v3, "invoke"

    aput-object v3, p0, v0

    const/16 v0, 0x11

    aput-object v5, p0, v0

    const/16 v0, 0x12

    aput-object v2, p0, v0

    const/16 v0, 0x13

    const-string v3, "convertByValueMethod"

    aput-object v3, p0, v0

    const/16 v0, 0x14

    aput-object v6, p0, v0

    const/16 v0, 0x15

    aput-object v2, p0, v0

    const/16 v0, 0x16

    aput-object v7, p0, v0

    const/16 v0, 0x17

    aput-object v1, p0, v0

    const/16 v0, 0x18

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x19

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v2, "<$constructor$>"

    aput-object v2, p0, v0

    const/16 v0, 0x1b

    const-string v2, "getAt"

    aput-object v2, p0, v0

    const/16 v0, 0x1c

    const-string v2, "call"

    aput-object v2, p0, v0

    const/16 v0, 0x1d

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    const-string/jumbo v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x1f

    const-string/jumbo v1, "substring"

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string/jumbo v1, "transformFirstLetter"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/PropertyUtil;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/PropertyUtil;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {v0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/PropertyUtil;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static attach(Lch/qos/logback/classic/gaffer/NestingType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p0, "nestingType"    # Lch/qos/logback/classic/gaffer/NestingType;
    .param p1, "component"    # Ljava/lang/Object;
    .param p2, "subComponent"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;

    const-class v0, Lch/qos/logback/classic/gaffer/PropertyUtil;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 61
    nop

    .line 62
    const/16 v2, 0x11

    aget-object v2, v1, v2

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v2, :cond_0

    .line 63
    const/16 v2, 0x12

    aget-object v2, v1, v2

    const-class v7, Lch/qos/logback/core/joran/util/beans/BeanUtil;

    invoke-interface {v2, v7, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    check-cast p3, Ljava/lang/String;

    .line 64
    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v1, v0, p1, p3, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "value":Ljava/lang/Object;
    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/16 v2, 0x14

    aget-object v2, v1, v2

    const-class v7, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v2, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const/16 v0, 0x15

    aget-object v0, v1, v0

    const-class v1, Lch/qos/logback/core/joran/util/beans/BeanUtil;

    invoke-interface {v0, v1, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Ljava/lang/String;

    .line 69
    new-instance v0, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p3, v1, v4

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, p1, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    const/16 v2, 0x16

    aget-object v2, v1, v2

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {v1, v0, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "firstUpperName":Ljava/lang/String;
    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v7, "add"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v0, p1, v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodN(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "firstUpperName":Ljava/lang/String;
    .end local p0    # "nestingType":Lch/qos/logback/classic/gaffer/NestingType;
    .end local p1    # "component":Ljava/lang/Object;
    .end local p2    # "subComponent":Ljava/lang/Object;
    .end local p3    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public static convertByValueMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "component"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 54
    const/16 v1, 0xc

    aget-object v1, v0, v1

    const-class v2, Lch/qos/logback/core/joran/util/beans/BeanUtil;

    invoke-interface {v1, v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "decapitalizedName":Ljava/lang/Object;
    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-interface {v2, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lgroovy/lang/MetaProperty;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroovy/lang/MetaProperty;

    .line 56
    .local v2, "metaProperty":Lgroovy/lang/MetaProperty;
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/core/joran/util/StringToObjectConverter;

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-interface {v5, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/reflect/Method;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 57
    .local v3, "valueOfMethod":Ljava/lang/reflect/Method;
    const/16 v4, 0x10

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hasAdderMethod(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    .local v1, "addMethod":Ljava/lang/String;
    sget-boolean v2, Lch/qos/logback/classic/gaffer/PropertyUtil;->__$stMC:Z

    const-string v3, ""

    const-string v4, "add"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lch/qos/logback/classic/gaffer/PropertyUtil;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v7, v6, [Ljava/lang/Object;

    aget-object v8, v0, v5

    const-class v9, Lch/qos/logback/classic/gaffer/PropertyUtil;

    invoke-interface {v8, v9, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v5

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 30
    aget-object v2, v0, v6

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static nestingType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lch/qos/logback/classic/gaffer/NestingType;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 35
    const/4 v1, 0x3

    aget-object v1, v0, v1

    const-class v2, Lch/qos/logback/core/joran/util/beans/BeanUtil;

    invoke-interface {v1, v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "decapitalizedName":Ljava/lang/Object;
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-interface {v2, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lgroovy/lang/MetaProperty;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgroovy/lang/MetaProperty;

    .line 38
    .local v2, "metaProperty":Lgroovy/lang/MetaProperty;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    instance-of v3, p2, Ljava/lang/String;

    .line 41
    .local v3, "VALUE_IS_A_STRING":Z
    if-eqz v3, :cond_0

    const/4 v4, 0x5

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/joran/util/StringToObjectConverter;

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-interface {v6, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 42
    const/4 v4, 0x7

    aget-object v0, v0, v4

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v4, v0

    check-cast v4, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0

    .line 44
    :cond_1
    const/16 v4, 0x8

    aget-object v0, v0, v4

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v4, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v4}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v4, v0

    check-cast v4, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0

    .line 47
    .end local v3    # "VALUE_IS_A_STRING":Z
    :cond_2
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/gaffer/PropertyUtil;

    invoke-interface {v3, v4, p0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const/16 v3, 0xa

    aget-object v0, v0, v3

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v3, v0

    check-cast v3, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0

    .line 50
    :cond_3
    const/16 v3, 0xb

    aget-object v0, v0, v3

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v3, v0

    check-cast v3, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0
.end method

.method public static transformFirstLetter(Ljava/lang/String;Lgroovy/lang/Closure;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "closure"    # Lgroovy/lang/Closure;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 80
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigInt()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 80
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lch/qos/logback/classic/gaffer/PropertyUtil;->__$stMC:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x19

    aget-object v1, v0, v1

    invoke-interface {v1, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    .line 81
    return-object p0

    .line 80
    :cond_2
    invoke-static {p0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x18

    aget-object v1, v0, v1

    invoke-interface {v1, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 81
    return-object p0

    :cond_5
    nop

    .line 83
    :cond_6
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v3, v0, v3

    invoke-interface {v3, p0, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "firstLetter":Ljava/lang/String;
    const/16 v2, 0x1c

    aget-object v2, v0, v2

    invoke-interface {v2, p1, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "modifiedFistLetter":Ljava/lang/String;
    const/16 v3, 0x1d

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 88
    return-object v2

    .line 90
    :cond_7
    const/16 v3, 0x1e

    aget-object v3, v0, v3

    const/16 v5, 0x1f

    aget-object v0, v0, v5

    invoke-interface {v0, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    return-object v0
.end method

.method public static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    const-class v0, Lch/qos/logback/classic/gaffer/PropertyUtil;

    invoke-static {}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 94
    const/16 v2, 0x20

    aget-object v1, v1, v2

    new-instance v2, Lch/qos/logback/classic/gaffer/PropertyUtil$_upperCaseFirstLetter_closure1;

    invoke-direct {v2, v0, v0}, Lch/qos/logback/classic/gaffer/PropertyUtil$_upperCaseFirstLetter_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/PropertyUtil;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/PropertyUtil;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/PropertyUtil;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/PropertyUtil;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/PropertyUtil;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/PropertyUtil;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/PropertyUtil;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
