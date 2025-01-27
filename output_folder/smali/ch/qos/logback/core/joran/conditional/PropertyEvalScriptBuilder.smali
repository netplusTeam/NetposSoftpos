.class public Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "PropertyEvalScriptBuilder.java"


# static fields
.field private static SCRIPT_PREFIX:Ljava/lang/String;

.field private static SCRIPT_SUFFIX:Ljava/lang/String;


# instance fields
.field final localPropContainer:Lch/qos/logback/core/spi/PropertyContainer;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string/jumbo v0, "public boolean evaluate() { return "

    sput-object v0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->SCRIPT_PREFIX:Ljava/lang/String;

    .line 30
    const-string v0, "; }"

    sput-object v0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->SCRIPT_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/spi/PropertyContainer;)V
    .locals 1
    .param p1, "localPropContainer"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 34
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->map:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->localPropContainer:Lch/qos/logback/core/spi/PropertyContainer;

    .line 36
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lch/qos/logback/core/joran/conditional/Condition;
    .locals 8
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lorg/codehaus/commons/compiler/CompileException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/codehaus/janino/ClassBodyEvaluator;

    invoke-direct {v0}, Lorg/codehaus/janino/ClassBodyEvaluator;-><init>()V

    .line 44
    .local v0, "cbe":Lorg/codehaus/janino/ClassBodyEvaluator;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lch/qos/logback/core/joran/conditional/Condition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/ClassBodyEvaluator;->setImplementedInterfaces([Ljava/lang/Class;)V

    .line 45
    const-class v2, Lch/qos/logback/core/joran/conditional/PropertyWrapperForScripts;

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/ClassBodyEvaluator;->setExtendedClass(Ljava/lang/Class;)V

    .line 46
    const-class v2, Lorg/codehaus/janino/ClassBodyEvaluator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/ClassBodyEvaluator;->setParentClassLoader(Ljava/lang/ClassLoader;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->SCRIPT_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->SCRIPT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/ClassBodyEvaluator;->cook(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lorg/codehaus/janino/ClassBodyEvaluator;->getClazz()Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/joran/conditional/Condition;

    .line 51
    .local v3, "instance":Lch/qos/logback/core/joran/conditional/Condition;
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lch/qos/logback/core/spi/PropertyContainer;

    aput-object v7, v6, v4

    const-class v7, Lch/qos/logback/core/spi/PropertyContainer;

    aput-object v7, v6, v1

    const-string/jumbo v7, "setPropertyContainers"

    invoke-virtual {v2, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 52
    .local v6, "setMapMethod":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->localPropContainer:Lch/qos/logback/core/spi/PropertyContainer;

    aput-object v7, v5, v4

    iget-object v4, p0, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->context:Lch/qos/logback/core/Context;

    aput-object v4, v5, v1

    invoke-virtual {v6, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v3
.end method
