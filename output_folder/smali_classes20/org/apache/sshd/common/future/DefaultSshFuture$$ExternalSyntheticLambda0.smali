.class public final synthetic Lorg/apache/sshd/common/future/DefaultSshFuture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/InterruptedException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/InterruptedException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/future/DefaultSshFuture$$ExternalSyntheticLambda0;->f$0:Ljava/lang/InterruptedException;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/future/DefaultSshFuture$$ExternalSyntheticLambda0;->f$0:Ljava/lang/InterruptedException;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/future/DefaultSshFuture;->lambda$await0$0(Ljava/lang/InterruptedException;Ljava/lang/String;)Ljava/io/InterruptedIOException;

    move-result-object p1

    return-object p1
.end method
