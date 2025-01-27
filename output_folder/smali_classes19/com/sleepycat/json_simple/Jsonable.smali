.class public interface abstract Lcom/sleepycat/json_simple/Jsonable;
.super Ljava/lang/Object;
.source "Jsonable.java"


# virtual methods
.method public abstract toJson()Ljava/lang/String;
.end method

.method public abstract toJson(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
