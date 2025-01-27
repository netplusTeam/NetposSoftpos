.class public final Lorg/apache/sshd/common/digest/BuiltinDigests$Constants;
.super Ljava/lang/Object;
.source "BuiltinDigests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/digest/BuiltinDigests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final SHA1:Ljava/lang/String; = "sha1"

.field public static final SHA224:Ljava/lang/String; = "sha224"

.field public static final SHA256:Ljava/lang/String; = "sha256"

.field public static final SHA384:Ljava/lang/String; = "sha384"

.field public static final SHA512:Ljava/lang/String; = "sha512"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
