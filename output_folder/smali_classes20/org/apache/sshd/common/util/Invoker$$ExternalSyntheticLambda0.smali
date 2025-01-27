.class public final synthetic Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collection;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/Invoker;->lambda$wrapFirst$1(Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
