.class public Lch/qos/logback/core/spi/AppenderAttachableImpl;
.super Ljava/lang/Object;
.source "AppenderAttachableImpl.java"

# interfaces
.implements Lch/qos/logback/core/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/spi/AppenderAttachable<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final START:J


# instance fields
.field private final appenderList:Lch/qos/logback/core/util/COWArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/util/COWArrayList<",
            "Lch/qos/logback/core/Appender<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->START:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lch/qos/logback/core/util/COWArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lch/qos/logback/core/Appender;

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/COWArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    return-void
.end method


# virtual methods
.method public addAppender(Lch/qos/logback/core/Appender;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    .local p1, "newAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/util/COWArrayList;->addIfAbsent(Ljava/lang/Object;)V

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument disallowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendLoopOnAppenders(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 47
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 48
    .local v0, "size":I
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->asTypedArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lch/qos/logback/core/Appender;

    .line 49
    .local v1, "appenderArray":[Lch/qos/logback/core/Appender;, "[Lch/qos/logback/core/Appender<TE;>;"
    array-length v2, v1

    .line 50
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 51
    aget-object v4, v1, v3

    invoke-interface {v4, p1}, Lch/qos/logback/core/Appender;->doAppend(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "i":I
    :cond_0
    return v0
.end method

.method public detachAndStopAllAppenders()V
    .locals 2

    .line 106
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/Appender;

    .line 107
    .local v1, "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {v1}, Lch/qos/logback/core/Appender;->stop()V

    .line 108
    .end local v1    # "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    goto :goto_0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->clear()V

    .line 110
    return-void
.end method

.method public detachAppender(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    .local p1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/util/COWArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    .local v0, "result":Z
    return v0
.end method

.method public detachAppender(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 132
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "removed":Z
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    .line 137
    .local v2, "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {v2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v3, v2}, Lch/qos/logback/core/util/COWArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    goto :goto_1

    .line 141
    .end local v2    # "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    :cond_1
    goto :goto_0

    .line 142
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return v0
.end method

.method public getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 75
    return-object v0

    .line 77
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    .line 78
    .local v2, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {v2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    return-object v2

    .line 81
    .end local v2    # "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    :cond_1
    goto :goto_0

    .line 82
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public isAttached(Lch/qos/logback/core/Appender;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)Z"
        }
    .end annotation

    .line 92
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    .local p1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v1}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/Appender;

    .line 96
    .local v2, "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    if-ne v2, p1, :cond_1

    .line 97
    const/4 v0, 0x1

    return v0

    .line 98
    .end local v2    # "a":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    :cond_1
    goto :goto_0

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method public iteratorForAppenders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/Appender<",
            "TE;>;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lch/qos/logback/core/spi/AppenderAttachableImpl;, "Lch/qos/logback/core/spi/AppenderAttachableImpl<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AppenderAttachableImpl;->appenderList:Lch/qos/logback/core/util/COWArrayList;

    invoke-virtual {v0}, Lch/qos/logback/core/util/COWArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
