.class Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestSnapshotInfo"
.end annotation


# instance fields
.field parent:Lcom/sleepycat/je/dbi/SnapshotManifest;

.field parentSnapshotDir:Ljava/nio/file/Path;

.field snapshotDir:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/BackupManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/BackupManager$1;

    .line 1156
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;-><init>()V

    return-void
.end method
