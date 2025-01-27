.class public interface abstract Lorg/jline/console/ConsoleEngine;
.super Ljava/lang/Object;
.source "ConsoleEngine.java"

# interfaces
.implements Lorg/jline/console/CommandRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/ConsoleEngine$WidgetCreator;,
        Lorg/jline/console/ConsoleEngine$ExecutionResult;
    }
.end annotation


# direct methods
.method public static plainCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 34
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract consoleOption(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public execute(Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .param p1, "script"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p0, p1, v1, v0}, Lorg/jline/console/ConsoleEngine;->execute(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract execute(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract executeWidget(Ljava/lang/Object;)Z
.end method

.method public abstract expandCommandLine(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract expandParameters([Ljava/lang/String;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract expandToList(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamedPipes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPipes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getVariable(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasAlias(Ljava/lang/String;)Z
.end method

.method public abstract hasVariable(Ljava/lang/String;)Z
.end method

.method public abstract isExecuting()Z
.end method

.method public abstract persist(Ljava/nio/file/Path;Ljava/lang/Object;)V
.end method

.method public abstract postProcess(Ljava/lang/Object;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
.end method

.method public abstract postProcess(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/jline/console/ConsoleEngine$ExecutionResult;
.end method

.method public abstract println(Ljava/lang/Object;)V
.end method

.method public abstract purge()V
.end method

.method public abstract putVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract scriptCompleters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scripts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setLineReader(Lorg/jline/reader/LineReader;)V
.end method

.method public abstract setScriptExtension(Ljava/lang/String;)V
.end method

.method public abstract setSystemRegistry(Lorg/jline/console/SystemRegistry;)V
.end method

.method public abstract slurp(Ljava/nio/file/Path;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trace(Ljava/lang/Object;)V
.end method
