.class final Lcom/sleepycat/je/dbi/TriggerManager$12;
.super Lcom/sleepycat/je/dbi/TriggerManager$MapOver;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/TriggerManager;->invokeAddRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/dbi/TriggerManager$MapOver<",
        "Ljava/lang/String;",
        "Lcom/sleepycat/je/trigger/Trigger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 407
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/trigger/Trigger;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$MapOver;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fun(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 407
    check-cast p1, Lcom/sleepycat/je/trigger/Trigger;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$12;->fun(Lcom/sleepycat/je/trigger/Trigger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected fun(Lcom/sleepycat/je/trigger/Trigger;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Lcom/sleepycat/je/trigger/Trigger;

    .line 410
    invoke-interface {p1}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
