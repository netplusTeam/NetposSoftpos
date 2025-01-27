.class public abstract Lch/qos/logback/core/filter/Filter;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Filter.java"

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/spi/LifeCycle;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field start:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/filter/Filter;->start:Z

    return-void
.end method


# virtual methods
.method public abstract decide(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/filter/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 42
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/filter/Filter;->start:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/filter/Filter;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public start()V
    .locals 1

    .line 38
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/filter/Filter;->start:Z

    .line 39
    return-void
.end method

.method public stop()V
    .locals 1

    .line 46
    .local p0, "this":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/filter/Filter;->start:Z

    .line 47
    return-void
.end method
