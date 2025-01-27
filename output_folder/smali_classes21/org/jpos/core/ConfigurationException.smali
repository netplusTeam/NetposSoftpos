.class public Lorg/jpos/core/ConfigurationException;
.super Lorg/jpos/iso/ISOException;
.source "ConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = -0x4dc9d0cc1cd567e4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jpos/iso/ISOException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "nested"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "nested"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method
