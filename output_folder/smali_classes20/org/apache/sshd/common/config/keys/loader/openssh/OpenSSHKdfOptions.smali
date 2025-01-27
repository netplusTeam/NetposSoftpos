.class public interface abstract Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
.super Ljava/lang/Object;
.source "OpenSSHKdfOptions.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyDecryptor;


# static fields
.field public static final IS_NONE_KDF:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_KDF_NAME_LENGTH:I = 0x400

.field public static final MAX_KDF_OPTIONS_SIZE:I = 0x7fff

.field public static final NONE_KDF:Ljava/lang/String; = "none"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;->IS_NONE_KDF:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public abstract initialize(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
