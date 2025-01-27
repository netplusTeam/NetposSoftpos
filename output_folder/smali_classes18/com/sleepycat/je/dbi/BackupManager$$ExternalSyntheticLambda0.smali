.class public final synthetic Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/dbi/BackupManager;

.field public final synthetic f$1:Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/dbi/BackupManager;

    iput-object p2, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/dbi/BackupManager;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;->f$1:Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;

    check-cast p1, Ljava/util/stream/Stream;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/dbi/BackupManager;->lambda$getLatestSnapshotInfo$1$com-sleepycat-je-dbi-BackupManager(Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;Ljava/util/stream/Stream;)V

    return-void
.end method
