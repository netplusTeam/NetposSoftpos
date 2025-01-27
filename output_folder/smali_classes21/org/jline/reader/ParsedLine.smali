.class public interface abstract Lorg/jline/reader/ParsedLine;
.super Ljava/lang/Object;
.source "ParsedLine.java"


# virtual methods
.method public abstract cursor()I
.end method

.method public abstract line()Ljava/lang/String;
.end method

.method public abstract word()Ljava/lang/String;
.end method

.method public abstract wordCursor()I
.end method

.method public abstract wordIndex()I
.end method

.method public abstract words()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
