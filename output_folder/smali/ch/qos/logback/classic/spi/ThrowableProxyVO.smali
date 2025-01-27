.class public Lch/qos/logback/classic/spi/ThrowableProxyVO;
.super Ljava/lang/Object;
.source "ThrowableProxyVO.java"

# interfaces
.implements Lch/qos/logback/classic/spi/IThrowableProxy;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xabbcdeca4d89c23L


# instance fields
.field private cause:Lch/qos/logback/classic/spi/IThrowableProxy;

.field private className:Ljava/lang/String;

.field private commonFramesCount:I

.field private message:Ljava/lang/String;

.field private stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

.field private suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;
    .locals 6
    .param p0, "throwableProxy"    # Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;

    invoke-direct {v0}, Lch/qos/logback/classic/spi/ThrowableProxyVO;-><init>()V

    .line 98
    .local v0, "tpvo":Lch/qos/logback/classic/spi/ThrowableProxyVO;
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    .line 99
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->message:Ljava/lang/String;

    .line 100
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v1

    iput v1, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->commonFramesCount:I

    .line 101
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v1

    iput-object v1, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 102
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    .line 103
    .local v1, "cause":Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v1, :cond_1

    .line 104
    invoke-static {v1}, Lch/qos/logback/classic/spi/ThrowableProxyVO;->build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;

    move-result-object v2

    iput-object v2, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 106
    :cond_1
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v2

    .line 107
    .local v2, "suppressed":[Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v2, :cond_2

    .line 108
    array-length v3, v2

    new-array v3, v3, [Lch/qos/logback/classic/spi/IThrowableProxy;

    iput-object v3, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    .line 109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 110
    iget-object v4, v0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    aget-object v5, v2, v3

    invoke-static {v5}, Lch/qos/logback/classic/spi/ThrowableProxyVO;->build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;

    move-result-object v5

    aput-object v5, v4, v3

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 67
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 69
    return v1

    .line 70
    :cond_2
    move-object v2, p1

    check-cast v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;

    .line 72
    .local v2, "other":Lch/qos/logback/classic/spi/ThrowableProxyVO;
    iget-object v3, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 73
    iget-object v3, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 74
    return v1

    .line 75
    :cond_3
    iget-object v4, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 76
    return v1

    .line 78
    :cond_4
    iget-object v3, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    iget-object v4, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 79
    return v1

    .line 81
    :cond_5
    iget-object v3, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    iget-object v4, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 82
    return v1

    .line 84
    :cond_6
    iget-object v3, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    if-nez v3, :cond_7

    .line 85
    iget-object v3, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    if-eqz v3, :cond_8

    .line 86
    return v1

    .line 87
    :cond_7
    iget-object v4, v2, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 88
    return v1

    .line 90
    :cond_8
    return v0
.end method

.method public getCause()Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonFrames()I
    .locals 1

    .line 39
    iget v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->commonFramesCount:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .locals 1

    .line 47
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    return-object v0
.end method

.method public getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    .line 51
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 59
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
