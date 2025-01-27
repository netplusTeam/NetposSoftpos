.class public Lio/netty/util/ResourceLeakException;
.super Ljava/lang/RuntimeException;
.source "ResourceLeakException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63bb69b56d4a8f48L


# instance fields
.field private final cachedStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lio/netty/util/ResourceLeakException;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    if-ne p1, p0, :cond_1

    .line 66
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_1
    iget-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    move-object v1, p1

    check-cast v1, Lio/netty/util/ResourceLeakException;

    iget-object v1, v1, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 52
    iget-object v0, p0, Lio/netty/util/ResourceLeakException;->cachedStackTrace:[Ljava/lang/StackTraceElement;

    .line 53
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 54
    .local v1, "hashCode":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 55
    .local v4, "e":Ljava/lang/StackTraceElement;
    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v6

    add-int v1, v5, v6

    .line 54
    .end local v4    # "e":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return v1
.end method
