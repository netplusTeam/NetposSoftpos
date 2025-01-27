.class public Lch/qos/logback/classic/util/ContextSelectorStaticBinder;
.super Ljava/lang/Object;
.source "ContextSelectorStaticBinder.java"


# static fields
.field static singleton:Lch/qos/logback/classic/util/ContextSelectorStaticBinder;


# instance fields
.field contextSelector:Lch/qos/logback/classic/selector/ContextSelector;

.field key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;

    invoke-direct {v0}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;-><init>()V

    sput-object v0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->singleton:Lch/qos/logback/classic/util/ContextSelectorStaticBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dynamicalContextSelector(Lch/qos/logback/classic/LoggerContext;Ljava/lang/String;)Lch/qos/logback/classic/selector/ContextSelector;
    .locals 5
    .param p0, "defaultLoggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p1, "contextSelectorStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lch/qos/logback/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "contextSelectorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lch/qos/logback/classic/LoggerContext;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 93
    .local v2, "cons":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/selector/ContextSelector;

    return-object v1
.end method

.method public static getSingleton()Lch/qos/logback/classic/util/ContextSelectorStaticBinder;
    .locals 1

    .line 41
    sget-object v0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->singleton:Lch/qos/logback/classic/util/ContextSelectorStaticBinder;

    return-object v0
.end method


# virtual methods
.method public getContextSelector()Lch/qos/logback/classic/selector/ContextSelector;
    .locals 1

    .line 97
    iget-object v0, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->contextSelector:Lch/qos/logback/classic/selector/ContextSelector;

    return-object v0
.end method

.method public init(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "defaultLoggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 57
    iput-object p2, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->key:Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    if-ne v0, p2, :cond_3

    .line 62
    :goto_0
    const-string v0, "logback.ContextSelector"

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "contextSelectorStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 64
    new-instance v1, Lch/qos/logback/classic/selector/DefaultContextSelector;

    invoke-direct {v1, p1}, Lch/qos/logback/classic/selector/DefaultContextSelector;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v1, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->contextSelector:Lch/qos/logback/classic/selector/ContextSelector;

    goto :goto_1

    .line 65
    :cond_1
    const-string v1, "JNDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Lch/qos/logback/classic/selector/ContextJNDISelector;

    invoke-direct {v1, p1}, Lch/qos/logback/classic/selector/ContextJNDISelector;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v1, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->contextSelector:Lch/qos/logback/classic/selector/ContextSelector;

    goto :goto_1

    .line 69
    :cond_2
    invoke-static {p1, v0}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->dynamicalContextSelector(Lch/qos/logback/classic/LoggerContext;Ljava/lang/String;)Lch/qos/logback/classic/selector/ContextSelector;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->contextSelector:Lch/qos/logback/classic/selector/ContextSelector;

    .line 71
    :goto_1
    return-void

    .line 59
    .end local v0    # "contextSelectorStr":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Only certain classes can access this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
