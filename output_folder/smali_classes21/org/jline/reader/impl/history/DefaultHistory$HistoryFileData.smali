.class Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;
.super Ljava/lang/Object;
.source "DefaultHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/history/DefaultHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryFileData"
.end annotation


# instance fields
.field private entriesInFile:I

.field private lastLoaded:I

.field final synthetic this$0:Lorg/jline/reader/impl/history/DefaultHistory;


# direct methods
.method public constructor <init>(Lorg/jline/reader/impl/history/DefaultHistory;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->this$0:Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const/4 p1, 0x0

    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 632
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    .line 635
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/impl/history/DefaultHistory;II)V
    .locals 0
    .param p2, "lastLoaded"    # I
    .param p3, "entriesInFile"    # I

    .line 637
    iput-object p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->this$0:Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const/4 p1, 0x0

    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 632
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    .line 638
    iput p2, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 639
    iput p3, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    .line 640
    return-void
.end method


# virtual methods
.method public decLastLoaded()V
    .locals 1

    .line 651
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 652
    if-gez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 655
    :cond_0
    return-void
.end method

.method public getEntriesInFile()I
    .locals 1

    .line 658
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    return v0
.end method

.method public getLastLoaded()I
    .locals 1

    .line 643
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    return v0
.end method

.method public incEntriesInFile(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 666
    iget v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    .line 667
    return-void
.end method

.method public setEntriesInFile(I)V
    .locals 0
    .param p1, "entriesInFile"    # I

    .line 662
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->entriesInFile:I

    .line 663
    return-void
.end method

.method public setLastLoaded(I)V
    .locals 0
    .param p1, "lastLoaded"    # I

    .line 647
    iput p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$HistoryFileData;->lastLoaded:I

    .line 648
    return-void
.end method
