.class public final synthetic Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/io/DirectoryScanner$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/DirectoryScanner;->lambda$setIncludes$1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
