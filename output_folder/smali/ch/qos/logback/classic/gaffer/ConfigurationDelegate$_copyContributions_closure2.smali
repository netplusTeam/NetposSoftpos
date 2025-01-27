.class Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;
.super Lgroovy/lang/Closure;
.source "ConfigurationDelegate.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/qos/logback/classic/gaffer/ConfigurationDelegate;->copyContributions(Lch/qos/logback/classic/gaffer/AppenderDelegate;Lch/qos/logback/core/Appender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private synthetic appender:Lgroovy/lang/Reference;

.field private synthetic appenderDelegate:Lgroovy/lang/Reference;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "metaClass"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "doCall"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;Lgroovy/lang/Reference;)V
    .locals 0

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appenderDelegate:Lgroovy/lang/Reference;

    iput-object p4, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appender:Lgroovy/lang/Reference;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p0, p1, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "oldName"    # Ljava/lang/Object;
    .param p2, "newName"    # Ljava/lang/Object;

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appender:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, ""

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v7}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getMethodPointer(Ljava/lang/Object;Ljava/lang/String;)Lgroovy/lang/Closure;

    move-result-object v1

    aget-object v0, v0, v5

    iget-object v2, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appenderDelegate:Lgroovy/lang/Reference;

    invoke-virtual {v2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v5

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAppender()Lch/qos/logback/core/Appender;
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appender:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lch/qos/logback/core/Appender;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/Appender;

    return-object v0
.end method

.method public getAppenderDelegate()Lch/qos/logback/classic/gaffer/AppenderDelegate;
    .locals 2

    invoke-static {}, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lch/qos/logback/classic/gaffer/ConfigurationDelegate$_copyContributions_closure2;->appenderDelegate:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/gaffer/AppenderDelegate;

    return-object v0
.end method
