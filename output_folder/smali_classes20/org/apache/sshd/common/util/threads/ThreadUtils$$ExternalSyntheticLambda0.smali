.class public final synthetic Lorg/apache/sshd/common/util/threads/ThreadUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->lambda$resolveDefaultClassLoaders$0(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
