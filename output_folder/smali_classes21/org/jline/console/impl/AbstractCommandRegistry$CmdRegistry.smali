.class interface abstract Lorg/jline/console/impl/AbstractCommandRegistry$CmdRegistry;
.super Ljava/lang/Object;
.source "AbstractCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/AbstractCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CmdRegistry"
.end annotation


# virtual methods
.method public abstract alias(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract command(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract commandAliases()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract commandNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;
.end method

.method public abstract getCommandMethods(Ljava/lang/String;)Lorg/jline/console/CommandMethods;
.end method

.method public abstract hasCommand(Ljava/lang/String;)Z
.end method

.method public abstract rename(Ljava/lang/Enum;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
