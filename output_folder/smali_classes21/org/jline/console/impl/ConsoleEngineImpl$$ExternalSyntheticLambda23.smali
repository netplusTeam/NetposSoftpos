.class public final synthetic Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;
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

    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda23;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jline/console/impl/JlineCommandRegistry;->commandOptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
