.class public interface abstract Lcom/sleepycat/bind/serial/ClassCatalog;
.super Ljava/lang/Object;
.source "ClassCatalog.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract getClassFormat([B)Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getClassID(Ljava/io/ObjectStreamClass;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method
