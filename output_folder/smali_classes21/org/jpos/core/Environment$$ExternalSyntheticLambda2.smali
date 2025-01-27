.class public final synthetic Lorg/jpos/core/Environment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda2;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jpos/core/Environment$$ExternalSyntheticLambda2;->f$0:Ljava/util/Properties;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jpos/core/Environment;->lambda$extractSystemProperties$1(Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method
