.class public final synthetic Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/functors/UnaryEquator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda4;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/functors/UnaryEquator$$ExternalSyntheticLambda4;->f$0:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->lambda$comparing$3(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
