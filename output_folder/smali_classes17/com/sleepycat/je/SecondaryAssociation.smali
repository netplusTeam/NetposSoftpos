.class public interface abstract Lcom/sleepycat/je/SecondaryAssociation;
.super Ljava/lang/Object;
.source "SecondaryAssociation.java"


# virtual methods
.method public abstract getPrimary(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/Database;
.end method

.method public abstract getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
