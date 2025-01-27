.class public final Lorg/apache/sshd/common/config/keys/BuiltinIdentities$Constants;
.super Ljava/lang/Object;
.source "BuiltinIdentities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final DSA:Ljava/lang/String; = "DSA"

.field public static final ECDSA:Ljava/lang/String; = "ECDSA"

.field public static final ED25519:Ljava/lang/String; = "ED25519"

.field public static final RSA:Ljava/lang/String; = "RSA"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
