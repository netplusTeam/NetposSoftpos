.class public Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ConfigurationDelegate.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private appenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/Appender;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "setContext"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v3, "context"

    aput-object v3, p0, v0

    const/4 v0, 0x3

    const-string/jumbo v4, "putObject"

    aput-object v4, p0, v0

    const/4 v0, 0x4

    aput-object v3, p0, v0

    const/4 v0, 0x5

    const-string v5, "RECONFIGURE_ON_CHANGE_TASK"

    aput-object v5, p0, v0

    const/4 v0, 0x6

    const-string/jumbo v5, "valueOf"

    aput-object v5, p0, v0

    const/4 v0, 0x7

    const-string v5, "getScheduledExecutorService"

    aput-object v5, p0, v0

    const/16 v0, 0x8

    aput-object v3, p0, v0

    const/16 v0, 0x9

    const-string/jumbo v5, "scheduleAtFixedRate"

    aput-object v5, p0, v0

    const/16 v0, 0xa

    const-string v5, "getMilliseconds"

    aput-object v5, p0, v0

    const/16 v0, 0xb

    aput-object v5, p0, v0

    const/16 v0, 0xc

    const-string v5, "MILLISECONDS"

    aput-object v5, p0, v0

    const/16 v0, 0xd

    const-string v5, "addScheduledFuture"

    aput-object v5, p0, v0

    const/16 v0, 0xe

    aput-object v3, p0, v0

    const/16 v0, 0xf

    const-string v5, "addInfo"

    aput-object v5, p0, v0

    const/16 v0, 0x10

    const-string/jumbo v6, "plus"

    aput-object v6, p0, v0

    const/16 v0, 0x11

    const-string v7, "addError"

    aput-object v7, p0, v0

    const/16 v0, 0x12

    aput-object v6, p0, v0

    const/16 v0, 0x13

    aput-object v6, p0, v0

    const/16 v0, 0x14

    const-string v8, "newInstance"

    aput-object v8, p0, v0

    const/16 v0, 0x15

    const-string v9, "add"

    aput-object v9, p0, v0

    const/16 v0, 0x16

    const-string/jumbo v10, "statusManager"

    aput-object v10, p0, v0

    const/16 v0, 0x17

    aput-object v3, p0, v0

    const/16 v0, 0x18

    aput-object v2, p0, v0

    const/16 v0, 0x19

    aput-object v3, p0, v0

    const/16 v0, 0x1a

    const-string/jumbo v2, "start"

    aput-object v2, p0, v0

    const/16 v0, 0x1b

    aput-object v5, p0, v0

    const/16 v0, 0x1c

    const-string v10, "canonicalName"

    aput-object v10, p0, v0

    const/16 v0, 0x1d

    const-string v10, "getName"

    aput-object v10, p0, v0

    const/16 v0, 0x1e

    const-string v11, "getObject"

    aput-object v11, p0, v0

    const/16 v0, 0x1f

    aput-object v3, p0, v0

    const/16 v0, 0x20

    const-string v11, "PATTERN_RULE_REGISTRY"

    aput-object v11, p0, v0

    const/16 v0, 0x21

    aput-object v1, p0, v0

    const/16 v0, 0x22

    aput-object v4, p0, v0

    const/16 v0, 0x23

    aput-object v3, p0, v0

    const/16 v0, 0x24

    aput-object v11, p0, v0

    const/16 v0, 0x25

    aput-object v5, p0, v0

    const/16 v0, 0x26

    aput-object v6, p0, v0

    const/16 v0, 0x27

    aput-object v6, p0, v0

    const/16 v0, 0x28

    aput-object v6, p0, v0

    const/16 v0, 0x29

    aput-object v6, p0, v0

    const/16 v0, 0x2a

    const-string/jumbo v4, "put"

    aput-object v4, p0, v0

    const/16 v0, 0x2b

    aput-object v7, p0, v0

    const/16 v0, 0x2c

    const-string v4, "logger"

    aput-object v4, p0, v0

    const/16 v0, 0x2d

    const-string v4, "ROOT_LOGGER_NAME"

    aput-object v4, p0, v0

    const/16 v0, 0x2e

    const-string v4, "getLogger"

    aput-object v4, p0, v0

    const/16 v0, 0x2f

    aput-object v3, p0, v0

    const/16 v0, 0x30

    aput-object v5, p0, v0

    const/16 v0, 0x31

    aput-object v6, p0, v0

    const/16 v0, 0x32

    const-string v4, "iterator"

    aput-object v4, p0, v0

    const/16 v0, 0x33

    const-string v4, "find"

    aput-object v4, p0, v0

    const/16 v0, 0x34

    aput-object v5, p0, v0

    const/16 v0, 0x35

    aput-object v6, p0, v0

    const/16 v0, 0x36

    const-string v4, "addAppender"

    aput-object v4, p0, v0

    const/16 v0, 0x37

    aput-object v7, p0, v0

    const/16 v0, 0x38

    aput-object v5, p0, v0

    const/16 v0, 0x39

    aput-object v5, p0, v0

    const/16 v0, 0x3a

    aput-object v6, p0, v0

    const/16 v0, 0x3b

    aput-object v6, p0, v0

    const/16 v0, 0x3c

    const-string v4, "name"

    aput-object v4, p0, v0

    const/16 v0, 0x3d

    aput-object v8, p0, v0

    const/16 v0, 0x3e

    aput-object v5, p0, v0

    const/16 v0, 0x3f

    aput-object v6, p0, v0

    const/16 v0, 0x40

    aput-object v6, p0, v0

    const/16 v0, 0x41

    aput-object v3, p0, v0

    const/16 v0, 0x42

    aput-object v9, p0, v0

    const/16 v0, 0x43

    aput-object v1, p0, v0

    const/16 v0, 0x44

    const-string v9, "copyContributions"

    aput-object v9, p0, v0

    const/16 v0, 0x45

    aput-object v3, p0, v0

    const/16 v0, 0x46

    const-string v9, "DELEGATE_FIRST"

    aput-object v9, p0, v0

    const/16 v0, 0x47

    const-string v11, "call"

    aput-object v11, p0, v0

    const/16 v0, 0x48

    aput-object v2, p0, v0

    const/16 v0, 0x49

    aput-object v7, p0, v0

    const/16 v0, 0x4a

    aput-object v6, p0, v0

    const/16 v0, 0x4b

    aput-object v6, p0, v0

    const/16 v0, 0x4c

    aput-object v5, p0, v0

    const/16 v0, 0x4d

    aput-object v6, p0, v0

    const/16 v0, 0x4e

    aput-object v6, p0, v0

    const/16 v0, 0x4f

    aput-object v4, p0, v0

    const/16 v0, 0x50

    const-string v12, "clazz"

    aput-object v12, p0, v0

    const/16 v0, 0x51

    aput-object v8, p0, v0

    const/16 v0, 0x52

    aput-object v3, p0, v0

    const/16 v0, 0x53

    aput-object v1, p0, v0

    const/16 v0, 0x54

    aput-object v3, p0, v0

    const/16 v0, 0x55

    aput-object v9, p0, v0

    const/16 v0, 0x56

    aput-object v11, p0, v0

    const/16 v0, 0x57

    aput-object v2, p0, v0

    const/16 v0, 0x58

    aput-object v7, p0, v0

    const/16 v0, 0x59

    aput-object v6, p0, v0

    const/16 v0, 0x5a

    aput-object v6, p0, v0

    const/16 v0, 0x5b

    aput-object v10, p0, v0

    const/16 v0, 0x5c

    const-string v10, "each"

    aput-object v10, p0, v0

    const/16 v0, 0x5d

    const-string v10, "getMappings"

    aput-object v10, p0, v0

    const/16 v0, 0x5e

    aput-object v5, p0, v0

    const/16 v0, 0x5f

    aput-object v6, p0, v0

    const/16 v0, 0x60

    aput-object v6, p0, v0

    const/16 v0, 0x61

    aput-object v4, p0, v0

    const/16 v0, 0x62

    aput-object v8, p0, v0

    const/16 v0, 0x63

    aput-object v3, p0, v0

    const/16 v0, 0x64

    aput-object v1, p0, v0

    const/16 v0, 0x65

    aput-object v3, p0, v0

    const/16 v0, 0x66

    aput-object v9, p0, v0

    const/16 v0, 0x67

    aput-object v11, p0, v0

    const/16 v0, 0x68

    aput-object v2, p0, v0

    const/16 v0, 0x69

    aput-object v5, p0, v0

    const/16 v0, 0x6a

    const-string v2, "addTurboFilter"

    aput-object v2, p0, v0

    const/16 v0, 0x6b

    aput-object v3, p0, v0

    const/16 v0, 0x6c

    aput-object v5, p0, v0

    const/16 v0, 0x6d

    const-string v2, "currentTimeMillis"

    aput-object v2, p0, v0

    const/16 v0, 0x6e

    aput-object v5, p0, v0

    const/16 v0, 0x6f

    aput-object v6, p0, v0

    const/16 v0, 0x70

    aput-object v6, p0, v0

    const/16 v0, 0x71

    aput-object v1, p0, v0

    const/16 v0, 0x72

    const-string v2, "format"

    aput-object v2, p0, v0

    const/16 v0, 0x73

    aput-object v4, p0, v0

    const/16 v0, 0x74

    aput-object v3, p0, v0

    const/16 v0, 0x75

    aput-object v1, p0, v0

    const/16 v0, 0x76

    const-string v2, "getObjectNameFor"

    aput-object v2, p0, v0

    const/16 v0, 0x77

    const-string/jumbo v2, "string2ObjectName"

    aput-object v2, p0, v0

    const/16 v0, 0x78

    aput-object v3, p0, v0

    const/16 v0, 0x79

    aput-object v7, p0, v0

    const/16 v0, 0x7a

    const-string/jumbo v2, "platformMBeanServer"

    aput-object v2, p0, v0

    const/16 v0, 0x7b

    const-string v2, "isRegistered"

    aput-object v2, p0, v0

    const/16 v0, 0x7c

    aput-object v1, p0, v0

    const/16 v0, 0x7d

    aput-object v3, p0, v0

    const/16 v0, 0x7e

    const-string/jumbo v1, "registerMBean"

    aput-object v1, p0, v0

    const/16 v0, 0x7f

    aput-object v7, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    move-object v0, p0

    .local v0, "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 49
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    invoke-virtual {v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method private copyContributions(Lch/qos/logback/classic/gaffer/AppenderDelegate;Lch/qos/logback/core/Appender;)V
    .locals 4
    .param p1, "appenderDelegate"    # Lch/qos/logback/classic/gaffer/AppenderDelegate;
    .param p2, "appender"    # Lch/qos/logback/core/Appender;

    const/4 v0, 0x0

    .local v0, "appender":Lgroovy/lang/Reference;
    const/4 v1, 0x0

    .end local p1    # "appenderDelegate":Lch/qos/logback/classic/gaffer/AppenderDelegate;
    .local v1, "appenderDelegate":Lgroovy/lang/Reference;
    new-instance v2, Lgroovy/lang/Reference;

    invoke-direct {v2, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v2

    .end local v1    # "appenderDelegate":Lgroovy/lang/Reference;
    .end local p2    # "appender":Lch/qos/logback/core/Appender;
    .local p1, "appenderDelegate":Lgroovy/lang/Reference;
    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p2}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p2, v1

    .end local v0    # "appender":Lgroovy/lang/Reference;
    .local p2, "appender":Lgroovy/lang/Reference;
    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 171
    invoke-virtual {p2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/Appender;

    instance-of v1, v1, Lch/qos/logback/classic/gaffer/ConfigurationContributor;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/Appender;

    const-class v2, Lch/qos/logback/classic/gaffer/ConfigurationContributor;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/gaffer/ConfigurationContributor;

    .line 173
    .local v1, "cc":Lch/qos/logback/classic/gaffer/ConfigurationContributor;
    const/16 v2, 0x5c

    aget-object v2, v0, v2

    const/16 v3, 0x5d

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;

    invoke-direct {v3, p0, p0, p1, p2}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "cc":Lch/qos/logback/classic/gaffer/ConfigurationContributor;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "appenderDelegate":Lgroovy/lang/Reference;
    .end local p2    # "appender":Lgroovy/lang/Reference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public appender(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appender(Ljava/lang/String;Ljava/lang/Class;Lgroovy/lang/Closure;)V

    return-void
.end method

.method public appender(Ljava/lang/String;Ljava/lang/Class;Lgroovy/lang/Closure;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "closure"    # Lgroovy/lang/Closure;

    const-class v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 131
    const/16 v2, 0x39

    aget-object v2, v1, v2

    const/16 v3, 0x3a

    aget-object v3, v1, v3

    const/16 v4, 0x3b

    aget-object v4, v1, v4

    const/16 v5, 0x3c

    aget-object v5, v1, v5

    invoke-interface {v5, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "About to instantiate appender of type ["

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "]"

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v2, 0x3d

    aget-object v2, v1, v2

    invoke-interface {v2, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lch/qos/logback/core/Appender;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    .line 133
    .local v2, "appender":Lch/qos/logback/core/Appender;
    const/16 v3, 0x3e

    aget-object v3, v1, v3

    const/16 v4, 0x3f

    aget-object v4, v1, v4

    const/16 v6, 0x40

    aget-object v6, v1, v6

    const-string v7, "Naming appender as ["

    invoke-interface {v6, v7, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v3, 0x0

    const-string v4, "name"

    invoke-static {p1, v3, v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const/16 v4, 0x41

    aget-object v4, v1, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "context"

    invoke-static {v4, v3, v2, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    const/16 v4, 0x42

    aget-object v4, v1, v4

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    invoke-interface {v4, v7, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p3, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const/16 v3, 0x43

    aget-object v3, v1, v3

    const-class v4, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    iget-object v7, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    invoke-interface {v3, v4, v2, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    .line 139
    .local v3, "ad":Lch/qos/logback/classic/gaffer/AppenderDelegate;
    const/16 v4, 0x44

    aget-object v4, v1, v4

    invoke-interface {v4, p0, v3, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v4, 0x45

    aget-object v4, v1, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0, v3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 141
    const-string v4, "delegate"

    invoke-static {v3, v0, p3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 142
    const/16 v4, 0x46

    aget-object v4, v1, v4

    const-class v6, Lgroovy/lang/Closure;

    invoke-interface {v4, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "resolveStrategy"

    invoke-static {v4, v0, p3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 143
    const/16 v0, 0x47

    aget-object v0, v1, v0

    invoke-interface {v0, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v3    # "ad":Lch/qos/logback/classic/gaffer/AppenderDelegate;
    :cond_0
    nop

    .line 146
    const/16 v0, 0x48

    :try_start_0
    aget-object v0, v1, v0

    invoke-interface {v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v3, 0x49

    :try_start_1
    aget-object v3, v1, v3

    const/16 v4, 0x4a

    aget-object v4, v1, v4

    const/16 v6, 0x4b

    aget-object v1, v1, v6

    const-string v6, "Failed to start apppender named ["

    invoke-interface {v1, v6, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, p0, v1, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .end local v2    # "appender":Lch/qos/logback/core/Appender;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "clazz":Ljava/lang/Class;
    .end local p3    # "closure":Lgroovy/lang/Closure;
    return-void

    .restart local v2    # "appender":Lch/qos/logback/core/Appender;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "clazz":Ljava/lang/Class;
    .restart local p3    # "closure":Lgroovy/lang/Closure;
    :catchall_1
    move-exception v0

    :goto_1
    throw v0
.end method

.method public conversionRule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .param p1, "conversionWord"    # Ljava/lang/String;
    .param p2, "converterClass"    # Ljava/lang/Class;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 86
    const/16 v1, 0x1d

    aget-object v1, v0, v1

    invoke-interface {v1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "converterClassName":Ljava/lang/String;
    const/16 v2, 0x1e

    aget-object v2, v0, v2

    const/16 v3, 0x1f

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x20

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/CoreConstants;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 89
    .local v2, "ruleRegistry":Ljava/util/Map;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/16 v3, 0x21

    aget-object v3, v0, v3

    const-class v4, Ljava/util/HashMap;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    .line 91
    const/16 v3, 0x22

    aget-object v3, v0, v3

    const/16 v4, 0x23

    aget-object v4, v0, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x24

    aget-object v5, v0, v5

    const-class v6, Lch/qos/logback/core/CoreConstants;

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    const/16 v3, 0x25

    aget-object v3, v0, v3

    const/16 v4, 0x26

    aget-object v4, v0, v4

    const/16 v5, 0x27

    aget-object v5, v0, v5

    const/16 v6, 0x28

    aget-object v6, v0, v6

    const/16 v7, 0x29

    aget-object v7, v0, v7

    const-string/jumbo v8, "registering conversion word "

    invoke-interface {v7, v8, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, " with class ["

    invoke-interface {v6, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "]"

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v3, 0x2a

    aget-object v0, v0, v3

    invoke-interface {v0, v2, p1, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAppenderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/Appender;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    return-object v0
.end method

.method public getDeclaredOrigin()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 52
    return-object p0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public jmxConfigurator()V
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    sget-boolean v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->__$stMC:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v0

    :cond_0
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->jmxConfigurator(Ljava/lang/String;)V

    return-void
.end method

.method public jmxConfigurator(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "objectName":Ljava/lang/Object;
    const/16 v2, 0x73

    aget-object v2, v0, v2

    const/16 v3, 0x74

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "contextName":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    nop

    .line 223
    const/16 v4, 0x75

    :try_start_0
    aget-object v4, v0, v4

    const-class v5, Ljavax/management/ObjectName;

    invoke-interface {v4, v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    throw v0

    .line 223
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljavax/management/MalformedObjectNameException;
    move-object v2, p1

    .line 228
    .end local v4    # "e":Ljavax/management/MalformedObjectNameException;
    :cond_0
    :goto_0
    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 229
    const/16 v4, 0x76

    aget-object v4, v0, v4

    const-class v6, Lch/qos/logback/classic/jmx/MBeanUtil;

    const-class v7, Lch/qos/logback/classic/jmx/JMXConfigurator;

    invoke-interface {v4, v6, v2, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 230
    .local v4, "objectNameAsStr":Ljava/lang/Object;
    const/16 v6, 0x77

    aget-object v6, v0, v6

    const-class v7, Lch/qos/logback/classic/jmx/MBeanUtil;

    const/16 v8, 0x78

    aget-object v8, v0, v8

    invoke-interface {v8, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 231
    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    const/16 v3, 0x79

    aget-object v0, v0, v3

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string v6, "Failed to construct ObjectName for ["

    const-string v7, "]"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v0, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    .line 237
    .end local v4    # "objectNameAsStr":Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x7a

    aget-object v3, v0, v3

    const-class v4, Ljava/lang/management/ManagementFactory;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "platformMBeanServer":Ljava/lang/Object;
    const/16 v4, 0x7b

    aget-object v4, v0, v4

    const-class v6, Lch/qos/logback/classic/jmx/MBeanUtil;

    invoke-interface {v4, v6, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 239
    const/16 v4, 0x7c

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/classic/jmx/JMXConfigurator;

    const/16 v6, 0x7d

    aget-object v6, v0, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lch/qos/logback/classic/LoggerContext;

    invoke-static {v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/qos/logback/classic/LoggerContext;

    const-class v7, Lch/qos/logback/classic/LoggerContext;

    invoke-static {v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createPojoWrapper(Ljava/lang/Object;Ljava/lang/Class;)Lorg/codehaus/groovy/runtime/wrappers/Wrapper;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lch/qos/logback/classic/jmx/JMXConfigurator;

    invoke-static {v4, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/qos/logback/classic/jmx/JMXConfigurator;

    .line 240
    .local v4, "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    nop

    .line 241
    const/16 v5, 0x7e

    :try_start_1
    aget-object v5, v0, v5

    invoke-interface {v5, v3, v4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 243
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 241
    :catch_1
    move-exception v5

    .line 243
    .local v5, "all":Ljava/lang/Object;
    const/16 v6, 0x7f

    :try_start_2
    aget-object v0, v0, v6

    const-string v6, "Failed to create mbean"

    invoke-interface {v0, p0, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v5    # "all":Ljava/lang/Object;
    :goto_1
    goto :goto_3

    :goto_2
    throw v0

    .end local v1    # "objectName":Ljava/lang/Object;
    .end local v2    # "contextName":Ljava/lang/Object;
    .end local v3    # "platformMBeanServer":Ljava/lang/Object;
    .end local v4    # "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void
.end method

.method public logger(Ljava/lang/String;Lch/qos/logback/classic/Level;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->logger(Ljava/lang/String;Lch/qos/logback/classic/Level;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method public logger(Ljava/lang/String;Lch/qos/logback/classic/Level;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->logger(Ljava/lang/String;Lch/qos/logback/classic/Level;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method public logger(Ljava/lang/String;Lch/qos/logback/classic/Level;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lch/qos/logback/classic/Level;
    .param p3, "appenderNames"    # Ljava/util/List;
    .param p4, "additivity"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v4

    .line 107
    invoke-static/range {p1 .. p1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    const/16 v5, 0x2e

    aget-object v5, v4, v5

    const/16 v6, 0x2f

    aget-object v6, v4, v6

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lch/qos/logback/classic/LoggerContext;

    invoke-static {v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v5, v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lch/qos/logback/classic/Logger;

    invoke-static {v5, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/qos/logback/classic/Logger;

    .line 109
    .local v5, "logger":Lch/qos/logback/classic/Logger;
    const/16 v6, 0x30

    aget-object v6, v4, v6

    const/16 v7, 0x31

    aget-object v7, v4, v7

    new-instance v8, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const-string v12, "Setting level of logger ["

    const-string v13, "] to "

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v12}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v7, v8, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v6, 0x0

    const-string v7, "level"

    invoke-static {v2, v6, v5, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v7, Lgroovy/lang/Reference;

    invoke-direct {v7, v6}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    .local v7, "aName":Lgroovy/lang/Reference;
    const/16 v8, 0x32

    aget-object v8, v4, v8

    move-object/from16 v10, p3

    invoke-interface {v8, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-class v12, Ljava/util/Iterator;

    invoke-static {v8, v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Iterator;

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v7

    check-cast v14, Lgroovy/lang/Reference;

    invoke-virtual {v14, v12}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V

    .line 113
    const/16 v12, 0x33

    aget-object v12, v4, v12

    iget-object v14, v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    new-instance v15, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_logger_closure1;

    invoke-direct {v15, v0, v0, v7}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_logger_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v12, v14, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-class v14, Lch/qos/logback/core/Appender;

    invoke-static {v12, v14}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lch/qos/logback/core/Appender;

    .line 114
    .local v12, "appender":Lch/qos/logback/core/Appender;
    invoke-static {v12, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 115
    const/16 v14, 0x34

    aget-object v14, v4, v14

    const/16 v15, 0x35

    aget-object v15, v4, v15

    new-instance v6, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v1, v11

    const-string v11, "Attaching appender named ["

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v1, v11}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v15, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v1, 0x36

    aget-object v1, v4, v1

    invoke-interface {v1, v5, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    goto :goto_1

    .line 118
    :cond_0
    const/16 v1, 0x37

    aget-object v1, v4, v1

    new-instance v6, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const-string v14, "Failed to find appender named ["

    const-string v9, "]"

    filled-new-array {v14, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v11, v9}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v12    # "appender":Lch/qos/logback/core/Appender;
    :goto_1
    move-object/from16 v1, p1

    move v11, v15

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_0

    .line 122
    .end local v7    # "aName":Lgroovy/lang/Reference;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    const-string v4, "additive"

    invoke-static {v3, v1, v5, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .end local v5    # "logger":Lch/qos/logback/classic/Logger;
    :cond_2
    goto :goto_2

    .line 126
    :cond_3
    move-object/from16 v10, p3

    const/16 v1, 0x38

    aget-object v1, v4, v1

    const-string v4, "No name attribute for logger"

    invoke-interface {v1, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "level":Lch/qos/logback/classic/Level;
    .end local p3    # "appenderNames":Ljava/util/List;
    .end local p4    # "additivity":Ljava/lang/Boolean;
    :goto_2
    return-void
.end method

.method public receiver(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->receiver(Ljava/lang/String;Ljava/lang/Class;Lgroovy/lang/Closure;)V

    return-void
.end method

.method public receiver(Ljava/lang/String;Ljava/lang/Class;Lgroovy/lang/Closure;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aClass"    # Ljava/lang/Class;
    .param p3, "closure"    # Lgroovy/lang/Closure;

    const-class v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 153
    const/16 v2, 0x4c

    aget-object v2, v1, v2

    const/16 v3, 0x4d

    aget-object v3, v1, v3

    const/16 v4, 0x4e

    aget-object v4, v1, v4

    const/16 v5, 0x4f

    aget-object v5, v1, v5

    const/16 v6, 0x50

    aget-object v6, v1, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "About to instantiate receiver of type ["

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "]"

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v2, 0x51

    aget-object v2, v1, v2

    invoke-interface {v2, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lch/qos/logback/classic/net/ReceiverBase;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/net/ReceiverBase;

    .line 155
    .local v2, "receiver":Lch/qos/logback/classic/net/ReceiverBase;
    const/16 v3, 0x52

    aget-object v3, v1, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const-string v6, "context"

    invoke-static {v3, v4, v2, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {p3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/16 v3, 0x53

    aget-object v3, v1, v3

    const-class v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-interface {v3, v4, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    .line 158
    .local v3, "componentDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    const/16 v4, 0x54

    aget-object v4, v1, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0, v3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 159
    const-string v4, "delegate"

    invoke-static {v3, v0, p3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 160
    const/16 v4, 0x55

    aget-object v4, v1, v4

    const-class v6, Lgroovy/lang/Closure;

    invoke-interface {v4, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "resolveStrategy"

    invoke-static {v4, v0, p3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 161
    const/16 v0, 0x56

    aget-object v0, v1, v0

    invoke-interface {v0, p3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v3    # "componentDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    :cond_0
    nop

    .line 164
    const/16 v0, 0x57

    :try_start_0
    aget-object v0, v1, v0

    invoke-interface {v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v3, 0x58

    :try_start_1
    aget-object v3, v1, v3

    const/16 v4, 0x59

    aget-object v4, v1, v4

    const/16 v6, 0x5a

    aget-object v6, v1, v6

    const-string v7, "Failed to start receiver of type ["

    const/16 v8, 0x5b

    aget-object v1, v1, v8

    invoke-interface {v1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, p0, v1, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .end local v2    # "receiver":Lch/qos/logback/classic/net/ReceiverBase;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "aClass":Ljava/lang/Class;
    .end local p3    # "closure":Lgroovy/lang/Closure;
    return-void

    .restart local v2    # "receiver":Lch/qos/logback/classic/net/ReceiverBase;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "aClass":Ljava/lang/Class;
    .restart local p3    # "closure":Lgroovy/lang/Closure;
    :catchall_1
    move-exception v0

    :goto_1
    throw v0
.end method

.method public root(Lch/qos/logback/classic/Level;)V
    .locals 1
    .param p1, "level"    # Lch/qos/logback/classic/Level;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->root(Lch/qos/logback/classic/Level;Ljava/util/List;)V

    return-void
.end method

.method public root(Lch/qos/logback/classic/Level;Ljava/util/List;)V
    .locals 3
    .param p1, "level"    # Lch/qos/logback/classic/Level;
    .param p2, "appenderNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/16 v1, 0x2b

    aget-object v0, v0, v1

    const-string v1, "Root logger cannot be set to level null"

    invoke-interface {v0, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_0
    const/16 v1, 0x2c

    aget-object v1, v0, v1

    const/16 v2, 0x2d

    aget-object v0, v0, v2

    const-class v2, Lorg/slf4j/Logger;

    invoke-interface {v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "level":Lch/qos/logback/classic/Level;
    .end local p2    # "appenderNames":Ljava/util/List;
    :goto_0
    return-void
.end method

.method public scan()V
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    sget-boolean v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->__$stMC:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v0

    :cond_0
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->scan(Ljava/lang/String;)V

    return-void
.end method

.method public scan(Ljava/lang/String;)V
    .locals 9
    .param p1, "scanPeriodStr"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-class v2, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;

    .line 58
    .local v1, "rocTask":Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/CoreConstants;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    nop

    .line 61
    const/4 v2, 0x6

    :try_start_0
    aget-object v2, v0, v2

    const-class v3, Lch/qos/logback/core/util/Duration;

    invoke-interface {v2, v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lch/qos/logback/core/util/Duration;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/util/Duration;

    move-object v8, v2

    .line 62
    .local v8, "duration":Lch/qos/logback/core/util/Duration;
    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/16 v3, 0x8

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    .local v3, "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    const/16 v2, 0x9

    aget-object v2, v0, v2

    const/16 v4, 0xa

    aget-object v4, v0, v4

    invoke-interface {v4, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v4, 0xb

    aget-object v4, v0, v4

    invoke-interface {v4, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v4, 0xc

    aget-object v4, v0, v4

    const-class v7, Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v1

    invoke-interface/range {v2 .. v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v4, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .local v2, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;
    const/16 v4, 0xd

    aget-object v4, v0, v4

    const/16 v5, 0xe

    aget-object v5, v0, v5

    invoke-interface {v5, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/16 v4, 0xf

    aget-object v4, v0, v4

    const/16 v5, 0x10

    aget-object v5, v0, v5

    const-string v6, "Setting ReconfigureOnChangeTask scanning period to "

    invoke-interface {v5, v6, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v2    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;
    .end local v3    # "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v8    # "duration":Lch/qos/logback/core/util/Duration;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v2

    .line 68
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/16 v3, 0x11

    :try_start_1
    aget-object v3, v0, v3

    const/16 v4, 0x12

    aget-object v4, v0, v4

    const/16 v5, 0x13

    aget-object v0, v0, v5

    const-string v5, "Error while converting ["

    invoke-interface {v0, v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "] to long"

    invoke-interface {v4, v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, p0, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_2

    :goto_1
    throw v0

    .end local v1    # "rocTask":Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
    .end local p0    # "this":Lch/qos/logback/classic/gaffer/ConfigurationDelegate;
    .end local p1    # "scanPeriodStr":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void
.end method

.method public setAppenderList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/Appender;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->appenderList:Ljava/util/List;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public statusListener(Ljava/lang/Class;)V
    .locals 7
    .param p1, "listenerClass"    # Ljava/lang/Class;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 74
    const/16 v1, 0x14

    aget-object v1, v0, v1

    invoke-interface {v1, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lch/qos/logback/core/status/StatusListener;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/status/StatusListener;

    .line 75
    .local v1, "statusListener":Lch/qos/logback/core/status/StatusListener;
    const/16 v2, 0x15

    aget-object v2, v0, v2

    const/16 v3, 0x16

    aget-object v3, v0, v3

    const/16 v4, 0x17

    aget-object v4, v0, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    instance-of v2, v1, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v2, :cond_0

    .line 77
    const/16 v2, 0x18

    aget-object v2, v0, v2

    const-class v3, Lch/qos/logback/core/spi/ContextAware;

    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/spi/ContextAware;

    const/16 v4, 0x19

    aget-object v4, v0, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    instance-of v2, v1, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v2, :cond_1

    .line 80
    const/16 v2, 0x1a

    aget-object v2, v0, v2

    const-class v3, Lch/qos/logback/core/spi/LifeCycle;

    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    const/16 v2, 0x1b

    aget-object v2, v0, v2

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    aget-object v0, v0, v6

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Added status listener of type ["

    const-string v5, "]"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic super$2$getDeclaredOrigin()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public timestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    sget-boolean v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->__$stMC:Z

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v0

    :cond_0
    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->longUnbox(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->timestamp(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timestamp(Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "timeReference"    # J

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 197
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->longUnbox(Ljava/lang/Object;)J

    move-result-wide v2

    .line 199
    .local v2, "now":J
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/16 v1, 0x6c

    aget-object v1, v0, v1

    const-string v4, "Using current interpretation time, i.e. now, as time reference."

    invoke-interface {v1, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v1, 0x6d

    aget-object v1, v0, v1

    const-class v4, Ljava/lang/System;

    invoke-interface {v1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->longUnbox(Ljava/lang/Object;)J

    move-result-wide v1

    .end local v2    # "now":J
    .local v1, "now":J
    goto :goto_0

    .line 203
    .end local v1    # "now":J
    .restart local v2    # "now":J
    :cond_0
    move-wide v1, p2

    .line 204
    .end local v2    # "now":J
    .restart local v1    # "now":J
    const/16 v3, 0x6e

    aget-object v3, v0, v3

    const/16 v4, 0x6f

    aget-object v4, v0, v4

    const/16 v5, 0x70

    aget-object v5, v0, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Using "

    invoke-interface {v5, v7, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " as time reference."

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :goto_0
    const/16 v3, 0x71

    aget-object v3, v0, v3

    const-class v4, Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-interface {v3, v4, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/util/CachingDateFormatter;

    .line 207
    .local v3, "sdf":Lch/qos/logback/core/util/CachingDateFormatter;
    const/16 v4, 0x72

    aget-object v0, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    return-object v0
.end method

.method public turboFilter(Ljava/lang/Class;)V
    .locals 1

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->turboFilter(Ljava/lang/Class;Lgroovy/lang/Closure;)V

    return-void
.end method

.method public turboFilter(Ljava/lang/Class;Lgroovy/lang/Closure;)V
    .locals 7
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "closure"    # Lgroovy/lang/Closure;

    const-class v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 180
    const/16 v2, 0x5e

    aget-object v2, v1, v2

    const/16 v3, 0x5f

    aget-object v3, v1, v3

    const/16 v4, 0x60

    aget-object v4, v1, v4

    const/16 v5, 0x61

    aget-object v5, v1, v5

    invoke-interface {v5, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "About to instantiate turboFilter of type ["

    invoke-interface {v4, v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "]"

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v2, 0x62

    aget-object v2, v1, v2

    invoke-interface {v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lch/qos/logback/classic/turbo/TurboFilter;

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/turbo/TurboFilter;

    .line 182
    .local v2, "turboFilter":Lch/qos/logback/classic/turbo/TurboFilter;
    const/16 v3, 0x63

    aget-object v3, v1, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "context"

    invoke-static {v3, v4, v2, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/16 v3, 0x64

    aget-object v3, v1, v3

    const-class v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-interface {v3, v4, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    invoke-static {v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/gaffer/ComponentDelegate;

    .line 186
    .local v3, "componentDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    const/16 v4, 0x65

    aget-object v4, v1, v4

    invoke-interface {v4, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0, v3, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 187
    const-string v4, "delegate"

    invoke-static {v3, v0, p2, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 188
    const/16 v4, 0x66

    aget-object v4, v1, v4

    const-class v5, Lgroovy/lang/Closure;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "resolveStrategy"

    invoke-static {v4, v0, p2, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    .line 189
    const/16 v0, 0x67

    aget-object v0, v1, v0

    invoke-interface {v0, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v3    # "componentDelegate":Lch/qos/logback/classic/gaffer/ComponentDelegate;
    :cond_0
    const/16 v0, 0x68

    aget-object v0, v1, v0

    invoke-interface {v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v0, 0x69

    aget-object v0, v1, v0

    const-string v3, "Adding aforementioned turbo filter to context"

    invoke-interface {v0, p0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v0, 0x6a

    aget-object v0, v1, v0

    const/16 v3, 0x6b

    aget-object v1, v1, v3

    invoke-interface {v1, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
