.class public interface abstract Lorg/jline/console/SystemRegistry;
.super Ljava/lang/Object;
.source "SystemRegistry.java"

# interfaces
.implements Lorg/jline/console/CommandRegistry;
.implements Lorg/jline/builtins/ConsoleOptionGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/SystemRegistry$Registeries;
    }
.end annotation


# direct methods
.method public static add(Lorg/jline/console/SystemRegistry;)V
    .locals 1
    .param p0, "systemRegistry"    # Lorg/jline/console/SystemRegistry;

    .line 151
    invoke-static {}, Lorg/jline/console/SystemRegistry$Registeries;->getInstance()Lorg/jline/console/SystemRegistry$Registeries;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jline/console/SystemRegistry$Registeries;->addRegistry(Lorg/jline/console/SystemRegistry;)V

    .line 152
    return-void
.end method

.method public static get()Lorg/jline/console/SystemRegistry;
    .locals 1

    .line 143
    invoke-static {}, Lorg/jline/console/SystemRegistry$Registeries;->getInstance()Lorg/jline/console/SystemRegistry$Registeries;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/SystemRegistry$Registeries;->getSystemRegistry()Lorg/jline/console/SystemRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static remove()V
    .locals 1

    .line 158
    invoke-static {}, Lorg/jline/console/SystemRegistry$Registeries;->getInstance()Lorg/jline/console/SystemRegistry$Registeries;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/console/SystemRegistry$Registeries;->removeRegistry()V

    .line 159
    return-void
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract close()V
.end method

.method public abstract commandDescription(Lorg/jline/console/CmdLine;)Lorg/jline/console/CmdDesc;
.end method

.method public abstract completer()Lorg/jline/reader/Completer;
.end method

.method public abstract consoleOption(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract execute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPipeNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize(Ljava/io/File;)V
.end method

.method public varargs abstract invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isCommandAlias(Ljava/lang/String;)Z
.end method

.method public abstract isCommandOrScript(Ljava/lang/String;)Z
.end method

.method public abstract isCommandOrScript(Lorg/jline/reader/ParsedLine;)Z
.end method

.method public abstract register(Ljava/lang/String;Lorg/jline/console/CommandRegistry;)V
.end method

.method public varargs abstract setCommandRegistries([Lorg/jline/console/CommandRegistry;)V
.end method

.method public abstract terminal()Lorg/jline/terminal/Terminal;
.end method

.method public abstract trace(Ljava/lang/Exception;)V
.end method

.method public abstract trace(ZLjava/lang/Exception;)V
.end method
