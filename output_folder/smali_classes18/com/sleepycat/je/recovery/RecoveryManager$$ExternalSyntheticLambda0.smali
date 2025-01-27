.class public final synthetic Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/recovery/RecoveryManager;

.field public final synthetic f$1:Lcom/sleepycat/je/dbi/DbTree;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/recovery/RecoveryManager;Lcom/sleepycat/je/dbi/DbTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    iput-object p2, p0, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/dbi/DbTree;

    return-void
.end method


# virtual methods
.method public final withCursor(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/recovery/RecoveryManager;

    iget-object v1, p0, Lcom/sleepycat/je/recovery/RecoveryManager$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sleepycat/je/recovery/RecoveryManager;->lambda$convertOldMapLNs$0$com-sleepycat-je-recovery-RecoveryManager(Lcom/sleepycat/je/dbi/DbTree;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result p1

    return p1
.end method
