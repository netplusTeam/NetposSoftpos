.class public final synthetic Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

.field public final synthetic f$1:Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iput-object p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->lambda$replay$0$com-sleepycat-je-cleaner-ExtinctionScanner(Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;)V

    return-void
.end method
