.class public Lorg/jpos/security/SMException;
.super Lorg/jpos/iso/ISOException;
.source "SMException.java"


# static fields
.field private static final serialVersionUID:J = 0x591638eabe3f96e1L


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/ISOException;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SMException;->nested:Ljava/lang/Exception;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 42
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SMException;->nested:Ljava/lang/Exception;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SMException;->nested:Ljava/lang/Exception;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SMException;->nested:Ljava/lang/Exception;

    .line 47
    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "security-module-exception"

    return-object v0
.end method
