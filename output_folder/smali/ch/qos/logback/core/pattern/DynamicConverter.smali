.class public abstract Lch/qos/logback/core/pattern/DynamicConverter;
.super Lch/qos/logback/core/pattern/FormattingConverter;
.source "DynamicConverter.java"

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;
.implements Lch/qos/logback/core/spi/ContextAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/FormattingConverter<",
        "TE;>;",
        "Lch/qos/logback/core/spi/LifeCycle;",
        "Lch/qos/logback/core/spi/ContextAware;"
    }
.end annotation


# instance fields
.field cab:Lch/qos/logback/core/spi/ContextAwareBase;

.field private optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/pattern/FormattingConverter;-><init>()V

    .line 26
    new-instance v0, Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-direct {v0, p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>(Lch/qos/logback/core/spi/ContextAware;)V

    iput-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->started:Z

    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 109
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public addInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 89
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 93
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 1
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 85
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 86
    return-void
.end method

.method public addWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 101
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 81
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/ContextAwareBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFirstOption()Ljava/lang/String;
    .locals 2

    .line 65
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->optionList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->optionList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 66
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->optionList:Ljava/util/List;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 51
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->started:Z

    return v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 77
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->cab:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 78
    return-void
.end method

.method public setOptionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    .local p1, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/DynamicConverter;->optionList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .line 43
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->started:Z

    .line 44
    return-void
.end method

.method public stop()V
    .locals 1

    .line 47
    .local p0, "this":Lch/qos/logback/core/pattern/DynamicConverter;, "Lch/qos/logback/core/pattern/DynamicConverter<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/DynamicConverter;->started:Z

    .line 48
    return-void
.end method
