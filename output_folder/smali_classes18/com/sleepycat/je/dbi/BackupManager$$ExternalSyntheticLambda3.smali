.class public final synthetic Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/dbi/BackupManager;

.field public final synthetic f$1:Ljava/util/SortedMap;

.field public final synthetic f$2:Ljava/nio/file/Path;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/dbi/BackupManager;Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$0:Lcom/sleepycat/je/dbi/BackupManager;

    iput-object p2, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/SortedMap;

    iput-object p3, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$2:Ljava/nio/file/Path;

    iput-object p4, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$4:Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$0:Lcom/sleepycat/je/dbi/BackupManager;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/SortedMap;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$2:Ljava/nio/file/Path;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;->f$4:Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;

    move-object v5, p1

    check-cast v5, Ljava/nio/file/Path;

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/dbi/BackupManager;->lambda$null$2$com-sleepycat-je-dbi-BackupManager(Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;Ljava/nio/file/Path;)V

    return-void
.end method
