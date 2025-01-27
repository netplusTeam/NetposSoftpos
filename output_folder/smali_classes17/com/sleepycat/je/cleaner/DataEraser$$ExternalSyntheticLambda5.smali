.class public final synthetic Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/cleaner/DataEraser;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda5;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda5;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/DataEraser;->lambda$waitForCycleEnd$3$com-sleepycat-je-cleaner-DataEraser()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
