.class public final synthetic Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;->f$0:Ljava/util/Map;

    iput-boolean p2, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;->f$0:Ljava/util/Map;

    iget-boolean v1, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/apache/sshd/common/util/GenericUtils;->lambda$flipMap$5(Ljava/util/Map;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
