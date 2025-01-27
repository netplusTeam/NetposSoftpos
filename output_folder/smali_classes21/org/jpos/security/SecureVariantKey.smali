.class public abstract Lorg/jpos/security/SecureVariantKey;
.super Lorg/jpos/security/SecureKey;
.source "SecureVariantKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2bef219551ce0803L


# instance fields
.field protected variant:Ljava/lang/Byte;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/jpos/security/SecureKey;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getVariant()B
.end method

.method public setVariant(B)V
    .locals 1
    .param p1, "variant"    # B

    .line 44
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/security/SecureVariantKey;->variant:Ljava/lang/Byte;

    .line 45
    return-void
.end method
