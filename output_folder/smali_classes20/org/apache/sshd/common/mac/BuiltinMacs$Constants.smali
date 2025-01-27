.class public final Lorg/apache/sshd/common/mac/BuiltinMacs$Constants;
.super Ljava/lang/Object;
.source "BuiltinMacs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/mac/BuiltinMacs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final ETM_HMAC_SHA1:Ljava/lang/String; = "hmac-sha1-etm@openssh.com"

.field public static final ETM_HMAC_SHA2_256:Ljava/lang/String; = "hmac-sha2-256-etm@openssh.com"

.field public static final ETM_HMAC_SHA2_512:Ljava/lang/String; = "hmac-sha2-512-etm@openssh.com"

.field public static final HMAC_MD5:Ljava/lang/String; = "hmac-md5"

.field public static final HMAC_MD5_96:Ljava/lang/String; = "hmac-md5-96"

.field public static final HMAC_SHA1:Ljava/lang/String; = "hmac-sha1"

.field public static final HMAC_SHA1_96:Ljava/lang/String; = "hmac-sha1-96"

.field public static final HMAC_SHA2_256:Ljava/lang/String; = "hmac-sha2-256"

.field public static final HMAC_SHA2_512:Ljava/lang/String; = "hmac-sha2-512"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
