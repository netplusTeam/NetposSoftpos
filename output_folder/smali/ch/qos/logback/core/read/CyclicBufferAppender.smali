.class public Lch/qos/logback/core/read/CyclicBufferAppender;
.super Lch/qos/logback/core/AppenderBase;
.source "CyclicBufferAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field cb:Lch/qos/logback/core/helpers/CyclicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;"
        }
    .end annotation
.end field

.field maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 29
    const/16 v0, 0x200

    iput v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->maxSize:I

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/read/CyclicBufferAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->add(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/read/CyclicBufferAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/helpers/CyclicBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 50
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/read/CyclicBufferAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lch/qos/logback/core/helpers/CyclicBuffer;->length()I

    move-result v0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 73
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->maxSize:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 66
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lch/qos/logback/core/helpers/CyclicBuffer;->clear()V

    .line 67
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .line 77
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->maxSize:I

    .line 78
    return-void
.end method

.method public start()V
    .locals 2

    .line 32
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    new-instance v0, Lch/qos/logback/core/helpers/CyclicBuffer;

    iget v1, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->maxSize:I

    invoke-direct {v0, v1}, Lch/qos/logback/core/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    .line 33
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    .line 34
    return-void
.end method

.method public stop()V
    .locals 1

    .line 37
    .local p0, "this":Lch/qos/logback/core/read/CyclicBufferAppender;, "Lch/qos/logback/core/read/CyclicBufferAppender<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/read/CyclicBufferAppender;->cb:Lch/qos/logback/core/helpers/CyclicBuffer;

    .line 38
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->stop()V

    .line 39
    return-void
.end method
