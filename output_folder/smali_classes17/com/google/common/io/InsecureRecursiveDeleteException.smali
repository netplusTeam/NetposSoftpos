.class public final Lcom/google/common/io/InsecureRecursiveDeleteException;
.super Ljava/nio/file/FileSystemException;
.source "InsecureRecursiveDeleteException.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 45
    const/4 v0, 0x0

    const-string v1, "unable to guarantee security of recursive delete"

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
