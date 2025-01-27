.class interface abstract Lcom/sleepycat/persist/impl/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"


# static fields
.field public static final BETA_VERSION:I = -0x1

.field public static final CURRENT_VERSION:I = 0x1


# virtual methods
.method public abstract convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation
.end method

.method public abstract createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation
.end method

.method public abstract getFormat(IZ)Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
.end method

.method public abstract getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I
.end method

.method public abstract isRawAccess()Z
.end method

.method public abstract resolveClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;
.end method
