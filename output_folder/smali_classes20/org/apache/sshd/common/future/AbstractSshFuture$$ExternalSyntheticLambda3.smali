.class public final synthetic Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/io/InterruptedIOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InterruptedIOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda3;->f$0:Ljava/io/InterruptedIOException;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda3;->f$0:Ljava/io/InterruptedIOException;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/future/AbstractSshFuture;->lambda$awaitUninterruptibly$0(Ljava/io/InterruptedIOException;Ljava/lang/String;)Ljava/lang/InternalError;

    move-result-object p1

    return-object p1
.end method
