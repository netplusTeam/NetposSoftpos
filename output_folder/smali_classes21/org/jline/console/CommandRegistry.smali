.class public interface abstract Lorg/jline/console/CommandRegistry;
.super Ljava/lang/Object;
.source "CommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/CommandRegistry$CommandSession;
    }
.end annotation


# direct methods
.method public static varargs aggregateCompleters([Lorg/jline/console/CommandRegistry;)Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 5
    .param p0, "commandRegistries"    # [Lorg/jline/console/CommandRegistry;

    .line 31
    new-instance v0, Lorg/jline/reader/impl/completer/SystemCompleter;

    invoke-direct {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;-><init>()V

    .line 32
    .local v0, "out":Lorg/jline/reader/impl/completer/SystemCompleter;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 33
    .local v3, "r":Lorg/jline/console/CommandRegistry;
    invoke-interface {v3}, Lorg/jline/console/CommandRegistry;->compileCompleters()Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/completer/SystemCompleter;->add(Lorg/jline/reader/impl/completer/SystemCompleter;)V

    .line 32
    .end local v3    # "r":Lorg/jline/console/CommandRegistry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public static varargs compileCompleters([Lorg/jline/console/CommandRegistry;)Lorg/jline/reader/impl/completer/SystemCompleter;
    .locals 1
    .param p0, "commandRegistries"    # [Lorg/jline/console/CommandRegistry;

    .line 44
    invoke-static {p0}, Lorg/jline/console/CommandRegistry;->aggregateCompleters([Lorg/jline/console/CommandRegistry;)Lorg/jline/reader/impl/completer/SystemCompleter;

    move-result-object v0

    .line 45
    .local v0, "out":Lorg/jline/reader/impl/completer/SystemCompleter;
    invoke-virtual {v0}, Lorg/jline/reader/impl/completer/SystemCompleter;->compile()V

    .line 46
    return-object v0
.end method


# virtual methods
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

.method public abstract commandDescription(Ljava/util/List;)Lorg/jline/console/CmdDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/console/CmdDesc;"
        }
    .end annotation
.end method

.method public abstract commandInfo(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

.method public abstract hasCommand(Ljava/lang/String;)Z
.end method

.method public varargs invoke(Lorg/jline/console/CommandRegistry$CommandSession;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "session"    # Lorg/jline/console/CommandRegistry$CommandSession;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CommandRegistry method invoke(session, command, ... args) is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
