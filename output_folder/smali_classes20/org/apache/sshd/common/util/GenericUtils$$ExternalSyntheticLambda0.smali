.class public final synthetic Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Iterable;

    iget-object v1, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->lambda$wrapIterable$8(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
