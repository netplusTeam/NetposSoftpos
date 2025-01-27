.class public Lch/qos/logback/classic/gaffer/GafferConfigurator;
.super Ljava/lang/Object;
.source "GafferConfigurator.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference; = null

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo; = null

.field private static final DEBUG_SYSTEM_PROPERTY_KEY:Ljava/lang/String; = "logback.debug"

.field public static transient synthetic __$stMC:Z


# instance fields
.field private context:Lch/qos/logback/classic/LoggerContext;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/GafferConfigurator;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "setMainWatchURL"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "informContextOfURLUsedForConfiguration"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "run"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "text"

    aput-object v3, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "toURL"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "toURI"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v3, p0, v0

    const/16 v0, 0x9

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    const-string/jumbo v3, "setProperty"

    aput-object v3, p0, v0

    const/16 v0, 0xb

    const-string v3, "localHostName"

    aput-object v3, p0, v0

    const/16 v0, 0xc

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v3, "addCompilationCustomizers"

    aput-object v3, p0, v0

    const/16 v0, 0xe

    const-string v4, "importCustomizer"

    aput-object v4, p0, v0

    const/16 v0, 0xf

    aput-object v3, p0, v0

    const/16 v0, 0x10

    const-string v3, "getProperty"

    aput-object v3, p0, v0

    const/16 v0, 0x11

    const-string v3, "isEmpty"

    aput-object v3, p0, v0

    const/16 v0, 0x12

    const-string v3, "equalsIgnoreCase"

    aput-object v3, p0, v0

    const/16 v0, 0x13

    aput-object v3, p0, v0

    const/16 v0, 0x14

    const-string v3, "addNewInstanceToContext"

    aput-object v3, p0, v0

    const/16 v0, 0x15

    const-string v3, "addGroovyPackages"

    aput-object v3, p0, v0

    const/16 v0, 0x16

    aput-object v1, p0, v0

    const/16 v0, 0x17

    const-string v3, "getFrameworkPackages"

    aput-object v3, p0, v0

    const/16 v0, 0x18

    const-string/jumbo v3, "parse"

    aput-object v3, p0, v0

    const/16 v0, 0x19

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v3, "mixin"

    aput-object v3, p0, v0

    const/16 v0, 0x1b

    const-string v3, "metaClass"

    aput-object v3, p0, v0

    const/16 v0, 0x1c

    const-string/jumbo v4, "setContext"

    aput-object v4, p0, v0

    const/16 v0, 0x1d

    aput-object v3, p0, v0

    const/16 v0, 0x1e

    aput-object v2, p0, v0

    const/16 v0, 0x1f

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string v1, "addStarImports"

    aput-object v1, p0, v0

    const/16 v0, 0x21

    const-string v1, "addImports"

    aput-object v1, p0, v0

    const/16 v0, 0x22

    const-string v1, "name"

    aput-object v1, p0, v0

    const/16 v0, 0x23

    const-string v2, "addStaticStars"

    aput-object v2, p0, v0

    const/16 v0, 0x24

    aput-object v1, p0, v0

    const/16 v0, 0x25

    const-string v2, "addStaticImport"

    aput-object v2, p0, v0

    const/16 v0, 0x26

    aput-object v1, p0, v0

    const/16 v0, 0x27

    aput-object v2, p0, v0

    const/16 v0, 0x28

    aput-object v1, p0, v0

    const/16 v0, 0x29

    aput-object v2, p0, v0

    const/16 v0, 0x2a

    aput-object v1, p0, v0

    const/16 v0, 0x2b

    aput-object v2, p0, v0

    const/16 v0, 0x2c

    aput-object v1, p0, v0

    const/16 v0, 0x2d

    aput-object v2, p0, v0

    const/16 v0, 0x2e

    aput-object v1, p0, v0

    const/16 v0, 0x2f

    aput-object v2, p0, v0

    const/16 v0, 0x30

    aput-object v1, p0, v0

    const/16 v0, 0x31

    aput-object v2, p0, v0

    const/16 v0, 0x32

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    .local v0, "this":Lch/qos/logback/classic/gaffer/GafferConfigurator;
    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {v0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->metaClass:Lgroovy/lang/MetaClass;

    .line 35
    const-class v1, Lch/qos/logback/classic/LoggerContext;

    invoke-static {p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    return-void
.end method

.method public static final getDEBUG_SYSTEM_PROPERTY_KEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->DEBUG_SYSTEM_PROPERTY_KEY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/GafferConfigurator;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected importCustomizer()Lorg/codehaus/groovy/control/customizers/ImportCustomizer;
    .locals 12

    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 81
    const/16 v1, 0x1f

    aget-object v1, v0, v1

    const-class v2, Lorg/codehaus/groovy/control/customizers/ImportCustomizer;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "customizer":Ljava/lang/Object;
    const-string v8, "ch.qos.logback.core"

    .line 85
    .local v8, "core":Ljava/lang/Object;
    const/16 v2, 0x20

    aget-object v9, v0, v2

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const-string v6, ""

    const-string v7, ".encoder"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    new-instance v4, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v8, v7, v5

    const-string v10, ".read"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    new-instance v7, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v5

    const-string v11, ".rolling"

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    new-instance v10, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v5

    const-string v5, ".status"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v2, v5}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v11, "ch.qos.logback.classic.net"

    move-object v2, v8

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lorg/codehaus/groovy/runtime/ArrayUtil;->createArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v2, 0x21

    aget-object v2, v0, v2

    const/16 v3, 0x22

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/16 v2, 0x23

    aget-object v2, v0, v2

    const/16 v3, 0x24

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v2, 0x25

    aget-object v2, v0, v2

    const/16 v3, 0x26

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "off"

    const-string v5, "OFF"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v2, 0x27

    aget-object v2, v0, v2

    const/16 v3, 0x28

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "error"

    const-string v5, "ERROR"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v2, 0x29

    aget-object v2, v0, v2

    const/16 v3, 0x2a

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "warn"

    const-string v5, "WARN"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v2, 0x2b

    aget-object v2, v0, v2

    const/16 v3, 0x2c

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "info"

    const-string v5, "INFO"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/16 v2, 0x2d

    aget-object v2, v0, v2

    const/16 v3, 0x2e

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "debug"

    const-string v5, "DEBUG"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v2, 0x2f

    aget-object v2, v0, v2

    const/16 v3, 0x30

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/classic/Level;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "trace"

    const-string v5, "TRACE"

    invoke-interface {v2, v1, v4, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v2, 0x31

    aget-object v2, v0, v2

    const/16 v3, 0x32

    aget-object v0, v0, v3

    const-class v3, Lch/qos/logback/classic/Level;

    invoke-interface {v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "all"

    const-string v4, "ALL"

    invoke-interface {v2, v1, v3, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer;

    invoke-static {v1, v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer;

    return-object v0
.end method

.method protected informContextOfURLUsedForConfiguration(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-class v1, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;

    iget-object v2, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v0, v1, v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 48
    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-interface {v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v1, 0x7

    aget-object v1, v0, v1

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run(Ljava/lang/String;)V
    .locals 9
    .param p1, "dslText"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 53
    const/16 v1, 0x9

    aget-object v1, v0, v1

    const-class v2, Lgroovy/lang/Binding;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lgroovy/lang/Binding;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovy/lang/Binding;

    .line 54
    .local v1, "binding":Lgroovy/lang/Binding;
    const/16 v2, 0xa

    aget-object v2, v0, v2

    const/16 v3, 0xb

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/core/util/ContextUtil;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "hostname"

    invoke-interface {v2, v1, v4, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/16 v2, 0xc

    aget-object v2, v0, v2

    const-class v3, Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, "configuration":Ljava/lang/Object;
    sget-boolean v3, Lch/qos/logback/classic/gaffer/GafferConfigurator;->__$stMC:Z

    if-nez v3, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xf

    aget-object v3, v0, v3

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->importCustomizer()Lorg/codehaus/groovy/control/customizers/ImportCustomizer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/16 v4, 0xe

    aget-object v4, v0, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    invoke-interface {v3, v2, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/16 v3, 0x10

    aget-object v3, v0, v3

    const-class v4, Ljava/lang/System;

    sget-object v5, Lch/qos/logback/classic/gaffer/GafferConfigurator;->DEBUG_SYSTEM_PROPERTY_KEY:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "debugAttrib":Ljava/lang/String;
    const/16 v4, 0x11

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/util/OptionHelper;

    invoke-interface {v4, v5, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    const/16 v4, 0x12

    aget-object v4, v0, v4

    const-string v7, "false"

    invoke-interface {v4, v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    :goto_2
    if-nez v4, :cond_3

    .line 61
    const/16 v4, 0x13

    aget-object v4, v0, v4

    const-string v7, "null"

    invoke-interface {v4, v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    .line 65
    :cond_5
    const/16 v4, 0x14

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/status/OnConsoleStatusListener;

    iget-object v6, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_3
    const/16 v4, 0x15

    aget-object v4, v0, v4

    const/16 v5, 0x16

    aget-object v5, v0, v5

    const-class v6, Lch/qos/logback/core/util/ContextUtil;

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v5, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x17

    aget-object v6, v0, v6

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 v4, 0x18

    aget-object v4, v0, v4

    const/16 v5, 0x19

    aget-object v5, v0, v5

    const-class v6, Lgroovy/lang/GroovyShell;

    invoke-interface {v5, v6, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lgroovy/lang/Script;

    invoke-static {v4, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgroovy/lang/Script;

    new-instance v5, Lgroovy/lang/Reference;

    invoke-direct {v5, v4}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 73
    .local v4, "dslScript":Lgroovy/lang/Reference;
    const/16 v5, 0x1a

    aget-object v5, v0, v5

    const/16 v6, 0x1b

    aget-object v6, v0, v6

    invoke-virtual {v4}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgroovy/lang/Script;

    invoke-interface {v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    invoke-interface {v5, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v5, 0x1c

    aget-object v5, v0, v5

    invoke-virtual {v4}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgroovy/lang/Script;

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v5, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v5, Lch/qos/logback/classic/gaffer/GafferConfigurator$_run_closure1;

    invoke-direct {v5, p0, p0, v4}, Lch/qos/logback/classic/gaffer/GafferConfigurator$_run_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    const/4 v6, 0x0

    const/16 v7, 0x1d

    aget-object v7, v0, v7

    invoke-virtual {v4}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgroovy/lang/Script;

    invoke-interface {v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getDeclaredOrigin"

    invoke-static {v5, v6, v7, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/16 v5, 0x1e

    aget-object v0, v0, v5

    invoke-virtual {v4}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgroovy/lang/Script;

    invoke-interface {v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    invoke-static {}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 43
    sget-boolean v1, Lch/qos/logback/classic/gaffer/GafferConfigurator;->__$stMC:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->informContextOfURLUsedForConfiguration(Ljava/net/URL;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-interface {v1, p0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->context:Lch/qos/logback/classic/LoggerContext;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/GafferConfigurator;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/GafferConfigurator;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
