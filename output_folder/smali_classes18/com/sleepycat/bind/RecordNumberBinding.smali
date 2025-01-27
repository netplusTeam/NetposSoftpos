.class public Lcom/sleepycat/bind/RecordNumberBinding;
.super Ljava/lang/Object;
.source "RecordNumberBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static entryToRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)J
    .locals 4
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 61
    invoke-static {p0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static recordNumberToEntry(JLcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p0, "recordNumber"    # J
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 74
    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 75
    long-to-int v0, p0

    invoke-static {p2, v0}, Lcom/sleepycat/compat/DbCompat;->setRecordNumber(Lcom/sleepycat/je/DatabaseEntry;I)V

    .line 76
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;
    .locals 2
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 42
    invoke-static {p1}, Lcom/sleepycat/bind/RecordNumberBinding;->entryToRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/RecordNumberBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/sleepycat/bind/RecordNumberBinding;->recordNumberToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 49
    return-void
.end method
