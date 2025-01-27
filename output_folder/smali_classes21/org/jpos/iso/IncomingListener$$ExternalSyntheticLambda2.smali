.class public final synthetic Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lorg/jpos/core/Configuration;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lorg/jpos/core/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;->f$1:Lorg/jpos/core/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lorg/jpos/iso/IncomingListener$$ExternalSyntheticLambda2;->f$1:Lorg/jpos/core/Configuration;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jpos/iso/IncomingListener;->lambda$setConfiguration$1(Ljava/util/Map;Lorg/jpos/core/Configuration;Ljava/lang/String;)V

    return-void
.end method
