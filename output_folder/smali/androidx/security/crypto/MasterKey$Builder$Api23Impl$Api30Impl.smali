.class Landroidx/security/crypto/MasterKey$Builder$Api23Impl$Api30Impl;
.super Ljava/lang/Object;
.source "MasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/MasterKey$Builder$Api23Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method static setUserAuthenticationParameters(Landroid/security/keystore/KeyGenParameterSpec$Builder;II)V
    .locals 0
    .param p0, "builder"    # Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .param p1, "timeout"    # I
    .param p2, "type"    # I

    .line 406
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 407
    return-void
.end method
