.class public final synthetic Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda1;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda1;->f$0:Ljava/util/Comparator;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->lambda$toSortedSet$4(Ljava/util/Comparator;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
