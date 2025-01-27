.class public interface abstract Lorg/jline/reader/CompletionMatcher;
.super Ljava/lang/Object;
.source "CompletionMatcher.java"


# virtual methods
.method public abstract compile(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lorg/jline/reader/CompletingParsedLine;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract exactMatch()Lorg/jline/reader/Candidate;
.end method

.method public abstract getCommonPrefix()Ljava/lang/String;
.end method

.method public abstract matches(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;"
        }
    .end annotation
.end method
