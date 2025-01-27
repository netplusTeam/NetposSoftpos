.class final Lorg/apache/sshd/common/util/GenericUtils$1;
.super Ljava/lang/Object;
.source "GenericUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/GenericUtils;->wrapIterator(Ljava/util/Iterator;Ljava/util/function/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/function/Function;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lorg/apache/sshd/common/util/GenericUtils$1;->val$iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/sshd/common/util/GenericUtils$1;->val$mapper:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/apache/sshd/common/util/GenericUtils$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lorg/apache/sshd/common/util/GenericUtils$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 976
    .local v0, "value":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lorg/apache/sshd/common/util/GenericUtils$1;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
