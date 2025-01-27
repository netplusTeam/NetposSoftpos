.class public final Lorg/apache/sshd/common/cipher/ECCurves$Constants;
.super Ljava/lang/Object;
.source "ECCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/ECCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final ECDSA_SHA2_PREFIX:Ljava/lang/String; = "ecdsa-sha2-"

.field public static final NISTP256:Ljava/lang/String; = "nistp256"

.field public static final NISTP384:Ljava/lang/String; = "nistp384"

.field public static final NISTP521:Ljava/lang/String; = "nistp521"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
