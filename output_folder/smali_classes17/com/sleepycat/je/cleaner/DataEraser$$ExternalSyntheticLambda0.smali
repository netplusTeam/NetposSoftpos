.class public final synthetic Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/cleaner/DataEraser;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/cleaner/DataEraser;->lambda$startCycle$0$com-sleepycat-je-cleaner-DataEraser(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
