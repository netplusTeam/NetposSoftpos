.class public final synthetic Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getPermits()I

    move-result p1

    return p1
.end method
