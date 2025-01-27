.class final Lorg/apache/sshd/common/config/keys/IdentityUtils$LazyDefaultUserHomeFolderHolder;
.super Ljava/lang/Object;
.source "IdentityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/IdentityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyDefaultUserHomeFolderHolder"
.end annotation


# static fields
.field private static final PATH:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    nop

    .line 52
    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No user home"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/IdentityUtils$LazyDefaultUserHomeFolderHolder;->PATH:Ljava/nio/file/Path;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/nio/file/Path;
    .locals 1

    .line 50
    sget-object v0, Lorg/apache/sshd/common/config/keys/IdentityUtils$LazyDefaultUserHomeFolderHolder;->PATH:Ljava/nio/file/Path;

    return-object v0
.end method
