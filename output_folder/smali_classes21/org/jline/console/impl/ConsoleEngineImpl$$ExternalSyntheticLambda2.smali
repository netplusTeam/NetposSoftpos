.class public final synthetic Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/ConsoleEngineImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda2;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda2;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    check-cast p1, Lorg/jline/console/CommandInput;

    invoke-static {v0, p1}, Lorg/jline/console/impl/ConsoleEngineImpl;->$r8$lambda$2Y_3ri8Vqn83E4FxRLHtiOraqLE(Lorg/jline/console/impl/ConsoleEngineImpl;Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
