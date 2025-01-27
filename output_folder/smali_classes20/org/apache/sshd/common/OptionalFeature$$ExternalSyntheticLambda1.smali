.class public final synthetic Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/OptionalFeature;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final isSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/sshd/common/OptionalFeature;->lambda$any$1(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
