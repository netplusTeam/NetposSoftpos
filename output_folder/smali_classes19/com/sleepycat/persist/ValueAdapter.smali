.class interface abstract Lcom/sleepycat/persist/ValueAdapter;
.super Ljava/lang/Object;
.source "ValueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
.end method

.method public abstract entryToValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract initData()Lcom/sleepycat/je/DatabaseEntry;
.end method

.method public abstract initKey()Lcom/sleepycat/je/DatabaseEntry;
.end method

.method public abstract initPKey()Lcom/sleepycat/je/DatabaseEntry;
.end method

.method public abstract valueToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation
.end method
