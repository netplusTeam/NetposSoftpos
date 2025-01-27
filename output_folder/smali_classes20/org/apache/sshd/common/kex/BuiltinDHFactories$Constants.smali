.class public final Lorg/apache/sshd/common/kex/BuiltinDHFactories$Constants;
.super Ljava/lang/Object;
.source "BuiltinDHFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/BuiltinDHFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final DIFFIE_HELLMAN_GROUP14_SHA1:Ljava/lang/String; = "diffie-hellman-group14-sha1"

.field public static final DIFFIE_HELLMAN_GROUP14_SHA256:Ljava/lang/String; = "diffie-hellman-group14-sha256"

.field public static final DIFFIE_HELLMAN_GROUP15_SHA512:Ljava/lang/String; = "diffie-hellman-group15-sha512"

.field public static final DIFFIE_HELLMAN_GROUP16_SHA512:Ljava/lang/String; = "diffie-hellman-group16-sha512"

.field public static final DIFFIE_HELLMAN_GROUP17_SHA512:Ljava/lang/String; = "diffie-hellman-group17-sha512"

.field public static final DIFFIE_HELLMAN_GROUP18_SHA512:Ljava/lang/String; = "diffie-hellman-group18-sha512"

.field public static final DIFFIE_HELLMAN_GROUP1_SHA1:Ljava/lang/String; = "diffie-hellman-group1-sha1"

.field public static final DIFFIE_HELLMAN_GROUP_EXCHANGE_SHA1:Ljava/lang/String; = "diffie-hellman-group-exchange-sha1"

.field public static final DIFFIE_HELLMAN_GROUP_EXCHANGE_SHA256:Ljava/lang/String; = "diffie-hellman-group-exchange-sha256"

.field public static final ECDH_SHA2_NISTP256:Ljava/lang/String; = "ecdh-sha2-nistp256"

.field public static final ECDH_SHA2_NISTP384:Ljava/lang/String; = "ecdh-sha2-nistp384"

.field public static final ECDH_SHA2_NISTP521:Ljava/lang/String; = "ecdh-sha2-nistp521"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
