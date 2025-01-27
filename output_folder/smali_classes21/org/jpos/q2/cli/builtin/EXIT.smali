.class public Lorg/jpos/q2/cli/builtin/EXIT;
.super Ljava/lang/Object;
.source "EXIT.java"

# interfaces
.implements Lorg/jpos/q2/CLISubSystem;
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->setActiveSubSystem(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public getCompletionPrefixes(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
