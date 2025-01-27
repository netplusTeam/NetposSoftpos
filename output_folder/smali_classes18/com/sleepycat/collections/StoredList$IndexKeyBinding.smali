.class Lcom/sleepycat/collections/StoredList$IndexKeyBinding;
.super Lcom/sleepycat/bind/RecordNumberBinding;
.source "StoredList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/collections/StoredList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexKeyBinding"
.end annotation


# instance fields
.field private baseIndex:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "baseIndex"    # I

    .line 728
    invoke-direct {p0}, Lcom/sleepycat/bind/RecordNumberBinding;-><init>()V

    .line 730
    iput p1, p0, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->baseIndex:I

    .line 731
    return-void
.end method

.method synthetic constructor <init>(ILcom/sleepycat/collections/StoredList$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/sleepycat/collections/StoredList$1;

    .line 724
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;
    .locals 4
    .param p1, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 736
    invoke-static {p1}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->entryToRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->baseIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 0

    .line 724
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 742
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->baseIndex:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;->recordNumberToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 744
    return-void
.end method
