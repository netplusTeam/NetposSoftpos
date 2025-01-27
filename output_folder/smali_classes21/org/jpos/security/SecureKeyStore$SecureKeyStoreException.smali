.class public Lorg/jpos/security/SecureKeyStore$SecureKeyStoreException;
.super Lorg/jpos/iso/ISOException;
.source "SecureKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/security/SecureKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureKeyStoreException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b6f4ec482b0263aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/jpos/iso/ISOException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "nested"    # Ljava/lang/Exception;

    .line 56
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "nested"    # Ljava/lang/Exception;

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
