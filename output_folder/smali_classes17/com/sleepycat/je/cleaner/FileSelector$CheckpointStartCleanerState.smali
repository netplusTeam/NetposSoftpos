.class public Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;
.super Ljava/lang/Object;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckpointStartCleanerState"
.end annotation


# instance fields
.field private cleanedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 729
    .local p1, "cleanedFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->cleanedFiles:Ljava/util/Set;

    .line 731
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/sleepycat/je/cleaner/FileSelector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lcom/sleepycat/je/cleaner/FileSelector$1;

    .line 724
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method getCleanedFiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->cleanedFiles:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$CheckpointStartCleanerState;->cleanedFiles:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
