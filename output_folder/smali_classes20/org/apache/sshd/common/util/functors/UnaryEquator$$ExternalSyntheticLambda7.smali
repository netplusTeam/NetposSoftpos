.class public final synthetic Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/functors/UnaryEquator;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/functors/UnaryEquator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda7;->f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda7;->f$0:Lorg/apache/sshd/common/util/functors/UnaryEquator;

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->lambda$negate$2(Lorg/apache/sshd/common/util/functors/UnaryEquator;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
