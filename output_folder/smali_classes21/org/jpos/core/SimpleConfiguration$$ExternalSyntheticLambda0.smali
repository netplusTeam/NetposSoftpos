.class public final synthetic Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Lorg/jpos/core/Environment;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lorg/jpos/core/Environment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;->f$1:Lorg/jpos/core/Environment;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;->f$1:Lorg/jpos/core/Environment;

    invoke-static {v0, v1, p1}, Lorg/jpos/core/SimpleConfiguration;->lambda$getAll$0([Ljava/lang/String;Lorg/jpos/core/Environment;I)V

    return-void
.end method
