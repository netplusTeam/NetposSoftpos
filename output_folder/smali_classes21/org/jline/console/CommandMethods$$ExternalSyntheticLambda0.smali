.class public final synthetic Lorg/jline/console/CommandMethods$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/CommandMethods$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/CommandMethods$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Lorg/jline/console/CommandInput;

    invoke-static {v0, p1}, Lorg/jline/console/CommandMethods;->lambda$new$0(Ljava/util/function/Consumer;Lorg/jline/console/CommandInput;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
