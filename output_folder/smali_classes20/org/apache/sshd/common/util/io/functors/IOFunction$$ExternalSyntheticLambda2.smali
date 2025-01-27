.class public final synthetic Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/io/functors/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/io/functors/IOFunction;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/io/functors/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/util/io/functors/IOFunction;

    iput-object p2, p0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/io/functors/IOFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/util/io/functors/IOFunction;

    iget-object v1, p0, Lorg/apache/sshd/common/util/io/functors/IOFunction$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/io/functors/IOFunction;

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/io/functors/IOFunction;->lambda$compose$0(Lorg/apache/sshd/common/util/io/functors/IOFunction;Lorg/apache/sshd/common/util/io/functors/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
