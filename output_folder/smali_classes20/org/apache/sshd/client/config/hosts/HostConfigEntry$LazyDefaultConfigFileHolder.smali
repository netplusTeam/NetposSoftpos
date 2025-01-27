.class final Lorg/apache/sshd/client/config/hosts/HostConfigEntry$LazyDefaultConfigFileHolder;
.super Ljava/lang/Object;
.source "HostConfigEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyDefaultConfigFileHolder"
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getDefaultKeysFolderPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "config"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$LazyDefaultConfigFileHolder;->CONFIG_FILE:Ljava/nio/file/Path;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/nio/file/Path;
    .locals 1

    .line 108
    sget-object v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntry$LazyDefaultConfigFileHolder;->CONFIG_FILE:Ljava/nio/file/Path;

    return-object v0
.end method
