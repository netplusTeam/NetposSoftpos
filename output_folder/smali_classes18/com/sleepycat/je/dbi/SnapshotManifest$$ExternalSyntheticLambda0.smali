.class public final synthetic Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/dbi/SnapshotManifest;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/dbi/SnapshotManifest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda0;->f$0:Lcom/sleepycat/je/dbi/SnapshotManifest;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->lambda$validate$0$com-sleepycat-je-dbi-SnapshotManifest(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V

    return-void
.end method
