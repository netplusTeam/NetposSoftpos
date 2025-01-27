.class public final synthetic Lorg/apache/sshd/common/BuiltinFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/sshd/common/BuiltinFactory$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/sshd/common/BuiltinFactory$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lorg/apache/sshd/common/BuiltinFactory;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/BuiltinFactory;->lambda$setUpFactories$0(ZLorg/apache/sshd/common/BuiltinFactory;)Z

    move-result p1

    return p1
.end method
