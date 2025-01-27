.class public Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;
.super Lcom/sleepycat/je/log/entry/SingleItemEntry;
.source "OldBINDeltaLogEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/INContainingEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/SingleItemEntry<",
        "Lcom/sleepycat/je/tree/OldBINDelta;",
        ">;",
        "Lcom/sleepycat/je/log/entry/INContainingEntry;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/sleepycat/je/tree/OldBINDelta;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sleepycat/je/tree/OldBINDelta;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Ljava/lang/Class;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 60
    .local v0, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    return-object v1
.end method

.method public getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 53
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 54
    .local v0, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/OldBINDelta;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v1

    return-object v1
.end method

.method public getPrevDeltaLsn()J
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 72
    .local v0, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getPrevDeltaLsn()J

    move-result-wide v1

    return-wide v1
.end method

.method public getPrevFullLsn()J
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/OldBINDelta;

    .line 66
    .local v0, "delta":Lcom/sleepycat/je/tree/OldBINDelta;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/OldBINDelta;->getLastFullLsn()J

    move-result-wide v1

    return-wide v1
.end method

.method public getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 48
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public isBINDelta()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method
