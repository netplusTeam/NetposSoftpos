.class public interface abstract Lorg/apache/sshd/common/util/io/FileInfoExtractor;
.super Ljava/lang/Object;
.source "FileInfoExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EXISTS:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISDIR:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISREG:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISSYMLINK:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LASTMODIFIED:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSIONS:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SIZE:Lorg/apache/sshd/common/util/io/FileInfoExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/io/FileInfoExtractor<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->EXISTS:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 39
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->ISDIR:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 41
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->ISREG:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 43
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->ISSYMLINK:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 45
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->SIZE:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 47
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->PERMISSIONS:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    .line 49
    new-instance v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->LASTMODIFIED:Lorg/apache/sshd/common/util/io/FileInfoExtractor;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$static$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Long;
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs abstract infoOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
