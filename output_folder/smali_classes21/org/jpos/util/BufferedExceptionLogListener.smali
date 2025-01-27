.class public Lorg/jpos/util/BufferedExceptionLogListener;
.super Lorg/jpos/util/BufferedLogListener;
.source "BufferedExceptionLogListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/jpos/util/BufferedLogListener;-><init>()V

    return-void
.end method

.method private hasException(Lorg/jpos/util/LogEvent;)Z
    .locals 3
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 30
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 32
    const/4 v0, 0x1

    return v0

    .line 33
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 24
    invoke-direct {p0, p1}, Lorg/jpos/util/BufferedExceptionLogListener;->hasException(Lorg/jpos/util/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0, p1}, Lorg/jpos/util/BufferedLogListener;->log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;

    .line 26
    :cond_0
    return-object p1
.end method
