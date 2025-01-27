.class public final synthetic Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jpos/iso/IncomingListener;

.field public final synthetic f$1:Lorg/jpos/transaction/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/iso/IncomingListener;Lorg/jpos/transaction/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/iso/IncomingListener;

    iput-object p2, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;->f$1:Lorg/jpos/transaction/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/iso/IncomingListener;

    iget-object v1, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda0;->f$1:Lorg/jpos/transaction/Context;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p1}, Lorg/jpos/iso/IncomingListener;->lambda$process$2$org-jpos-iso-IncomingListener(Lorg/jpos/transaction/Context;Ljava/util/Map$Entry;)V

    return-void
.end method
