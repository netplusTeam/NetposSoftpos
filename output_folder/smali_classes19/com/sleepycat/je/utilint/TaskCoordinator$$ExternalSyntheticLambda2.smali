.class public final synthetic Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
