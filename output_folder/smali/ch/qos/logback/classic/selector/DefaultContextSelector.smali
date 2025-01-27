.class public Lch/qos/logback/classic/selector/DefaultContextSelector;
.super Ljava/lang/Object;
.source "DefaultContextSelector.java"

# interfaces
.implements Lch/qos/logback/classic/selector/ContextSelector;


# instance fields
.field private defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 27
    return-void
.end method


# virtual methods
.method public detachLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 1
    .param p1, "loggerContextName"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getContextNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lch/qos/logback/classic/selector/DefaultContextSelector;->getDefaultLoggerContext()Lch/qos/logback/classic/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
