.class public final synthetic Lorg/jpos/q2/SimpleConfigurationFactory$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lorg/jpos/q2/SimpleConfigurationFactory$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jpos/q2/SimpleConfigurationFactory$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    invoke-static {v0, p1}, Lorg/jpos/q2/SimpleConfigurationFactory;->lambda$readYAML$0(Ljava/util/Properties;Ljava/lang/Object;)V

    return-void
.end method
