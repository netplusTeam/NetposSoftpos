.class Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;
.super Ljava/lang/Object;
.source "RootedFileSystemProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

.field final synthetic val$iter:Ljava/util/Iterator;

.field final synthetic val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;Ljava/util/Iterator;Lorg/apache/sshd/common/file/root/RootedFileSystem;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    .line 215
    iput-object p1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    iput-object p2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->val$iter:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->next()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/Path;
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->this$0:Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;

    iget-object v1, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->val$rfs:Lorg/apache/sshd/common/file/root/RootedFileSystem;

    iget-object v2, p0, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/file/root/RootedFileSystemProvider;->root(Lorg/apache/sshd/common/file/root/RootedFileSystem;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
