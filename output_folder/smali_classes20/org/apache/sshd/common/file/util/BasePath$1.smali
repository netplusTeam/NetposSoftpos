.class Lorg/apache/sshd/common/file/util/BasePath$1;
.super Ljava/util/AbstractList;
.source "BasePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/file/util/BasePath;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/file/util/BasePath;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/file/util/BasePath;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/file/util/BasePath;

    .line 318
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath$1;, "Lorg/apache/sshd/common/file/util/BasePath$1;"
    iput-object p1, p0, Lorg/apache/sshd/common/file/util/BasePath$1;->this$0:Lorg/apache/sshd/common/file/util/BasePath;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 318
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath$1;, "Lorg/apache/sshd/common/file/util/BasePath$1;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/file/util/BasePath$1;->get(I)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/nio/file/Path;
    .locals 1
    .param p1, "index"    # I

    .line 321
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath$1;, "Lorg/apache/sshd/common/file/util/BasePath$1;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath$1;->this$0:Lorg/apache/sshd/common/file/util/BasePath;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/file/util/BasePath;->getName(I)Lorg/apache/sshd/common/file/util/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 326
    .local p0, "this":Lorg/apache/sshd/common/file/util/BasePath$1;, "Lorg/apache/sshd/common/file/util/BasePath$1;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BasePath$1;->this$0:Lorg/apache/sshd/common/file/util/BasePath;

    invoke-virtual {v0}, Lorg/apache/sshd/common/file/util/BasePath;->getNameCount()I

    move-result v0

    return v0
.end method
