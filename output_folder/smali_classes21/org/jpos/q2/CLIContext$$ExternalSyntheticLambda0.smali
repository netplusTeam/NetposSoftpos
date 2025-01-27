.class public final synthetic Lorg/jpos/q2/CLIContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/jpos/q2/CLIContext;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/q2/CLIContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/q2/CLIContext$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/q2/CLIContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jpos/q2/CLIContext$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/q2/CLIContext;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/q2/CLIContext;->lambda$printUserData$0$org-jpos-q2-CLIContext(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
