.class public final synthetic Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Properties;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    iput-object p2, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    iget-object v1, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jpos/core/Environment;->lambda$toString$4(Ljava/util/Properties;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
