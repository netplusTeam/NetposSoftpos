.class public Lch/qos/logback/classic/gaffer/AppenderDelegate;
.super Lch/qos/logback/classic/gaffer/ComponentDelegate;
.source "AppenderDelegate.groovy"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/classic/gaffer/AppenderDelegate$_closure1;
    }
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private appendersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/Appender<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "collectEntries"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "isAssignableFrom"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "class"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v2, "component"

    aput-object v2, p0, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "plus"

    aput-object v3, p0, v0

    const/4 v0, 0x5

    aput-object v3, p0, v0

    const/4 v0, 0x6

    aput-object v3, p0, v0

    const/4 v0, 0x7

    const-string v3, "name"

    aput-object v3, p0, v0

    const/16 v0, 0x8

    aput-object v1, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v3, p0, v0

    const/16 v0, 0xb

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    const-string v1, "addAppender"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    aput-object v2, p0, v0

    const/16 v0, 0xe

    const-string v1, "getAt"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Lch/qos/logback/core/Appender;)V
    .locals 1
    .param p1, "appender"    # Lch/qos/logback/core/Appender;

    invoke-static {}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 29
    invoke-direct {p0, p1}, Lch/qos/logback/classic/gaffer/ComponentDelegate;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/Appender;Ljava/util/List;)V
    .locals 3
    .param p1, "appender"    # Lch/qos/logback/core/Appender;
    .param p2, "appenders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/Appender<",
            "*>;>;)V"
        }
    .end annotation

    invoke-static {}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lch/qos/logback/classic/gaffer/ComponentDelegate;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    .line 34
    aget-object v0, v0, v1

    new-instance v1, Lch/qos/logback/classic/gaffer/AppenderDelegate$_closure1;

    invoke-direct {v1, p0, p0}, Lch/qos/logback/classic/gaffer/AppenderDelegate$_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public appenderRef(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 42
    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-class v3, Lch/qos/logback/core/spi/AppenderAttachable;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-interface {v5, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 46
    const/16 v1, 0xc

    aget-object v1, v0, v1

    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-interface {v2, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xe

    aget-object v0, v0, v3

    iget-object v3, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 43
    :cond_0
    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-interface {v6, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, " does not implement "

    invoke-interface {v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    const-class v5, Lch/qos/logback/core/spi/AppenderAttachable;

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "."

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "errorMessage":Ljava/lang/Object;
    const/16 v2, 0xb

    aget-object v0, v0, v2

    const-class v2, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0, v2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getAppendersByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/Appender<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lch/qos/logback/classic/gaffer/AppenderDelegate;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 38
    const-string v0, "appender"

    return-object v0
.end method

.method public setAppendersByName(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/Appender<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/classic/gaffer/AppenderDelegate;->appendersByName:Ljava/util/Map;

    return-void
.end method

.method public synthetic super$3$$getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    invoke-super {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$3$getLabel()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lch/qos/logback/classic/gaffer/ComponentDelegate;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
