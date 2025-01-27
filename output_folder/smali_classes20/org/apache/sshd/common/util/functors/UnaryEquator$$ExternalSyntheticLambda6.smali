.class public final synthetic Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/functors/UnaryEquator;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/functors/UnaryEquator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;->f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    iput-object p2, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;->f$1:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;->f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    iget-object v1, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda6;->f$1:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->lambda$or$1(Lorg/apache/sshd/common/util/functors/UnaryEquator;Lorg/apache/sshd/common/util/functors/UnaryEquator;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
