.class public Lch/qos/logback/classic/spi/EventArgUtil;
.super Ljava/lang/Object;
.source "EventArgUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrangeArguments([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 47
    return-object p0
.end method

.method public static final extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    .line 24
    .local v1, "lastEntry":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 25
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 27
    :cond_1
    return-object v0

    .line 20
    .end local v1    # "lastEntry":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static successfulExtraction(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 51
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "argArray"    # [Ljava/lang/Object;

    .line 37
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    .line 40
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 41
    .local v0, "trimemdLen":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 42
    .local v1, "trimmed":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object v1

    .line 38
    .end local v0    # "trimemdLen":I
    .end local v1    # "trimmed":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-sensical empty or null argument array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
