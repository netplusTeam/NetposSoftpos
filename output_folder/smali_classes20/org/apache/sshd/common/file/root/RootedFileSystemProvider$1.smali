.class Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;
.super Ljava/lang/Object;
.source "RootedFileSystemProvider.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

.field final synthetic val$ds:Ljava/nio/file/DirectoryStream;

.field final synthetic val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/DirectoryStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    .line 201
    iput-object p1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    iput-object p2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;

    iput-object p3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->val$ds:Ljava/nio/file/DirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->val$ds:Ljava/nio/file/DirectoryStream;

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 210
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;

    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$1;->val$ds:Ljava/nio/file/DirectoryStream;

    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
