.class public final synthetic Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/cleaner/DataEraser;

.field public final synthetic f$1:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    iput-object p2, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;->f$0:Lcom/sleepycat/je/cleaner/DataEraser;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/DataEraser;->lambda$abortErase$1$com-sleepycat-je-cleaner-DataEraser(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
