.class final Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator$LazyDefaultAuthorizedKeysFileHolder;
.super Ljava/lang/Object;
.source "AuthorizedKeysAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyDefaultAuthorizedKeysFileHolder"
.end annotation


# static fields
.field private static final KEYS_FILE:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "authorized_keys"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator$LazyDefaultAuthorizedKeysFileHolder;->KEYS_FILE:Ljava/nio/file/Path;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/nio/file/Path;
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/sshd/server/config/keys/AuthorizedKeysAuthenticator$LazyDefaultAuthorizedKeysFileHolder;->KEYS_FILE:Ljava/nio/file/Path;

    return-object v0
.end method
