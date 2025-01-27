.class public final synthetic Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;->lambda$completed$0$org-apache-sshd-common-io-nio2-Nio2CompletionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
