.class public final synthetic Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/ConsoleEngineImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/ConsoleEngineImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda16;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda16;->f$0:Lorg/jline/console/impl/ConsoleEngineImpl;

    invoke-static {v0}, Lorg/jline/console/impl/ConsoleEngineImpl;->$r8$lambda$neC2u-XxbyX43wX5nhAUGYv6R5o(Lorg/jline/console/impl/ConsoleEngineImpl;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
