.class public Lio/netty/handler/codec/EncoderException;
.super Lio/netty/handler/codec/CodecException;
.source "EncoderException.java"


# static fields
.field private static final serialVersionUID:J = -0x4695883f7ecc4566L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/netty/handler/codec/CodecException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 35
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 49
    invoke-direct {p0, p1}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
