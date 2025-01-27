.class Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$NullReadChannel;
.super Ljava/lang/Object;
.source "SSLDataChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullReadChannel"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;

    .line 1159
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$NullReadChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1173
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1177
    const/4 v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 1162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reading from a channel that should not be used. This indicates that a channel is switching between blocking and non-blocking mode while a concurrent read happens. We do not support such behavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
