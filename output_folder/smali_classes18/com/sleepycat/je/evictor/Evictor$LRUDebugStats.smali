.class Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUDebugStats"
.end annotation


# instance fields
.field dirtySize:I

.field numBINs:I

.field numDirtyBINs:I

.field numDirtyStrippedBINs:I

.field numStrippedBINs:I

.field size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->size:I

    .line 839
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->dirtySize:I

    .line 840
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numBINs:I

    .line 841
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyBINs:I

    .line 842
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numStrippedBINs:I

    .line 843
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyStrippedBINs:I

    .line 844
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Clean/Dirty INs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->size:I

    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->dirtySize:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 851
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->dirtySize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 854
    const-string v2, " BINs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numBINs:I

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyBINs:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyBINs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    const-string v2, " Stripped BINs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numStrippedBINs:I

    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyStrippedBINs:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyStrippedBINs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
