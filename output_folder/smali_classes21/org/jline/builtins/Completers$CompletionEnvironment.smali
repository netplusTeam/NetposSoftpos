.class public interface abstract Lorg/jline/builtins/Completers$CompletionEnvironment;
.super Ljava/lang/Object;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionEnvironment"
.end annotation


# virtual methods
.method public abstract commandName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract evaluate(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCommands()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompletions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$CompletionData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resolveCommand(Ljava/lang/String;)Ljava/lang/String;
.end method
