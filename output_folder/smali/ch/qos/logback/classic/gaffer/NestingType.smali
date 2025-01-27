.class public final enum Lch/qos/logback/classic/gaffer/NestingType;
.super Ljava/lang/Enum;
.source "NestedType.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/classic/gaffer/NestingType;",
        ">;",
        "Lgroovy/lang/GroovyObject;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static final enum AS_COLLECTION:Lch/qos/logback/classic/gaffer/NestingType;

.field public static final MAX_VALUE:Lch/qos/logback/classic/gaffer/NestingType;

.field public static final MIN_VALUE:Lch/qos/logback/classic/gaffer/NestingType;

.field public static final enum NA:Lch/qos/logback/classic/gaffer/NestingType;

.field public static final enum SINGLE:Lch/qos/logback/classic/gaffer/NestingType;

.field public static final enum SINGLE_WITH_VALUE_OF_CONVENTION:Lch/qos/logback/classic/gaffer/NestingType;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method public static final varargs synthetic $INIT([Ljava/lang/Object;)Lch/qos/logback/classic/gaffer/NestingType;
    .locals 5

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0

    new-array v4, v2, [I

    aput v0, v4, v0

    invoke-static {v1, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->despreadList([Ljava/lang/Object;[Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lch/qos/logback/classic/gaffer/NestingType;

    const/4 v4, -0x1

    invoke-static {v1, v4, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->selectConstructorAndTransformArguments([Ljava/lang/Object;ILjava/lang/Class;)I

    move-result v3

    new-instance v4, Lch/qos/logback/classic/gaffer/NestingType;

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This class has been compiled with a super class which is binary incompatible with the current super class found on classpath. You should recompile this class with the new version."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    aget-object v0, v1, v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->intUnbox(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v1, v1, v3

    const-class v3, Ljava/util/LinkedHashMap;

    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v0, v2, v1}, Lch/qos/logback/classic/gaffer/NestingType;-><init>(Ljava/lang/String;ILjava/util/LinkedHashMap;)V

    goto :goto_0

    :sswitch_1
    aget-object v0, v1, v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->intUnbox(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lch/qos/logback/classic/gaffer/NestingType;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x505cff1c -> :sswitch_1
        -0xe6f6678 -> :sswitch_0
    .end sparse-switch
.end method

.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/NestingType;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "checkPropNames"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "next"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "ordinal"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string/jumbo v2, "size"

    aput-object v2, p0, v0

    const/4 v0, 0x6

    const-string v3, "getAt"

    aput-object v3, p0, v0

    const/4 v0, 0x7

    const-string/jumbo v4, "previous"

    aput-object v4, p0, v0

    const/16 v0, 0x8

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "minus"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    aput-object v2, p0, v0

    const/16 v0, 0xb

    aput-object v3, p0, v0

    const/16 v0, 0xc

    const-string/jumbo v1, "valueOf"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "$INIT"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    aput-object v1, p0, v0

    const/16 v0, 0xf

    aput-object v1, p0, v0

    const/16 v0, 0x10

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/NestingType;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/NestingType;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NA"

    invoke-interface {v1, v0, v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v3, v1

    check-cast v3, Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v1, Lch/qos/logback/classic/gaffer/NestingType;->NA:Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v3

    const/16 v4, 0xe

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SINGLE"

    invoke-interface {v3, v0, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v5, v3

    check-cast v5, Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v3, Lch/qos/logback/classic/gaffer/NestingType;->SINGLE:Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v5

    const/16 v6, 0xf

    aget-object v5, v5, v6

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SINGLE_WITH_VALUE_OF_CONVENTION"

    invoke-interface {v5, v0, v8, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v7, v5

    check-cast v7, Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v5, Lch/qos/logback/classic/gaffer/NestingType;->SINGLE_WITH_VALUE_OF_CONVENTION:Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v7

    const/16 v8, 0x10

    aget-object v7, v7, v8

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "AS_COLLECTION"

    invoke-interface {v7, v0, v10, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v7, v0

    check-cast v7, Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v0, Lch/qos/logback/classic/gaffer/NestingType;->AS_COLLECTION:Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v1, Lch/qos/logback/classic/gaffer/NestingType;->MIN_VALUE:Lch/qos/logback/classic/gaffer/NestingType;

    sput-object v0, Lch/qos/logback/classic/gaffer/NestingType;->MAX_VALUE:Lch/qos/logback/classic/gaffer/NestingType;

    const/4 v7, 0x4

    new-array v7, v7, [Lch/qos/logback/classic/gaffer/NestingType;

    aput-object v1, v7, v2

    aput-object v3, v7, v4

    aput-object v5, v7, v6

    aput-object v0, v7, v8

    sput-object v7, Lch/qos/logback/classic/gaffer/NestingType;->$VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-class v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/classic/gaffer/NestingType;-><init>(Ljava/lang/String;ILjava/util/LinkedHashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/LinkedHashMap;)V
    .locals 3

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/NestingType;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/gaffer/NestingType;->metaClass:Lgroovy/lang/MetaClass;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-class v1, Lorg/codehaus/groovy/transform/ImmutableASTTransformation;

    invoke-interface {v0, v1, p0, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-class v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One of the enum constants for enum ch.qos.logback.classic.gaffer.NestingType was initialized with null. Please use a non-null value or define your own constructor."

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/classic/gaffer/NestingType;
    .locals 3

    const-class v0, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v1, v0, v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v1, v0

    check-cast v1, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0
.end method

.method public static final values()[Lch/qos/logback/classic/gaffer/NestingType;
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    sget-object v0, Lch/qos/logback/classic/gaffer/NestingType;->$VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-class v1, [Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/NestingType;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/NestingType;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/NestingType;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/NestingType;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/NestingType;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/NestingType;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/NestingType;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/NestingType;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic next()Lch/qos/logback/classic/gaffer/NestingType;
    .locals 4

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-interface {v2, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    sget-object v3, Lch/qos/logback/classic/gaffer/NestingType;->$VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareGreaterThanEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-interface {v0, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v2, v0

    check-cast v2, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0
.end method

.method public synthetic previous()Lch/qos/logback/classic/gaffer/NestingType;
    .locals 5

    invoke-static {}, Lch/qos/logback/classic/gaffer/NestingType;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v1, v0, v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-interface {v2, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    aget-object v2, v0, v2

    const/16 v3, 0xa

    aget-object v3, v0, v3

    sget-object v4, Lch/qos/logback/classic/gaffer/NestingType;->$VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    const/16 v2, 0xb

    aget-object v0, v0, v2

    sget-object v2, Lch/qos/logback/classic/gaffer/NestingType;->$VALUES:[Lch/qos/logback/classic/gaffer/NestingType;

    invoke-interface {v0, v2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Lch/qos/logback/classic/gaffer/NestingType;

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/NestingType;

    move-object v2, v0

    check-cast v2, Lch/qos/logback/classic/gaffer/NestingType;

    return-object v0
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/NestingType;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/NestingType;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
