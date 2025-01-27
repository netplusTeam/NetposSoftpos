.class public final synthetic Lorg/apache/sshd/common/util/io/FileInfoExtractor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/io/FileInfoExtractor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final infoOf(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/io/FileInfoExtractor;->lambda$static$1(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
