.class public final Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;
.super Ljava/lang/Object;
.source "BuiltinCiphers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/BuiltinCiphers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final AES128_CBC:Ljava/lang/String; = "aes128-cbc"

.field public static final AES128_CTR:Ljava/lang/String; = "aes128-ctr"

.field public static final AES192_CBC:Ljava/lang/String; = "aes192-cbc"

.field public static final AES192_CTR:Ljava/lang/String; = "aes192-ctr"

.field public static final AES256_CBC:Ljava/lang/String; = "aes256-cbc"

.field public static final AES256_CTR:Ljava/lang/String; = "aes256-ctr"

.field public static final ARCFOUR128:Ljava/lang/String; = "arcfour128"

.field public static final ARCFOUR256:Ljava/lang/String; = "arcfour256"

.field public static final BLOWFISH_CBC:Ljava/lang/String; = "blowfish-cbc"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final NONE_CIPHER_PATTERN:Ljava/util/regex/Pattern;

.field public static final TRIPLE_DES_CBC:Ljava/lang/String; = "3des-cbc"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    nop

    .line 327
    const-string v0, "(^|.*,)none($|,.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->NONE_CIPHER_PATTERN:Ljava/util/regex/Pattern;

    .line 326
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isNoneCipherIncluded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 349
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/BuiltinCiphers$Constants;->NONE_CIPHER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 353
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method
